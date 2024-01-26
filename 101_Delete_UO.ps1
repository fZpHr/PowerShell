# Suppression protection UO et UO
Set-ADOrganizationalUnit -identity "OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=DIRECTION,OU=ENTREPRISE,DC=domain,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=GENERAL,OU=DIRECTION,OU=ENTREPRISE,DC=domain,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=REGIONAL,OU=DIRECTION,OU=ENTREPRISE,DC=domain,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=COMPTABLE,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=COMMERCIAL,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=RH,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=TECHNICIEN,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan" -ProtectedFromAccidentalDeletion $False
Remove-ADOrganizationalUnit -identity "OU=GENERAL,OU=DIRECTION,OU=ENTREPRISE,DC=domain,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=REGIONAL,OU=DIRECTION,OU=ENTREPRISE,DC=domain,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=COMPTABLE,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=COMMERCIAL,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=TECHNICIEN,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=RH,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=DIRECTION,OU=ENTREPRISE,DC=domain,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=ENTREPRISE,DC=domain,DC=lan"