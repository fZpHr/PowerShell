# Création dossier partagé, désactivation des héritages et ajout, suppression droits ntfs


# Création dossier partagé, désactivation des héritages et ajout, suppression droits ntfs
$acl = Get-Acl \\SRVADW2K19\Partage$
# Suppression droits ntfs "builtin\Utilisateurs"
$userAccess5=New-Object security.AccessControl.FileSystemAccessRule("Utilisateurs"," FullControl, Synchronize",3,0,"Allow")
$acl.RemoveAccessRule($userAccess5)
$acl | Set-Acl

# Suppression droits ntfs "CREATEUR PROPRIETAIRE"
$userAccess6=New-Object security.AccessControl.FileSystemAccessRule("CREATEUR PROPRIETAIRE"," FullControl, Synchronize",3,0,"Allow")
$acl.RemoveAccessRule($userAccess6)
$acl | Set-Acl

# Ajout droits ntfs "Utilisateurs du domaine"
$userAccess7=New-Object security.AccessControl.FileSystemAccessRule("Utilisateurs du domaine"," FullControl, Synchronize",3,0,"Allow")
$Acl.addAccessRule($userAccess7)
$acl |Set-Acl

# Ajout droits ntfs "Ordinateurs du domaine"
$userAccess8=New-Object security.AccessControl.FileSystemAccessRule("Ordinateurs du domaine"," FullControl, Synchronize",3,0,"Allow")
$Acl.addAccessRule($userAccess8)
$acl |Set-Acl





