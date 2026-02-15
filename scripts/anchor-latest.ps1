# Auto-detect most recent paper folder and anchor it
# Works with: .pdf, .tex, .md files (no PDF required)

$gitTop = git rev-parse --show-toplevel
Set-Location $gitTop

$papersDir = Join-Path $gitTop "papers"
$latest = Get-ChildItem -Directory $papersDir |
          Sort-Object LastWriteTime -Descending |
          Select-Object -First 1

if (-not $latest) { throw "No paper folders found in papers\" }

# Check for any anchorable file (pdf, tex, or md)
$anchorableFile = Get-ChildItem -Path $latest.FullName -File -ErrorAction SilentlyContinue |
    Where-Object { $_.Extension -match "\.(pdf|tex|md)$" } |
    Select-Object -First 1

if (-not $anchorableFile) {
    throw "No .pdf, .tex, or .md file found in $($latest.Name)"
}

$relDir = "papers\$($latest.Name)"

Write-Host "Auto-detected: $relDir" -ForegroundColor Yellow
Write-Host "Primary file: $($anchorableFile.Name)" -ForegroundColor Yellow
Write-Host ""

& "$gitTop\scripts\anchor.ps1" -PaperDir $relDir -Note "auto-anchor" -PublishGist
