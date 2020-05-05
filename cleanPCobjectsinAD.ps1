import-module activedirectory

$45 = (Get-Date).AddDays(-45)
$60 = (Get-Date).AddDays(-60) 
 
 
Get-ADComputer -Filter 'lastLogonDate -lt $45 -and OperatingSystem -NotLike "*Server*"' | Move-ADObject -TargetPath "OU=___,OU=___,DC=__,DC=__" 
 
Get-ADComputer -SearchBase "OU=___,OU=___,DC=__,DC=__" -Filter 'lastLogonDate -lt $60 -and OperatingSystem -NotLike "*Server*"' | Remove-ADObject -Recursive -Confirm:$false
