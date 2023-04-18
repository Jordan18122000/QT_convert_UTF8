#  La fonction Split-Path extrait le chemin du répertoire parent du script à partir de ce chemin complet.
$START_DIR = "$(Split-Path -Path $MyInvocation.MyCommand.Path)"

# Trouver tous les fichiers .h, .cpp et .ui dans le répertoire de départ et ses sous-répertoires
$FILES = Get-ChildItem -Recurse -Filter "*.h","*.cpp","*.ui" -Path $START_DIR

# Boucler sur tous les fichiers trouvés et les convertir en UTF-8
foreach ($FILE in $FILES) {
    Write-Host "Conversion en UTF-8 de" $FILE.FullName "..."

    $CONTENT = Get-Content -Path $FILE.FullName
    Set-Content -Path $FILE.FullName -Value $CONTENT -Encoding UTF8
}

# Afficher un message de confirmation à la fin de l'exécution
Write-Host "La conversion en UTF-8 est terminée pour le projet QT."

