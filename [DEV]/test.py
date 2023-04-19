import os

# Demande à l'utilisateur de spécifier le chemin du répertoire du projet QT
chemin_projet = input("Entrez le chemin du répertoire du projet QT : ")

# Vérifie que le chemin existe
if not os.path.exists(chemin_projet):
    print("Le chemin spécifié n'existe pas.")
    exit()

# Fonction pour convertir le fichier en UTF-8
def convertir_en_utf8(fichier):
    with open(fichier, 'r', encoding='iso-8859-1') as f:
        contenu = f.read()
    with open(fichier, 'w', encoding='utf-8') as f:
        f.write(contenu)

# Parcours des fichiers dans le répertoire et sous-répertoires
for dossier_racine, sous_dossiers, fichiers in os.walk(chemin_projet):
    for fichier in fichiers:
        # Si le fichier est un fichier source ou un fichier d'interface utilisateur
        if fichier.endswith((".h", ".cpp", ".ui")):
            # Chemin complet du fichier
            chemin_fichier = os.path.join(dossier_racine, fichier)
            # Conversion en UTF-8
            convertir_en_utf8(chemin_fichier)
