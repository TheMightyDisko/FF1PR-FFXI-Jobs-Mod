<#
.SYNOPSIS
    Installs the Final Fantasy XI Starting Jobs Mod for Final Fantasy I Pixel Remaster.
.DESCRIPTION
    Detects the game directory, installs the patched Memoria engine files (preventing cutscene crashes),
    deploys mod assets (Master CSVs, FFXI Job bios, abilities, shop tables), and configures Assets.cfg.
#>

param(
    [string]$GamePath = ""
)

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " FINAL FANTASY 1 PIXEL REMASTER: FFXI JOBS MOD INSTALLER" -ForegroundColor Yellow
Write-Host " Vana'diel Edition - 6 Starting Jobs, TP Charges & AF Armor" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host ""

$CurrentDir = $PSScriptRoot

# Common default installation paths for Steam and Xbox App / Microsoft Store
$CommonPaths = @(
    "C:\XboxGames\FINAL FANTASY\Content",
    "D:\XboxGames\FINAL FANTASY\Content",
    "C:\Program Files (x86)\Steam\steamapps\common\FINAL FANTASY PR",
    "C:\Program Files\Steam\steamapps\common\FINAL FANTASY PR",
    "D:\SteamLibrary\steamapps\common\FINAL FANTASY PR",
    "E:\SteamLibrary\steamapps\common\FINAL FANTASY PR"
)

if ([string]::IsNullOrWhiteSpace($GamePath)) {
    foreach ($path in $CommonPaths) {
        if (Test-Path "$path\FINAL FANTASY_Data") {
            $GamePath = $path
            break
        }
    }
}

if ([string]::IsNullOrWhiteSpace($GamePath) -or !(Test-Path "$GamePath\FINAL FANTASY_Data")) {
    Write-Host "Could not automatically detect Final Fantasy 1 Pixel Remaster installation." -ForegroundColor Yellow
    $UserInput = Read-Host "Please enter the full path to your FF1 PR folder (e.g. C:\XboxGames\FINAL FANTASY\Content)"
    if (Test-Path "$UserInput\FINAL FANTASY_Data") {
        $GamePath = $UserInput
    } else {
        Write-Host "Error: Invalid game directory. 'FINAL FANTASY_Data' folder not found at specified path." -ForegroundColor Red
        Exit 1
    }
}

Write-Host "Target Game Path: $GamePath" -ForegroundColor Green
Write-Host ""

# 1. Install / Update Patched Memoria Plugin
$BepInExPlugins = "$GamePath\BepInEx\plugins"
if (Test-Path $BepInExPlugins) {
    Write-Host "Installing Patched Memoria.FF1.dll engine fix..." -ForegroundColor Cyan
    $SourceDll = "$CurrentDir\FFXI_Jobs\BepInEx\plugins\Memoria.FF1.dll"
    if (Test-Path $SourceDll) {
        # Backup original if not already backed up
        if ((Test-Path "$BepInExPlugins\Memoria.FF1.dll") -and !(Test-Path "$BepInExPlugins\Memoria.FF1.dll.bak")) {
            Copy-Item "$BepInExPlugins\Memoria.FF1.dll" "$BepInExPlugins\Memoria.FF1.dll.bak" -Force
        }
        Copy-Item $SourceDll "$BepInExPlugins\Memoria.FF1.dll" -Force
        if (Test-Path "$CurrentDir\FFXI_Jobs\BepInEx\plugins\Newtonsoft.Json.dll") {
            Copy-Item "$CurrentDir\FFXI_Jobs\BepInEx\plugins\Newtonsoft.Json.dll" "$BepInExPlugins\" -Force
        }
        Write-Host "Patched Memoria.FF1.dll installed (Movement & cutscene freeze fix applied)." -ForegroundColor Green
    }
}

# 2. Configure Memoria Assets.cfg
$AssetsCfg = "$GamePath\BepInEx\config\Memoria.FFPR\Assets.cfg"
if (Test-Path $AssetsCfg) {
    Write-Host "Configuring Memoria Assets.cfg for mod import..." -ForegroundColor Cyan
    $cfg = Get-Content $AssetsCfg
    $cfg = $cfg -replace "ExportEnabled\s*=\s*true", "ExportEnabled = false"
    $cfg = $cfg -replace "ImportEnabled\s*=\s*false", "ImportEnabled = true"
    $cfg = $cfg -replace "ImportText\s*=\s*false", "ImportText = true"
    $cfg = $cfg -replace "ImportTextures\s*=\s*false", "ImportTextures = true"
    Set-Content -Path $AssetsCfg -Value $cfg
    Write-Host "Assets.cfg updated (ImportEnabled=true, ExportEnabled=false)." -ForegroundColor Green
} elseif (Test-Path "$CurrentDir\FFXI_Jobs\BepInEx\config\Memoria.FFPR\Assets.cfg") {
    New-Item -ItemType Directory -Force -Path "$GamePath\BepInEx\config\Memoria.FFPR" | Out-Null
    Copy-Item "$CurrentDir\FFXI_Jobs\BepInEx\config\Memoria.FFPR\Assets.cfg" "$GamePath\BepInEx\config\Memoria.FFPR\" -Force
    Write-Host "Installed default Assets.cfg configuration." -ForegroundColor Green
}

# 3. Deploy Mod Data Assets
Write-Host "Deploying FFXI Master tables and localization strings..." -ForegroundColor Cyan
$TargetStreamingAssets = "$GamePath\FINAL FANTASY_Data\StreamingAssets\Assets"
$ModDataSource = "$CurrentDir\FFXI_Jobs\FINAL FANTASY_Data\StreamingAssets\Assets"

New-Item -ItemType Directory -Force -Path $TargetStreamingAssets | Out-Null
Copy-Item -Recurse -Force "$ModDataSource\*" $TargetStreamingAssets

Write-Host "FFXI Mod files successfully installed to: $TargetStreamingAssets" -ForegroundColor Green

Write-Host "`n==========================================================" -ForegroundColor Cyan
Write-Host " FFXI JOBS MOD INSTALLATION COMPLETE!" -ForegroundColor Green
Write-Host " Launch Final Fantasy I Pixel Remaster." -ForegroundColor White
Write-Host " 1. Choose your Hume WAR, Galka MNK, Mithra THF, Taru BLM, and Elvaan RDM!" -ForegroundColor Yellow
Write-Host " 2. Visit Corneria's magic shops to claim your signature abilities for 0 Gil!" -ForegroundColor Yellow
Write-Host " 3. Enter battle and command the Abilities menu!" -ForegroundColor Yellow
Write-Host " May the crystals and Goddess Altana protect you across Vana'diel!" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
