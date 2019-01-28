@echo off
if exist "%Windir%\Sysnative\reg.exe" (set "SysPath=%Windir%\Sysnative") else (set "SysPath=%Windir%\System32")
set "Path=%SysPath%;%Windir%;%SysPath%\Wbem"
for /f "tokens=6 delims=[]. " %%G in ('ver') do set winbuild=%%G
if %winbuild% NEQ 9600 (
  if not "%1"=="" goto :eof
  echo ==== ERROR ====
  echo This package is only for Windows 8.1
  echo Press any Key to Exit.
  pause >nul
  goto :eof
)
set arch=x64
if /i "%PROCESSOR_ARCHITECTURE%"=="x86" (
if "%PROCESSOR_ARCHITEW6432%"=="" set arch=x86
)
cd /d "%~dp0"
set "source=%arch%"
echo.
%windir%\system32\DISM.exe /Online /NoRestart /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:"%source%"
echo.
echo ============================================================
echo.
if not "%1"=="" goto :eof
echo Press any Key to Exit.
pause >nul
goto :eof