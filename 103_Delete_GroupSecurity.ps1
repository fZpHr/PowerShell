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