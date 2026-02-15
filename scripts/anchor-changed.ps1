# Anchor any paper folders that have staged changes
# Called by pre-commit hook
# Works with: .pdf, .tex, .md files (no PDF required)

$gitTop = git rev-parse --show-toplevel
Set-Location $gitTop

# Get list of staged files in papers/ directory
$stagedFiles = git diff --cached --name-only | Where-Object { $_ -match "^papers/" }

if (-not $stagedFiles) {
    Write-Host "No paper changes staged, skipping anchor." -ForegroundColor DarkGray
    exit 0
}

# Extract unique paper folder names from staged files
$paperFolders = $stagedFiles | ForEach-Object {
    $parts = $_ -split "/"
    if ($parts.Length -ge 2) { $parts[1] }
} | Select-Object -Unique

foreach ($folder in $paperFolders) {
    $paperDir = "papers\$folder"
    $paperPath = Join-Path $gitTop $paperDir

    if (-not (Test-Path $paperPath)) {
        Write-Host "Skipping deleted folder: $folder" -ForegroundColor Yellow
        continue
    }

    # Check for any anchorable files (.pdf, .tex, .md)
    $anchorableFiles = Get-ChildItem -Path $paperPath -Recurse -File -ErrorAction SilentlyContinue |
        Where-Object { $_.Extension -match "\.(pdf|tex|md)$" }

    if (-not $anchorableFiles) {
        Write-Host "No .pdf/.tex/.md files in $folder, skipping anchor." -ForegroundColor Yellow
        continue
    }

    Write-Host ""
    Write-Host "Auto-anchoring: $folder" -ForegroundColor Cyan

    $now = Get-Date
    $utc = [DateTime]::UtcNow
    $stamp = $now.ToString("yyyy-MM-dd_HHmmss")
    $localStr = $now.ToString("yyyy-MM-dd HH:mm:ss zzz")
    $utcStr = $utc.ToString("yyyy-MM-ddTHH:mm:ssZ")

    $branch = (git rev-parse --abbrev-ref HEAD).Trim()

    # Find primary file (prefer PDF > TEX > MD)
    $pdf = Get-ChildItem -Path $paperPath -Filter "*.pdf" -ErrorAction SilentlyContinue | Select-Object -First 1
    $tex = Get-ChildItem -Path $paperPath -Filter "*.tex" -ErrorAction SilentlyContinue | Select-Object -First 1
    $md = Get-ChildItem -Path $paperPath -Filter "*.md" -ErrorAction SilentlyContinue | Select-Object -First 1

    $primaryFile = $null
    $primaryPath = $null
    $primaryHash = $null
    $primaryType = $null

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
        $primaryPath = "papers\$folder\$($primaryFile.Name)"
        $fullPrimaryPath = Join-Path $gitTop $primaryPath
        $primaryHash = (Get-FileHash -Algorithm SHA256 -Path $fullPrimaryPath).Hash
    }

    # Folder hash (all files)
    $files = Get-ChildItem -Recurse -File $paperPath | Sort-Object FullName
    $folderDigestInput = New-Object System.Text.StringBuilder
    foreach ($f in $files) {
        $h = (Get-FileHash -Algorithm SHA256 -Path $f.FullName).Hash
        $rel = $f.FullName.Substring($paperPath.Length).TrimStart('\', '/')
        [void]$folderDigestInput.AppendLine("$h  $rel")
    }
    $folderDigestBytes = [System.Text.Encoding]::UTF8.GetBytes($folderDigestInput.ToString())
    $sha = [System.Security.Cryptography.SHA256]::Create()
    $folderHash = ($sha.ComputeHash($folderDigestBytes) | ForEach-Object { $_.ToString("x2") }) -join ""

    # Count files by type
    $pdfCount = ($files | Where-Object { $_.Extension -eq ".pdf" }).Count
    $texCount = ($files | Where-Object { $_.Extension -eq ".tex" }).Count
    $mdCount = ($files | Where-Object { $_.Extension -eq ".md" }).Count
    $otherCount = $files.Count - $pdfCount - $texCount - $mdCount

    # Write anchor file
    New-Item -ItemType Directory -Force -Path "anchors" | Out-Null
    $anchorPath = "anchors\ANCHOR-$stamp.txt"

    $body = @()
    $body += "═══════════════════════════════════════════════════════════"
    $body += "  CRYPTOGRAPHIC TIMESTAMP ANCHOR (auto-generated)"
    $body += "═══════════════════════════════════════════════════════════"
    $body += ""
    $body += "Timestamp_Local: $localStr"
    $body += "Timestamp_UTC:   $utcStr"
    $body += ""
    $body += "Git_Branch:      $branch"
    $body += "Repo_Root:       $gitTop"
    $body += ""
    $body += "Paper_Dir:       $paperDir"
    if ($primaryPath) {
        $body += "Primary_File:    $primaryPath"
        $body += ""
        $body += "Primary_SHA256:  $primaryHash  ($primaryType)"
    }
    $body += "Dir_SHA256:      $folderHash"
    $body += ""
    $filesSummary = "$($files.Count) total - $pdfCount pdf, $texCount tex, $mdCount md, $otherCount other"
    $body += "Files_Count:     $filesSummary"
    $body += ""
    $body += "Note:            auto-anchor on commit"
    $body += ""
    $body += "═══════════════════════════════════════════════════════════"

    $bodyText = ($body -join "`r`n") + "`r`n"
    Set-Content -Path $anchorPath -Value $bodyText -Encoding UTF8

    # Stage the anchor file
    git add $anchorPath

    Write-Host "✓ Anchor created: $anchorPath" -ForegroundColor Green
    if ($primaryHash) {
        Write-Host "  $primaryType hash: $primaryHash" -ForegroundColor DarkGray
    }
    Write-Host "  Dir hash:  $folderHash" -ForegroundColor DarkGray
    Write-Host "  Files:     $($files.Count) total - $pdfCount pdf, $texCount tex, $mdCount md" -ForegroundColor DarkGray
}

Write-Host ""
exit 0
