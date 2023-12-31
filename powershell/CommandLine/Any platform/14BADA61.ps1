

#Set-ExecutionPolicy -ExecutionPolicy Unrestricted
Write-Host "`n`nSystem info collection info by Ahmed Al Fahdi v1.3`n`n"
Write-Host "=================================================="


Write-Host "`nPowerShell V:`n"
$PSVersionTable
Write-Host "=================================================="
Write-Host "`n`nGeneral computer information`n`n"
Get-ComputerInfo
Write-Host "=================================================="

Write-Host "`nThe OS details are: `n"
Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property Build*,OSType,ServicePack*


Write-Host "=================================================="

Write-Host "`nThe installed hotfixes are:`n"
Get-CimInstance -ClassName Win32_QuickFixEngineering


Write-Host "=================================================="

Write-Host "`nStatus of the running services are as follows:`n"
Get-CimInstance -ClassName Win32_Service | Format-Table -Property Status,Name,DisplayName -AutoSize -Wrap

Write-Host "`n====================================END========================================="

#Get-ComputerInfo; Get-CimInstance -ClassName Win32_QuickFixEngineering; Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property Build*, OSType, ServicePack*; Get-CimInstance -ClassName Win32_QuickFixEngineering; Get-CimInstance -ClassName Win32_Service | Format-Table -Property Status, Name, DisplayName -AutoSize -Wrap | Out-File -FilePath ".\output.txt"


Read-Host "Press Enter to continue..."

