

ECHO Configure chocolatey
choco feature enable -n allowGlobalConfirmation

ECHO Installing apps

choco install googlechrome
choco install git.install
choco install golang
choco install goland
choco install google-drive-file-stream
choco install slack


choco feature disable -n allowGlobalConfirmation

ECHO Installing GoogleCloudSDKInstaller

(New-Object Net.WebClient).DownloadFile("https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe", "$env:Temp\GoogleCloudSDKInstaller.exe")

& $env:Temp\GoogleCloudSDKInstaller.exe


