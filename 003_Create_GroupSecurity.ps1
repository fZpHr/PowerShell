#Création groupes de securités
New-ADGroup "DIRECTION_TECHSSR" -Path "OU=ENTREPRISE,DC=domain,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "PERSONNEL_TECHSSR" -Path "OU=ENTREPRISE,DC=domain,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "DIRECTION_ALL" -Path "OU=ENTREPRISE,DC=domain,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "GENERAL" -Path "OU=ENTREPRISE,DC=domain,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "REGIONAL" -Path "OU=ENTREPRISE,DC=domain,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "PERSONNEL_ALL" -Path "OU=ENTREPRISE,DC=domain,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "COMPTABLE" -Path "OU=ENTREPRISE,DC=domain,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "COMMERCIAL" -Path "OU=ENTREPRISE,DC=domain,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "RH" -Path "OU=ENTREPRISE,DC=domain,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose
New-ADGroup "TECHNICIEN" -Path "OU=ENTREPRISE,DC=domain,DC=lan" -GroupCategory Security -GroupScope Global -PassThru –Verbose