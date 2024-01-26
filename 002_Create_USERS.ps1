#Creation des utilisateurs
New-ADUser -Name "Jean Pierre" 
-GivenName "Jean" 
-Surname "Pierre" 
-SamAccountName "j.pierre" 
-UserPrincipalName "j.pierre@domain.lan" 
-Path "OU=GENERAL,OU=DIRECTION,OU=ENTREPRISE,DC=domain,DC=lan" 
-AccountPassword(Read-Host -AsSecureString "Input Password") 
livera-Enabled $true
New-ADUser -Name "Sandrine Drine" -GivenName "Sandrine" -Surname "Drine" -SamAccountName "s.drine" -UserPrincipalName "s.drine@domain.lan" -Path "OU=REGIONAL,OU=DIRECTION,OU=ENTREPRISE,DC=domain,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Jean-Claude Dus" -GivenName "Jean-Claude" -Surname "Dus" -SamAccountName "jc.dus" -UserPrincipalName "jc.dus@domain.lan" -Path "OU=RH,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Fox Mulder" -GivenName "Fox" -Surname "Mulder" -SamAccountName "f.mulder" -UserPrincipalName "f.mulder@domain.lan" -Path "OU=COMPTABLE,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Hector Salamanca" -GivenName "Hector" -Surname "Salamanca" -SamAccountName "h.salamanca" -UserPrincipalName "h.salamanca@domain.lan" -Path "OU=COMPTABLE,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Geralt de Riv" -GivenName "Geralt" -Surname "De-Riv" -SamAccountName "g.deriv" -UserPrincipalName "g.deriv@domain.lan" -Path "OU=COMMERCIAL,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Cletus Vandamme" -GivenName "Cletus" -Surname "Vandamme" -SamAccountName "c.vandamme" -UserPrincipalName "c.vandamme@domain.lan" -Path "OU=COMMERCIAL,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Jeanne D'Arc" -GivenName "Jeanne" -Surname "D'Arc" -SamAccountName "j.darc" -UserPrincipalName "j.darc@domain.lan" -Path "OU=DIRECTION,OU=ENTREPRISE,DC=domain,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "Techssr" -GivenName "" -Surname "Techssr" -SamAccountName "Techssr" -UserPrincipalName "Techssr@domain.lan" -Path "OU=TECHNICIEN,OU=PERSONNEL,OU=ENTREPRISE,DC=domain,DC=lan" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true

