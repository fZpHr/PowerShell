# Windows / Active Directory administration (PowerShell)

PowerShell scripts for provisioning and tearing down a Windows Active Directory
environment: organizational units, users, security groups, group membership,
NTFS and share permissions, and GPO backup.

## Scripts

Numbered by execution order. The `0xx` scripts provision, the `1xx` scripts
clean up.

- OU, user and security-group creation; group membership (`001`–`004`, `013`)
- Shared folders, NTFS inheritance and ACL management (`006`–`011`)
- GPO backup (`012`)
- Teardown scripts (`101`–`106`)
- `_001` / `_002`: combined provision / teardown
- `Script/`: bulk user creation driven from a CSV

## Stack

Windows Server, Active Directory, PowerShell, NTFS/share ACLs, Group Policy.
