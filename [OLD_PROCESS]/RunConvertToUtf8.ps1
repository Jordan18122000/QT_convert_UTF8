# Définir le chemin complet du script de conversion en UTF-8
$SCRIPT_PATH = Join-Path $PSScriptRoot "ConvertToUtf8.ps1"

# Exécuter le script de conversion en UTF-8
& $SCRIPT_PATH

# Afficher un message de confirmation à la fin de l'exécution
Write-Host "La conversion en UTF-8 est terminée pour tout le projet QT."

