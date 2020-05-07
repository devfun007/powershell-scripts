$users = Get-ADUser -filter * -SearchBase "ou=,dc=,dc="

Get-RDUserSession | where { $users.sAMAccountName -contains $_. } | % { $_ | Invoke-RDUserLogoff -Force }