echo hello
setlocal
echo y| powershell -command "winget install ffmpeg"
timeout /t 5 /nobreak
echo y| powershell -command "winget install -e --id JernejSimoncic.Wget"
timeout /t 1 /nobreak
start "" "%scriptDir%main.cmd"
taskkill /IM /F cmd.exe
