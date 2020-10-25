ECHO You have configured Basic-setup!
ECHO Preparing Chocolatey

choco feature enable -n allowGlobalConfirmation

ECHO Installing apps for basic setup!

choco install googlechrome
choco install 7zip.install
choco install slack
choco install google-drive-file-stream
choco install office365business
choco install immunet

choco feature disable -n allowGlobalConfirmation

ECHO Finished! 