Get-Process Chrome -ErrorAction SilentlyContinue | Stop-Process -Force

$Items = @('User Data\*')
            $users=GCI C:\Users\
            Foreach($user in $users){
$Folder = "C:\users\$($user)\AppData\local\Google\Chrome"
$Items | ForEach-Object { Remove-Item "$Folder\$_" -force -Recurse}
}