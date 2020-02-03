@echo off
color A
:A
CLS
echo *****Marco BonBonTools*****
echo -Menu
echo 1.Connect...
echo 2.Disable...
echo 3.Uninstall...
echo 4.Install...
echo 5.Scripts (EasyInstall)...
echo 6.Exit
echo 0.about
SET PRGM=6
set /P PRGM="#Type&Press Enter: "
IF /I "%PRGM%" EQU "1" (
    GOTO CONNECT
)
IF /I "%PRGM%" EQU "2" (
    GOTO DISABLE
)
IF /I "%PRGM%" EQU "3" (
    GOTO UNINSTALL
)
IF /I "%PRGM%" EQU "4" (
    GOTO INSTALL
)
IF /I "%PRGM%" EQU "5" (
    GOTO SCRIPTS
)
IF /I "%PRGM%" EQU "6" (
    GOTO TERM
)
IF /I "%PRGM%" EQU "0" (
    GOTO ABOUT
)
GOTO A


:CONNECT
CLS
echo *****Marco BonBonTools*****
echo -Connect
adb kill-server
adb devices
echo Done. If not connected, try again.
pause
goto A


:DISABLE
CLS
echo *****Marco BonBonTools*****
echo -Disable
echo 1.Disable Bloatwares
echo 2.Disable Backdoors/Tasks/System update
echo 3.Back
SET PRGM=6
set /P PRGM="#Type&Press Enter: "
IF /I "%PRGM%" EQU "1" (
    GOTO DEBLOAT
)
IF /I "%PRGM%" EQU "2" (
    GOTO CLTASKS
)
IF /I "%PRGM%" EQU "3" (
    GOTO A
)
:DEBLOAT

goto DISABLE

:CLTASKS
echo Disable tasks...
adb shell pm disable-user com.bird.storagecleanup
adb shell pm disable-user com.adups.fota.sysoper
adb shell pm disable-user com.adups.fota
echo Done.
pause
goto DEBLOAT

:DEBLOAT
adb uninstall com.chinatelecom.bestpayclient
adb shell pm disable-user com.bird.storagecleanup
goto DISABLE

:UNINSTALL
CLS
echo *****Marco BonBonTools*****
echo -Uninstall
echo loading...
adb shell pm list packages
SET PKG=
set /P PKG="#Type Package name&Press Enter: "
adb uninstall %PKG%
echo Done.
pause
goto A


:INSTALL
CLS
echo *****Marco BonBonTools*****
echo -Install
echo loading...
SET PKG=
set /P PKG="#Drag package here&Press Enter: "
adb install %PKG%
goto A


:SCRIPTS
CLS
echo *****Marco BonBonTools*****
echo -Scripts
echo Loading script...
OneKey.bat
goto A


:About
CLS
echo *****Marco BonBonTools*****
echo -About
echo BonBonTools -AndroidV1
echo Tested Devices:
echo Philips 4G series
echo Kingsun 4G series
echo BIHEE 4G series
echo and so on...
echo -
echo -
echo Author : Marco
echo RayLab_Ray through the space
echo For tools for other devices, visit MarcoXiao17@coolapk.com

pause
goto A
:TERM



