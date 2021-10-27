Add-Type -AssemblyName System.Windows.Forms 
$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path) 
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]:: Info
$balloon.BalloonTipText = 'Check the task list'
$balloon.BalloonTipTitle = "Hey $Env:USERNAME" 
$balloon.Visible = $true 
$balloon.ShowBalloonTip(5000)

while(1)
{
    $global:balloon = New-Object System.Windows.Forms.NotifyIcon
    $path = (Get-Process -id $pid).Path
    $balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path) 
    $balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]:: Info
    $balloon.BalloonTipText = 'Check the task list'
    $balloon.BalloonTipTitle = "Hey $Env:USERNAME" 
    $balloon.Visible = $true 
    $balloon.ShowBalloonTip(5000)
    start-sleep -seconds 600
}
