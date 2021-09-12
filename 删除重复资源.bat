@echo off
for /f "delims=" %%i in ('dir /s /b /a:d') do (
cd /d %%i
del /f /q "*#*"
cd /d "%~dp0"
)