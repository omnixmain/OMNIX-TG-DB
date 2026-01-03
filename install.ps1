# Auto-Installer for TG-FileStreamBot

Write-Host "Checking for latest version..."
$repo = "EverythingSuckz/TG-FileStreamBot"
$releasesUrl = "https://api.github.com/repos/$repo/releases/latest"

try {
    $latestRelease = Invoke-RestMethod -Uri $releasesUrl
    Write-Host "Latest version: $($latestRelease.tag_name)"
} catch {
    Write-Error "Failed to fetch release info. Internet issue?"
    exit 1
}

# Find Windows asset
$asset = $latestRelease.assets | Where-Object { $_.name -match "windows" -and $_.name -match "amd64" } | Select-Object -First 1

if (-not $asset) {
    Write-Error "Could not find a Windows version in the latest release."
    exit 1
}

$downloadUrl = $asset.browser_download_url
$zipPath = "fsb_latest.zip"

Write-Host "Downloading from $downloadUrl..."
Invoke-WebRequest -Uri $downloadUrl -OutFile $zipPath

Write-Host "Extracting..."
Expand-Archive -Path $zipPath -DestinationPath "." -Force

# Find exe
$exe = Get-ChildItem -Filter "fsb.exe" -Recurse | Select-Object -First 1
if (-not $exe) {
    # Try finding any exe that looks right
    $exe = Get-ChildItem -Filter "*.exe" -Recurse | Where-Object { $_.Name -like "*fsb*" } | Select-Object -First 1
}

if ($exe) {
    Write-Host "Found bot executable: $($exe.FullName)"
    Write-Host "Installation Complete!"
    Write-Host "Starting Bot..."
    
    # Run the bot
    & $exe.FullName run
} else {
    Write-Error "Could not find fsb.exe after extraction."
}
