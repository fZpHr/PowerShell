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
foreach ($user in $UserList) {
    $prenom = $user.prenom
    $nom = $user.nom
    $nomComplet = "$prenom $nom"
    $sam = "$($prenom.Substring(0,1))$nom"
    $login = "$sam$fqdn"
    $ou = $user.ou
    $password = ConvertTo-SecureString $mdp -AsPlainText -Force

    # Vérifier si l'utilisateur existe déjà
    if (Get-ADUser -Filter {SamAccountName -eq $sam}) {
        Write-Warning "Utilisateur $prenom $nom existe déjà dans $ou"
    } else {
        # Création de l'utilisateur uniquement s'il n'existe pas
        New-ADUser -Name $sam -DisplayName $nomComplet -GivenName $prenom -Surname $nom -Path $ou -UserPrincipalName $login -AccountPassword $password -Enabled $true
        Write-Host "Utilisateur : $prenom $nom ajouté dans $ou"
    }
}

 
   


