#Création d'OU
New-ADOrganizationalUnit -Name "ENTREPRISE" -Path "DC=PIFPAF,DC=LAN"
New-ADOrganizationalUnit -Name "DIRECTION" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=LAN"
New-ADOrganizationalUnit -Name "PERSONNEL" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=LAN"
New-ADOrganizationalUnit -Name "GENERAL" -Path "OU=DIRECTION,OU=ENTREPRISE,DC=PIFPAF,DC=LAN"
New-ADOrganizationalUnit -Name "REGIONAL" -Path "OU=DIRECTION,OU=ENTREPRISE,DC=PIFPAF,DC=LAN"
New-ADOrganizationalUnit -Name "COMPTABLE" -Path "OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=LAN"
New-ADOrganizationalUnit -Name "COMMERCIAL" -Path "OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=LAN"
New-ADOrganizationalUnit -Name "TECHNICIEN" -Path "OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=LAN"
New-ADOrganizationalUnit -Name "RH" -Path "OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=LAN"


#Creation des utilisateurs
New-ADUser -Name "Jean Pierre" -GivenName "Jean" -Surname "Pierre" -SamAccountName "j.pierre" -UserPrincipalName "j.pierre@PIFPAF.lan" -Path "OU=GENERAL,OU=DIRECTION,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Sandrine Drine" -GivenName "Sandrine" -Surname "Drine" -SamAccountName "s.drine" -UserPrincipalName "s.drine@PIFPAF.lan" -Path "OU=REGIONAL,OU=DIRECTION,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Jean-Claude Dus" -GivenName "Jean-Claude" -Surname "Dus" -SamAccountName "jc.dus" -UserPrincipalName "jc.dus@PIFPAF.lan" -Path "OU=RH,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Fox Mulder" -GivenName "Fox" -Surname "Mulder" -SamAccountName "f.mulder" -UserPrincipalName "f.mulder@PIFPAF.lan" -Path "OU=COMPTABLE,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Hector Salamanca" -GivenName "Hector" -Surname "Salamanca" -SamAccountName "h.salamanca" -UserPrincipalName "h.salamanca@PIFPAF.lan" -Path "OU=COMPTABLE,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Geralt de Riv" -GivenName "Geralt" -Surname "De-Riv" -SamAccountName "g.deriv" -UserPrincipalName "g.deriv@PIFPAF.lan" -Path "OU=COMMERCIAL,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Cletus Vandamme" -GivenName "Cletus" -Surname "Vandamme" -SamAccountName "c.vandamme" -UserPrincipalName "c.vandamme@PIFPAF.lan" -Path "OU=COMMERCIAL,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Jeanne D'Arc" -GivenName "Jeanne" -Surname "D'Arc" -SamAccountName "j.darc" -UserPrincipalName "j.darc@PIFPAF.lan" -Path "OU=DIRECTION,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Techssr" -GivenName "" -Surname "Techssr" -SamAccountName "Techssr" -UserPrincipalName "Techssr@PIFPAF.lan" -Path "OU=TECHNICIEN,OU=PERSONNEL,OU=ENTREPRISE,DC=PIFPAF,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true


#Création groupes de securités
New-ADGroup "DIRECTION_TECHSSR" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "PERSONNEL_TECHSSR" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "DIRECTION_ALL" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "GENERAL" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "REGIONAL" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "PERSONNEL_ALL" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "COMPTABLE" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "COMMERCIAL" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "RH" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "TECHNICIEN" -Path "OU=ENTREPRISE,DC=PIFPAF,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose


# Ajout utilisateurs a un groupe
Add-AdGroupMember -Identity COMMERCIAL -Members c.vandamme, g.deriv
Add-AdGroupMember -Identity COMPTABLE -Members f.mulder, h.salamanca
Add-AdGroupMember -Identity DIRECTION_ALL -Members j.pierre, s.drine, j.darc, techssr
Add-AdGroupMember -Identity GENERAL -Members j.pierre
Add-AdGroupMember -Identity PERSONNEL_ALL -Members j.pierre, s.drine, j.darc, techssr, c.vandamme, g.deriv, f.mulder, h.salamanca, jc.dus
Add-AdGroupMember -Identity REGIONAL -Members s.drine
Add-AdGroupMember -Identity RH -Members jc.dus
Add-AdGroupMember -Identity TECHNICIEN -Members techssr
Add-AdGroupMember -Identity Administrateurs -Members techssr
