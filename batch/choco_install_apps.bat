:: Install chocolatey and add it to the PATH
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Essentials
choco install 7zip -fy
choco install bleachbit -fy
choco install geekuninstaller -fy
choco install malwarebytes -fy

:: Media
choco install mpv -fy
choco install imageglass -fy
choco install foobar2000 -fy
choco install obs-studio.install -fy
choco install handbrake.install -fy

:: Utilities
choco install powertoys -fy
choco install teracopy -fy
choco install everything -fy
choco install greenshot -fy
choco install wiztree -fy
choco install qbittorrent -fy
choco install djv -fy

:: Dev Tools
choco install microsoft-windows-terminal -fy
choco install powershell-core -fy
choco install fzf -fy
choco install nodejs.install -fy
choco install visualstudiocode -fy
choco install gitkraken -fy
choco install postman -fy

:: Social 
choco install discord -fy
choco install zoom -fy

:: Misc
choco install wireshark -fy
choco install fritzing -fy
