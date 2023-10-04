@echo off
setlocal

REM Check if a single argument (file path) is provided
if "%~1"=="" (
  echo Usage: update-key-permission.bat "<file_path>"
  exit /b 1
)

REM Extract the provided file path (including file name)
set "file_path=%~1"

echo File Path: %file_path%

icacls.exe %file_path% /reset
icacls.exe %file_path% /grant:r "$($env:username):(r)"
icacls.exe %file_path% /inheritance:r



REM Your processing logic goes here...

endlocal
