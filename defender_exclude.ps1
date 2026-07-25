# Vérification des privilèges Administrateur
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Error "Ce script doit être exécuté dans un terminal PowerShell lancé EN TANT QU'ADMINISTRATEUR !"
    exit
}

Write-Host "Mise à jour des exclusions Microsoft Defender..." -ForegroundColor Green

# 1. Dossiers de cache, de configuration et de travail
$paths = @(
    "$env:USERPROFILE\.m2",
    "$env:APPDATA\JetBrains",
    "$env:APPDATA\DBeaverData",
    "$env:USERPROFILE\.claude",
    "C:\votre_dossier_projets"  # Remplacez par le chemin racine de vos projets
)

foreach ($path in $paths) {
    if (Test-Path $path) {
        Add-MpPreference -ExclusionPath $path
        Write-Host " [OK] Dossier exclu : $path" -ForegroundColor Cyan
    } else {
        Write-Host " [IGNORÉ] Dossier introuvable : $path" -ForegroundColor Yellow
    }
}

# 2. Processus d'outils et de dev
$processes = @(
    "idea64.exe",
    "Code.exe",
    "java.exe",
    "node.exe",
    "git.exe",
    "dbeaver.exe",
    "claude.exe"
)

foreach ($proc in $processes) {
    Add-MpPreference -ExclusionProcess $proc
    Write-Host " [OK] Processus exclu : $proc" -ForegroundColor Cyan
}

Write-Host "`nConfiguration terminée !" -ForegroundColor Green
