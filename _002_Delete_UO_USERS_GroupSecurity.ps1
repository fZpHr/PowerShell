# Suppression protection UO
Set-ADOrganizationalUnit -identity "OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=DIRECTION,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=GENERAL,OU=DIRECTION,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=REGIONAL,OU=DIRECTION,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=COMPTABLE,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=COMMERCIAL,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=RH,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -ProtectedFromAccidentalDeletion $False
Set-ADOrganizationalUnit -identity "OU=TECHNICIEN,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -ProtectedFromAccidentalDeletion $False


# Suppression UO
Remove-ADOrganizationalUnit -identity "OU=GENERAL,OU=DIRECTION,OU=ENTREPRISE,DC=PIFPAF,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=REGIONAL,OU=DIRECTION,OU=ENTREPRISE,DC=PIFPAF,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=COMPTABLE,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=COMMERCIAL,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=TECHNICIEN,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=RH,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=DIRECTION,OU=ENTREPRISE,DC=PIFPAF,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan"
Remove-ADOrganizationalUnit -identity "OU=ENTREPRISE,DC=PIFPAF,DC=lan"


# Suppression des utilisateurs
Remove-ADUser -Identity j.pierre
Remove-ADUser -Identity s.drine
Remove-ADUser -Identity j.darc
Remove-ADUser -Identity c.vandamme
Remove-ADUser -Identity g.deriv
Remove-ADUser -Identity f.mulder
Remove-ADUser -Identity h.salamanca
Remove-ADUser -Identity jc.dus
Remove-ADUser -Identity techssr


#Suppression des groupes de securités
Remove-ADGroup -Identity DIRECTION_TECHSSR
Remove-ADGroup -Identity PERSONNEL_TECHSSR
Remove-ADGroup -Identity DIRECTION_ALL
Remove-ADGroup -Identity GENERAL
Remove-ADGroup -Identity REGIONAL
Remove-ADGroup -Identity PERSONNEL_ALL
Remove-ADGroup -Identity COMPTABLE
Remove-ADGroup -Identity COMMERCIAL
Remove-ADGroup -Identity RH
Remove-ADGroup -Identity TECHNICIEN

