$registryPath = "HKCR:\.ps1\ShellNew"
$Name = "NullFile"
$value = "1"

#Define HKCR Drive to edit HKEY_CLASSES_ROOT
New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT

#First check if Registry key already exist
if(!(Test-Path $registryPath))
{
    #then NOT the following:
    #Create the 'ShellNew' Registry Key
    New-Item -Path $registryPath -Force | Out-Null
    Write-Host "Created HKEY_CLASSES_ROOT\.ps1\ShellNew"
    #Create a 'NullFile' STRING with value of '1'
        New-ItemProperty -Path $registryPath -Name $Name -Value $value -PropertyType STRING -Force | Out-Null
        Write-Host "Added STRING 'NullFile' with Value of '1' to HKEY_CLASSES_ROOT\.ps1\ShellNew"
}
else
{
    #Only create the STRING if Key already exist.
    New-ItemProperty -Path $registryPath -Name $Name -Value $value -PropertyType STRING -Force | Out-Null
    Write-Host "Added STRING 'NullFile' with Value of '1' to HKEY_CLASSES_ROOT\.ps1\ShellNew"
}