Import-Module ActiveDirectory

$mdp = "P@ssw0rd" 
$fqdn = "@DOMAIN.LAN"

New-ADOrganizationalUnit "PifPaf" -Path "DC=DOMAIN,DC=LAN"
New-ADOrganizationalUnit "Direction" -Path "OU=PifPaf,DC=DOMAIN,DC=LAN"
New-ADOrganizationalUnit "Comptable" -Path "OU=PifPaf,DC=DOMAIN,DC=LAN"
New-ADOrganizationalUnit "Commercial" -Path "OU=PifPaf,DC=DOMAIN,DC=LAN"
New-ADOrganizationalUnit "RH" -Path "OU=PifPaf,DC=DOMAIN,DC=LAN"
New-ADOrganizationalUnit "Technicien" -Path "OU=PifPaf,DC=DOMAIN,DC=LAN"



$UserList = Import-Csv -Delimiter ";" -Path C:\Users\Administrateur\Desktop\QSDQS.csv

foreach($user in $UserList){
 
   $prenom = $user.prenom
   $nom = $user.nom
   $nomComplet = $prenom + " " +$nom
   $sam = $prenom.SubString(0,1) + $nom
   $login = $sam + $fqdn 
   $Ou = $User.ou
   $password = ConvertTo-SecureString $mdp -AsPlainText -Force
      
      #Message s'affichant dans la console si l'utilisateur existe déjà dans l'UO

 Write-Warning "Utilisateur $prenom $nom existe déjà dans $ou"



      #Création d'un utilisateur si ce dernier n'est pas présent dans l'OU

      New-ADUser -Name $sam -DisplayName $nomComplet -GivenName $prenom -Surname $nom -Path $ou -UserPrincipalName $login -AccountPassword $password -Enabled $true

      Write-Host "Utilisateur : $prenom $nom ajouté dans $ou  "


        }  

 
   


