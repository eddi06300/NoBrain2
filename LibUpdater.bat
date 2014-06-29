@echo off
REM The title of the CMD window
title Bot of legends LibUpdater v1.2 by Herkules101 - botoflegends.com
REM the color of the text
color e
echo LibUpdater : The automatic library updater
echo.
echo This tool will automatically download and install BoL libraries with ease.
echo ______________________________________________________________________________
echo.
echo -- Libraries available for installation --
echo.
REM The current libraries the program will download
echo [Button3D.lua]
echo [ButtonTest.lua]
echo [Collision.lua]
echo [comboLib.lua]
echo [DrawDamageLib.lua]
echo [FastCollision.lua]
echo [ImAimingProdictTest.lua]
echo [iSAC.lua]
echo [ItemRecipes.lua]
echo [JungleLib.lua]
echo [LineSkillShotPosition.lua]
echo [SourceLib.lua]
echo [VPrediction.lua]
echo [DataManager.lua]
echo [GetMasteries.lua]
echo [Prodiction.lua]
echo [AutoBot.lua]
echo [CustomPermaShow.lua]
echo [AoESkillshotPosition.lua]

echo.
echo.
pause
cls
:install
REM Ask user whether they would like to Download libraries Y = goto download N = goto exit
Set /P _install= Download/update the current libraries available? (Y/N) :
If /I "%_install%"=="Y" goto download
If /I "%_install%"=="N" goto exit
) Else (
REM If the user doesn't enter Y or N (Case insensitive) this message will be displayed and the user asked to answer again.
echo Invalid argument - this program is case insensitive.
ping 123.45.67.89 -n 1 -w 1800 > nul
cls
goto install

:exit
REM Exit the program
cls
echo Exiting . . .
ping 123.45.67.89 -n 1 -w 2000 > nul
exit

:download
REM Start the download process
cls
cd Tools
REM Make temporary directory to store libraries in
mkdir temp
copy wget.exe temp
cls
echo Downloading and installing libraries . . . please stand by
cd temp
REM GitHub/BitBucket URL's // Will always download the latest version that the developer uploads.
wget --no-check-certificate -q https://bitbucket.org/Klokje/public-klokjes-bol-scripts/raw/master/Test/Prodiction/Prodiction.lua
wget --no-check-certificate -q https://raw.githubusercontent.com/BoL-Apple/BoL/master/Common/DataManager.lua
wget --no-check-certificate -q https://raw.githubusercontent.com/honda7/BoL/master/Common/VPrediction.lua
wget --no-check-certificate -q https://raw.githubusercontent.com/TheRealSource/public/master/common/SourceLib.lua
wget --no-check-certificate -q https://raw.githubusercontent.com/Gharakest/bol/master/Common/Button3D.lua
wget --no-check-certificate -q https://bitbucket.org/Klokje/public-klokjes-bol-scripts/raw/b891699e739f77f77fd428e74dec00b2a692fdef/Common/Collision.lua
wget --no-check-certificate -q https://raw.githubusercontent.com/kevvv/Scripts/master/ButtonTest.lua
wget --no-check-certificate -q https://bitbucket.org/Hellsing/botoflegends/raw/master/lib/JungleLib.lua
wget --no-check-certificate -q https://bitbucket.org/boboben1/bol-scripts/raw/7dae5a6294b9db14b5430b72d9b5c2c6eb8758a1/Misc/FastCollision.lua
wget --no-check-certificate -q https://bitbucket.org/dienofail/bol/raw/ba645d935565b7a8f7a730051c03eead472b118d/ImAimingProdictTest.lua
wget --no-check-certificate -q https://raw.githubusercontent.com/BoL-Apple/BoL/master/Common/iSAC.lua
REM Pastebin Links // Will only download the pastebin links as I add them, user may not always recieve the latest version of the library untill added.
wget --no-check-certificate -q http://pastebin.com/raw.php?i=DULJdXp5
ren "raw.php?i=DULJdXp5" "CustomPermaShow.lua"
wget --no-check-certificate -q http://pastebin.com/raw.php?i=8EPME629
ren "raw.php?i=8EPME629" "AoESkillshotPosition.lua"
wget --no-check-certificate -q http://pastebin.com/raw.php?i=gTLSGSG4
ren "raw.php?i=gTLSGSG4" "AutoBot.lua"
wget --no-check-certificate -q http://pastebin.com/raw.php?i=XgH6arYS
ren "raw.php?i=XgH6arYS" "GetMasteries.lua"
wget --no-check-certificate -q http://pastebin.com/raw.php?i=hTM4bVC6
ren "raw.php?i=hTM4bVC6" "ItemRecipes.lua"
wget --no-check-certificate -q http://pastebin.com/raw.php?i=8EPME629
ren "raw.php?i=8EPME629" "LineSkillShotPosition.lua"
wget --no-check-certificate -q http://pastebin.com/raw.php?i=UfZ0Efax
ren "raw.php?i=UfZ0Efax" "DrawDamageLib.lua"
wget --no-check-certificate -q http://pastebin.com/raw.php?i=jbNx7iBA
ren "raw.php?i=jbNx7iBA" "comboLib.lua"
REM Move all of the downloaded libraries into the Scripts\Common\ folder.
xcopy "*.lua" "../../Scripts/Common" /e /y /s /i
cd..
REM Remove the temporary directory which holds the libraries.
rmdir temp /q /s
cd..
cls


REM If VPrediction.lua in Scripts\Common doesn't exist goto error
if not exist Scripts\Common\VPrediction.lua goto error
REM If VPrediction.lua exists in Scripts\Common goto success
if exist Scripts\Common\VPrediction.lua goto success

:success
REM The script successfully found VPrediction.lua leading to this message being displayed.
echo Libraries have succesfully been installed. 
echo.
echo. ~ Exiting in 5 ~
ping 123.45.67.89 -n 1 -w 5000 > nul
exit

:error
REM The script couldn't find VPrediction.lua leading to this message being displayed.
echo An error has occured during the download and installation process.
echo.
echo Please ensure that the "Tools" folder is present within your BoL installation
echo If errors persist try and disable any anti-virus that may be installed.
echo The program will now exit . . .
ping 123.45.67.89 -n 1 -w 10000 > nul
