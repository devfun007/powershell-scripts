#Delete Internet Explorer Cache
Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Microsoft\Windows\Temporary Internet Files\*" -Recurse -Force -EA SilentlyContinue -Verbose
Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Microsoft\Windows\INetCache\*" -Recurse -Force -EA SilentlyContinue -Verbose
Write-Host -ForegroundColor green "Internet Explorer Cache Removal - Finished"

#Delete Google Chrome Cache
Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\*" -Recurse -Force -EA SilentlyContinue -Verbose
Write-Host -ForegroundColor green "Google Chrome Cache Removal - Finished"

#Delete Firefox Cache
Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Mozilla\Firefox\Profiles\*" -Recurse -Force -EA SilentlyContinue -Verbose
Write-Host -ForegroundColor green "Firefox Cache Removal - Finished"
           