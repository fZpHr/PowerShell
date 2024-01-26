# Création dossier partagé, désactivation des héritages et ajout, suppression droits ntfs

# Suppression droits ntfs "builtin\Utilisateurs"
$userAccess1=New-Object security.AccessControl.FileSystemAccessRule("Utilisateurs"," FullControl, Synchronize",3,0,"Allow")
$acl.RemoveAccessRule($userAccess1)
$acl | Set-Acl

# Suppression droits ntfs "CREATEUR PROPRIETAIRE"
$userAccess2=New-Object security.AccessControl.FileSystemAccessRule("CREATEUR PROPRIETAIRE"," FullControl, Synchronize",3,0,"Allow")
$acl.RemoveAccessRule($userAccess2)
$acl | Set-Acl

# Ajout droits ntfs "Utilisateurs du domaine"
$userAccess3=New-Object security.AccessControl.FileSystemAccessRule("Utilisateurs du domaine"," FullControl, Synchronize",3,0,"Allow")
$Acl.addAccessRule($userAccess3)
$acl |Set-Acl

# Ajout droits ntfs "Ordinateurs du domaine"
$userAccess4=New-Object security.AccessControl.FileSystemAccessRule("Ordinateurs du domaine"," FullControl, Synchronize",3,0,"Allow")
$Acl.addAccessRule($userAccess4)
$acl |Set-Acl
