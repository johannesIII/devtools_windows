ECHO Lets install chocolatey windows package manager!! 

$gcpw = ".\gcpw.ps1"

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$Prompt = Read-Host "Press 1 for basic set-up. Press 2 for developer set-up (1/2)"
switch ($prompt)
{
    1{$tools = ".\dev-setup.ps1"}
    2{$tools = ".\basic-setup.ps1"}
}

powershell.exe -NoProfile -ExecutionPolicy Bypass -File $tools


ECHO Setting up Google login!

powershell.exe -NoProfile -ExecutionPolicy Bypass -File $gcpw

