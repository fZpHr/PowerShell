#Création Lecteur reseau
New-PSDrive -Name G -Root \\SRVADW2K19\Partage$\Commun -PSProvider FileSystem -Persist -Credential Administrateur@domain.lan
New-PSDrive -Name H -Root \\SRVADW2K19\Partage$\Direction\General -PSProvider FileSystem -Persist -Credential Administrateur@domain.lan
New-PSDrive -Name I -Root \\SRVADW2K19\Partage$\Direction\Regional -PSProvider FileSystem -Persist -Credential Administrateur@domain.lan
New-PSDrive -Name J -Root \\SRVADW2K19\Partage$\Personnel\Commercial -PSProvider FileSystem -Persist -Credential Administrateur@domain.lan
New-PSDrive -Name K -Root \\SRVADW2K19\Partage$\Personnel\Comptable -PSProvider FileSystem -Persist -Credential Administrateur@domain.lan
New-PSDrive -Name L -Root \\SRVADW2K19\Partage$\Personnel\RH -PSProvider FileSystem -Persist -Credential Administrateur@domain.lan
New-PSDrive -Name M -Root \\SRVADW2K19\Partage$\Personnel\Technicien -PSProvider FileSystem -Persist -Credential Administrateur@domain.lan