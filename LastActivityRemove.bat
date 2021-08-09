@echo off
Title LastActivityRemover
net session >nul 2>&1
    if %errorLevel% == 0 (
        goto admin
    ) else (
        goto NOADMIN
    )
:admin
echo.
@echo off  & setlocal
color b
echo.
goto Ask

:NOADMIN
echo.
@echo off  & setlocal
color 4
echo Program was launched without admin permissions! This Program needs admin permissions to complete all tasks
echo.
goto Ask
:Ask
echo I am not responsible for any damage dealt to your computer. With that being said, would you like to continue?
set INPUT=
set /P INPUT=Please type in "Yes" or "No" and press Enter: %=%
If /I "%INPUT%"=="Yes" goto yes 
If /I "%INPUT%"=="yes" goto yes 
If /I "%INPUT%"=="No" goto no
If /I "%INPUT%"=="no" goto no
echo Wrong entry!
echo Restart your program!
timeout /t 10
taskkill /im cmd.exe
:yes
echo Program starts!
@echo off
color 4
cls
echo Now your cache will be cleaned.
timeout /t 2
cls
cd %systemroot%\Temp
del /f /s /q *.*
del /f /s /q %systemroot%\Temp\*.*
rmdir "%systemroot%\Temp" /s /q
if not exist "%systemroot%\Temp" mkdir "%systemroot%\Temp"
cd %systemroot%\CbsTemp
del /f /s /q *.*
del /f /s /q %systemroot%\CbsTemp\*.*
rmdir "%systemroot%\CbsTemp" /s /q
if not exist "%systemroot%\CbsTemp" mkdir "%systemroot%\CbsTemp"
cd %systemroot%\Prefetch
del /f /s /q *.*
del /f /s /q %systemroot%\Prefetch\*.*
rmdir "%systemroot%\Prefetch" /s /q
if not exist "%systemroot%\Prefetch" mkdir "%systemroot%\Prefetch"
cd %temp%
del /f /s /q *.*
del /f /s /q %temp%\*.*
rmdir "%temp%" /s /q
if not exist "%temp%" mkdir "%temp%"
cd %SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items
del /f /s /q *.*
del /f /s /q %SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items\*.*
rmdir "%SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items" /s /q
if not exist "%SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items" mkdir "%SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items"
cd %systemroot%\History
del /f /s /q *.*
del /f /s /q %systemroot%\History\*.*
rmdir "%systemroot%\History" /s /q
if not exist "%systemroot%\History" mkdir "%systemroot%\History"
cd %systemroot%\Tmp
del /f /s /q *.*
del /f /s /q %systemroot%\Tmp\*.*
rmdir "%systemroot%\Tmp" /s /q
if not exist "%systemroot%\Tmp" mkdir "%systemroot%\Tmp"
cd %systemroot%\Tempor~1
del /f /s /q *.*
del /f /s /q %systemroot%\Tempor~1\*.*
rmdir "%systemroot%\Tempor~1" /s /q
if not exist "%systemroot%\Tempor~1" mkdir "%systemroot%\Tempor~1"
cd %systemroot%\Cookies
del /f /s /q *.*
del /f /s /q %systemroot%\Cookies\*.*
rmdir "%systemroot%\Cookies" /s /q
if not exist "%systemroot%\Cookies" mkdir "%systemroot%\Cookies"
cd %systemroot%\Recent
del /f /s /q *.*
del /f /s /q %systemroot%\Recent\*.*
rmdir "%systemroot%\Recent" /s /q
if not exist "%systemroot%\Recent" mkdir "%systemroot%\Recent"
cd %systemroot%\spool\printers
del /f /s /q *.*
del /f /s /q %systemroot%\spool\printers\*.*
rmdir "%systemroot%\spool\printers" /s /q
if not exist "%systemroot%\spool\printers" mkdir "%systemroot%\spool\printers"
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.htm
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.dat
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.json
del /f /q %systemdrive%\Windows\*.log
del /f /q %systemdrive%\Windows\Debug\*.log
del /f /q %systemdrive%\Windows\SoftwareDistribution\*.log
del /f /q %systemdrive%\Windows\Logs\*.log
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\WebCache\*.log
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\WebCache(.old)\*.log
del /f /q %userprofile%\AppData\Local\IconCache.db
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.db
if exist %SystemDrive%\RECYCLER rmdir /s /q %SystemDrive%\RECYCLER
if exist %SystemDrive%\$Recycle.Bin rmdir /s /q %SystemDrive%\$Recycle.Bin
cls
echo Now some Registry entries will be deleted.
timeout /t 2
cls
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\MUICache" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
cls
echo Now some Prefetch and Recent Files will be deleted.
timeout /t 2
cls
@RD /S /Q "C:\Windows\Prefetch\"
@RD /S /Q "C:\Users\Default\AppData\Roaming\Microsoft\Windows\Recent\"
@RD /S /Q "C:\Users\fabia\AppData\Roaming\Microsoft\Windows\Recent\"
cls
echo Now some Eventlog entries will be deleted, you won't need this either
timeout /t 2
cls
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
:do_clear
echo clearing %1
wevtutil.exe cl %1
cls
echo Everything is cleaned.
pause
exit
:noAdmin
cls
echo Everything is cleaned2.
pause
exit
