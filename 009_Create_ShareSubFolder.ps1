# Création dossier partagé, désactivation des héritages et ajout, suppression droits ntfs


# Création sous dossier 1er paratge
New-Item "E:\Partage\Direction" -itemType Directory
New-SmbShare -Name Direction -Path "\\SRVADW2K19\Partage\Direction" -FullAccess "Tout le monde"

