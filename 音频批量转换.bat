@echo off
if "%~1" == "" (
for /f "delims=" %%i in ('dir /s /b *.wav') do (
echo "%%i"
"cmd.exe" "/c" "%~0" "%%i"
)
) else (
ffmpeg -i "%~1" -acodec aac -aq 10 -ac 1 -y "%~dpn1.aac"
del /f /q "%~1"
cls
)