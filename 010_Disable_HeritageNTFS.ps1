# Création dossier partagé, désactivation des héritages et ajout, suppression droits ntfs


# Désactivation des héritages
$acl = Get-Acl '\\SRVADW2K19\Partage\Direction'
$acl.SetAccessRuleProtection($true,$false)
$acl | Set-Acl





