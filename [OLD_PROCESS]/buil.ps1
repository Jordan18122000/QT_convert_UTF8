
# Contourner la restriction d'exécution des scripts
# Set-ExecutionPolicy RemoteSigned
# Set-ExecutionPolicy Bypass -Scope Process -Force
Set-ExecutionPolicy RemoteSigned -Scope Process -Force

# Vérifier si le module ps2exe est installé
if (-not(Get-Module -Name ps2exe -ListAvailable)) {
    # Installer le module ps2exe
    Write-Host "Le module ps2exe n'est pas installé. Installation en cours..."
    Install-Module ps2exe -Scope CurrentUser -Force
}

# Importer le module ps2exe
Import-Module ps2exe

# Changer la stratégie d'exécution pour pouvoir exécuter le script et créer un fichier exécutable
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force

# Chemin relatif du script à convertir en exécutable
$SCRIPT_PATH = Join-Path $PSScriptRoot "ConvertToUtf8.ps1"

# Options de compilation pour le fichier exécutable
$compilationOptions = @{
    OutputPath = Join-Path $PSScriptRoot "ConvertToUtf8.exe"
    NoConsole = $true
}

# Compiler le script PowerShell en un fichier exécutable
New-PS2EXE -Script $scriptPath @compilationOptions

# Vérifier si la compilation a réussi
if (Test-Path -Path $compilationOptions.OutputPath) {
    Write-Host "Le fichier exécutable a été créé avec succès."
} else {
    Write-Host "La création du fichier exécutable a échoué."
}

# Remettre la sécurité par défaut
# Set-ExecutionPolicy Restricted

# Changer la stratégie d'exécution pour la remettre à sa valeur d'origine
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope Process -Force