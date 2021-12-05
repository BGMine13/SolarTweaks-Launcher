@echo off
cls


:mainMenu
echo What do you want to launch/do?
echo.
echo 1: Launch LCL menu
echo 2: Launch Solar Tweaks
echo 3: Launch normal Lunar
SET /P M=Type number then press ENTER:
IF %M%==1 GOTO LCLMenu
IF %M%==2 GOTO ST
IF %M%==3 GOTO CLASSICLUNAR


:LCLMenu
echo What do you want to launch/do?
echo.
echo 1: Launch 1.7
echo 2: Launch 1.8
echo 3: Launch 1.12
echo 4: Launch 1.16
echo 5: Launch 1.17
SET /P M=Type number then press ENTER:
IF %M%==1 GOTO LCL1.7
IF %M%==2 GOTO LCL1.8
IF %M%==3 GOTO LCL1.12
IF %M%==4 GOTO LCL1.16
IF %M%==5 GOTO LCL1.17


:LCL1.7
LCL.exe 1.7
goto end

:LCL1.8
LCL.exe 1.8
goto end

:LCL1.12
LCL.exe 1.12
goto end

:LCL1.16
LCL.exe 1.16
goto end

:LCL1.17
LCL.exe 1.17
goto end


:ST
IF EXIST "%userprofile%\AppData\Local\Programs\Solar Tweaks\Solar Tweaks.exe" (
    GOTO STAppdata
) ELSE (
    GOTO STProgramFiles
)

:STAppdata
"%userprofile%\AppData\Local\Programs\Solar Tweaks\Solar Tweaks.exe"
goto end

:STProgramFiles
"C:\Program Files\Solar Tweaks\Solar Tweaks.exe"
goto end

:CLASSICLUNAR
"%userprofile%\AppData\Local\Programs\lunarclient\Lunar Client.exe"
goto end

:end
exit
exit
exit
