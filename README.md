# QT_convert_UTF8

## Générer l'exécutable :

#### Ouvrir PowerShell en tant qu'administrateur.
#### Installer le module "PowerShell Pro Tools" en exécutant la commande suivante :
```Install-Module -Name PowerShellProTools```

#### Utiliser la commande "ps2exe" pour créer le fichier exe à partir du script :

```ps2exe -inputFile "ConvertToUtf8.ps1" -outputFile "ConvertToUtf8.exe"```

ou 

```Invoke-ps2exe -inputFile "ConvertToUtf8.ps1" -outputFile "ConvertToUtf8.exe```

#### Voici les informations qui vont s'écrire sur votre moniteur : 
```
PS2EXE-GUI v0.5.0.28 by Ingo Karstein, reworked and GUI support by Markus Scholtes

Reading input file C:\Users\j.clement\Documents\Github\QT_convert_UTF8\ConvertToUtf8.ps1
Compiling file...

Output file C:\Users\j.clement\Documents\Github\QT_convert_UTF8\ConvertToUtf8.exe written
```
