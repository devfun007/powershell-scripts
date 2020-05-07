
$credential = Get-Credential
$credential.Password | ConvertFrom-SecureString | Set-Content c:\temp\encryptedpasswordtextfile.txt