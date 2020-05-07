Import-Module PoshWSUS
Connect-PSWSUSServer -wsusserver wsus -port 80
$file = "c:\MissingUpdates.csv"
$smtpserver = ""
Get-PSWSUSUpdateSummaryPerClient | sort neededcount -des | select computer, neededcount, notinstalledcount, installedcount, failedcount,pendingreboot,lastupdated | Export-CSV $file
$att = new-object Net.Mail.Attachment($file)
$msg = new-object Net.Mail.MailMessage
$smtp = new-object Net.Mail.SmtpClient($smtpServer)
$msg.From = ""
$msg.To.Add("")
$msg.Subject = "Report from WSUS server - Missing Updates"
$msg.Body = ""
$msg.Attachments.Add($att)
$smtp.Send($msg)
$att.Dispose()
Disconnect-PSWSUSServer
                          