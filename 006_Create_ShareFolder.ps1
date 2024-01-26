# Création dossier partagé, désactivation des héritages et ajout, suppression droits ntfs

# 1er Partage
# Création dossier partagé
New-Item "E:\Partage" -itemType Directory
New-SmbShare -Name Partage$ -Path "\\SRVADW2K19\Partage" -FullAccess "Tout le monde"


