# PowerShell
Script #1 New-PSSMenuItem.ps1

This script runs a simple registry change using the New-Item and New-ItemProperty CMDLET.

Adds a PS-Drive that is mapped to {HKCR}:HKEY+CLASSES_ROOT using the new.
It was neccesary to run the New-Item CMDLET which creates the Registry Key "ShellNew" by NOTing it against it alreadying existing to avoid an error. We check for the Key by using the Test-Path CMDLET referencing the HKCR PSDrive we already defined. From there we can call the propper CMDLETS in either code block of the IF or ELSE statements.

[ScreenShot](/screenshots/Screenshot_1.png)

REFERENCES:
[New-Item](https://technet.microsoft.com/en-us/library/ee176914.aspx)
[New-ItemProperty](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-itemproperty?view=powershell-5.1)
[Test-Path](https://technet.microsoft.com/en-us/library/ee177015.aspx)
[New-PSDrive](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-psdrive?view=powershell-5.1)
