param(
  [Parameter(Mandatory=$true)]
  [string]$PaperDir,

  [Parameter(Mandatory=$false)]
  [string]$FilePath = "",  # Optional: specific file to hash (pdf, tex, or md)

  [string]$Note = "",

  [switch]$PublishGist
)

function Assert-Tool($name) {
  $cmd = Get-Command $name -ErrorAction SilentlyContinue
  if (-not $cmd) { throw "Missing required tool: $name" }
}

# ---- Preconditions ----
Assert-Tool git
if ($PublishGist) { Assert-Tool gh }

if (-not (Test-Path $PaperDir)) { throw "PaperDir not found: $PaperDir" }

$gitTop = git rev-parse --show-toplevel 2>$null
if ($LASTEXITCODE -ne 0) { throw "Not inside a git repo." }
Set-Location $gitTop

$paperDirFull = (Resolve-Path $PaperDir).Path

# ---- Find primary file (explicit or auto-detect) ----
$primaryFile = $null
$primaryPath = $null
$primaryHash = $null
$primaryType = $null

if ($FilePath -ne "" -and (Test-Path $FilePath)) {
  $primaryPath = $FilePath
  $ext = [System.IO.Path]::GetExtension($FilePath).ToLower()
  switch ($ext) {
    ".pdf" { $primaryType = "PDF" }
    ".tex" { $primaryType = "TEX" }
    ".md"  { $primaryType = "MD" }
    default { $primaryType = "FILE" }
  }
  $primaryHash = (Get-FileHash -Algorithm SHA256 -Path $FilePath).Hash
} else {
  # Auto-detect: prefer PDF > TEX > MD
  $pdf = Get-ChildItem -Path $paperDirFull -Filter "*.pdf" -ErrorAction SilentlyContinue | Select-Object -First 1
  $tex = Get-ChildItem -Path $paperDirFull -Filter "*.tex" -ErrorAction SilentlyContinue | Select-Object -First 1
  $md = Get-ChildItem -Path $paperDirFull -Filter "*.md" -ErrorAction SilentlyContinue | Select-Object -First 1

  if ($pdf) {
    $primaryFile = $pdf
    $primaryType = "PDF"
  } elseif ($tex) {
    $primaryFile = $tex
    $primaryType = "TEX"
  } elseif ($md) {
    $primaryFile = $md
    $primaryType = "MD"
  }

  if ($primaryFile) {
    $primaryPath = $primaryFile.FullName
    $primaryHash = (Get-FileHash -Algorithm SHA256 -Path $primaryPath).Hash
    # Convert to relative path for display
    $primaryPath = $primaryPath.Substring($gitTop.Length).TrimStart('\', '/')
  }
}

if (-not $primaryHash) {
  throw "No anchorable file found (.pdf, .tex, .md) in $PaperDir"
}

New-Item -ItemType Directory -Force -Path "anchors" | Out-Null

# ---- Timestamps ----
$now = Get-Date
$utc = [DateTime]::UtcNow
$stamp = $now.ToString("yyyy-MM-dd_HHmmss")
$localStr = $now.ToString("yyyy-MM-dd HH:mm:ss zzz")
$utcStr = $utc.ToString("yyyy-MM-ddTHH:mm:ssZ")

# ---- Git info ----
$commit = (git rev-parse HEAD).Trim()
$branch = (git rev-parse --abbrev-ref HEAD).Trim()

# ---- Folder hash (deterministic, relative paths) ----
$files = Get-ChildItem -Recurse -File $PaperDir | Sort-Object FullName
$folderDigestInput = New-Object System.Text.StringBuilder
foreach ($f in $files) {
  $h = (Get-FileHash -Algorithm SHA256 -Path $f.FullName).Hash
  $rel = $f.FullName.Substring($paperDirFull.Length).TrimStart('\', '/')
  [void]$folderDigestInput.AppendLine("$h  $rel")
}
$folderDigestBytes = [System.Text.Encoding]::UTF8.GetBytes($folderDigestInput.ToString())
$sha = [System.Security.Cryptography.SHA256]::Create()
$folderHash = ($sha.ComputeHash($folderDigestBytes) | ForEach-Object { $_.ToString("x2") }) -join ""

# ---- Count files by type ----
$pdfCount = ($files | Where-Object { $_.Extension -eq ".pdf" }).Count
$texCount = ($files | Where-Object { $_.Extension -eq ".tex" }).Count
$mdCount = ($files | Where-Object { $_.Extension -eq ".md" }).Count

# ---- Write anchor file ----
$anchorPath = "anchors\ANCHOR-$stamp.txt"

$body = @()
$body += "═══════════════════════════════════════════════════════════"
$body += "  CRYPTOGRAPHIC TIMESTAMP ANCHOR"
$body += "═══════════════════════════════════════════════════════════"
$body += ""
$body += "Timestamp_Local: $localStr"
$body += "Timestamp_UTC:   $utcStr"
$body += ""
$body += "Git_Commit:      $commit"
$body += "Git_Branch:      $branch"
$body += "Repo_Root:       $gitTop"
$body += ""
$body += "Paper_Dir:       $PaperDir"
$body += "Primary_File:    $primaryPath"
$body += ""
$body += "Primary_SHA256:  $primaryHash  ($primaryType)"
$body += "Dir_SHA256:      $folderHash"
$body += ""
$body += "Files_Count:     $($files.Count) total ($pdfCount pdf, $texCount tex, $mdCount md)"
if ($Note -ne "") {
  $body += ""
  $body += "Note:            $Note"
}
$body += ""
$body += "═══════════════════════════════════════════════════════════"

$bodyText = ($body -join "`r`n") + "`r`n"
Set-Content -Path $anchorPath -Value $bodyText -Encoding UTF8

Write-Host ""
Write-Host "✓ Anchor written: $anchorPath" -ForegroundColor Green
Write-Host "  Commit:       $commit"
Write-Host "  $primaryType hash:   $primaryHash"
Write-Host "  Dir hash:     $folderHash"
Write-Host "  Files:        $($files.Count) ($pdfCount pdf, $texCount tex, $mdCount md)"

# ---- Git commit ----
git add $anchorPath | Out-Null
git commit -m "anchor: $stamp" | Out-Null

# ---- Publish Gist (hash-only) ----
$gistUrl = $null
if ($PublishGist) {
  $gistLines = @()
  $gistLines += "TIMESTAMP ANCHOR - $utcStr"
  $gistLines += ""
  $gistLines += "UTC:            $utcStr"
  $gistLines += "Commit:         $commit"
  $gistLines += "Primary_SHA256: $primaryHash  ($primaryType)"
  $gistLines += "Dir_SHA256:     $folderHash"
  if ($Note -ne "") { $gistLines += "Note:           $Note" }
  $gistContent = ($gistLines -join "`n") + "`n"

  $tmp = Join-Path $env:TEMP "anchor-$stamp.txt"
  Set-Content -Path $tmp -Value $gistContent -Encoding UTF8

  $gistUrl = (gh gist create $tmp --public --desc "Anchor $stamp" 2>&1 | Out-String).Trim()
  Remove-Item $tmp -ErrorAction SilentlyContinue

  # Append gist URL to anchor file
  Add-Content -Path $anchorPath -Value "Gist_URL:        $gistUrl"
  Add-Content -Path $anchorPath -Value ""

  # Amend commit to include gist URL
  git add $anchorPath | Out-Null
  git commit --amend --no-edit | Out-Null

  Write-Host "✓ Gist published: $gistUrl" -ForegroundColor Cyan
}

# ---- Push ----
git push --force-with-lease | Out-Null
Write-Host "✓ Pushed to origin" -ForegroundColor Green
Write-Host ""
