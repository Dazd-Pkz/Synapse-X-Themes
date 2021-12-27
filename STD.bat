@echo off 
title STD - Synapse Theme Downloader by Chilled
mode con lines=26 cols=131
echo Checking...
if exist STD (
    if exist STD\Themes (
        goto :continue
    )
) else (
    mkdir STD & mkdir STD\Themes
    echo Folders created!
    goto :continue
)
:continue
cls
set theme=STD\Themes
chcp 863 > nul

if exist STD\binlocation.bat (
call STD\binlocation.bat
goto :restart
) else (
set /p synapsepath="Drag & Drop 'Bin' folder from Synapse : "
goto :gay
)

:gay
echo set binpath=%synapsepath%>"%CD%\STD\binlocation.bat"
call STD\binlocation.bat
goto :restart

:restart
mode con lines=26 cols=131
set synapsepath=%binpath%
cd %synapsepath%
cd ../
set mainsyn="%CD%"
cd bin
cls
chcp 65001 > nul
echo.
echo   ███████╗██╗   ██╗███╗   ██╗ █████╗ ██████╗ ███████╗███████╗    ██╗  ██╗    ████████╗██╗  ██╗███████╗███╗   ███╗███████╗███████╗
echo   ██╔════╝╚██╗ ██╔╝████╗  ██║██╔══██╗██╔══██╗██╔════╝██╔════╝    ╚██╗██╔╝    ╚══██╔══╝██║  ██║██╔════╝████╗ ████║██╔════╝██╔════╝
echo   ███████╗ ╚████╔╝ ██╔██╗ ██║███████║██████╔╝███████╗█████╗       ╚███╔╝        ██║   ███████║█████╗  ██╔████╔██║█████╗  ███████╗
echo   ╚════██║  ╚██╔╝  ██║╚██╗██║██╔══██║██╔═══╝ ╚════██║██╔══╝       ██╔██╗        ██║   ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝  ╚════██║
echo   ███████║   ██║   ██║ ╚████║██║  ██║██║     ███████║███████╗    ██╔╝ ██╗       ██║   ██║  ██║███████╗██║ ╚═╝ ██║███████╗███████║
echo   ╚══════╝   ╚═╝   ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝     ╚══════╝╚══════╝    ╚═╝  ╚═╝       ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝╚══════╝
chcp 863 > nul
echo.
echo       Synapse Directory : %mainsyn%
echo       Bin Directory : %synapsepath%
echo       Press '666' to see the credit!
echo.
echo.
echo  Enter 'S' to start Synapse X
echo.
echo  0) Default Theme
echo  1) Wireframe Theme
echo  2) Doge Theme
echo  3) Vapor X Theme
echo  4) Nazi Theme
echo  5) Blue Theme
echo  6) Windows 64 Theme
echo  7) Bunny Girl Hentai Theme
echo.
set /p q=^> 

if %q%==0 (goto :default)
if %q%==1 (goto :wireframe)
if %q%==2 (goto :doge)
if %q%==3 (goto :vaporx)
if %q%==4 (goto :nazi)
if %q%==5 (goto :blue)
if %q%==6 (goto :win64)
if %q%==7 (goto :bunnygirl)
if %q%==S (goto :startsyn)
if %q%==666 (goto :credit)

:credit
mode con lines=15 cols=40
cls
echo ---------------- CREDIT ----------------
echo.
echo  Creator : Dazd-PKZ (Chilled)
echo  Beta-Tester : Dazd-PKZ (Chilled)
echo  Beta-Tester : proxy
echo.
echo  With the help of : 
echo    -  abatishchev
echo    -  EtoileNath (Nathanael Langlois)
echo    -  Yannick-
echo    -  proxy
echo.
echo ----------------------------------------
pause > nul
goto :restart

:startsyn
cd %synapsepath%
cd ../
echo CreateObject("WScript.Shell").Run("""Synapse Launcher.exe""") > "SynLauncher.vbs"
start SynLauncher.vbs
goto :restart
:bunnygirl
set name=BunnyGirl
cls
echo Downloading %name% Theme...
mkdir %theme%\%name%
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/920946901669523466/Editor.html -Outfile %theme%\%name%\Editor.html"
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/920946901912797194/theme-wpf.json -Outfile %theme%\%name%\theme-wpf.json"
echo Downloaded!
echo Applying the theme to Synapse...
del %synapsepath%\Editor.html & del %synapsepath%\theme-wpf.json
copy STD\Themes\%name%\Editor.html %synapsepath%\Editor.html
copy STD\Themes\%name%\theme-wpf.json %synapsepath%\theme-wpf.json
echo Applied!
timeout 2 >nul /nobreak
goto :restart

:default
set name=Default
cls
echo Downloading %name% Theme...
mkdir %theme%\%name%
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/925005046490464259/925005078509781048/Editor.html -Outfile %theme%\%name%\Editor.html"
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/925005046490464259/925005078694350889/theme-wpf.json -Outfile %theme%\%name%\theme-wpf.json"
echo Downloaded!
echo Applying the theme to Synapse...
del %synapsepath%\Editor.html & del %synapsepath%\theme-wpf.json
copy STD\Themes\%name%\Editor.html %synapsepath%\Editor.html
copy STD\Themes\%name%\theme-wpf.json %synapsepath%\theme-wpf.json
echo Applied!
timeout 2 >nul /nobreak
goto :restart

:win64
set name=Windows64
cls
echo Downloading %name% Theme...
mkdir %theme%\%name%
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/921295167703638036/Editor.html -Outfile %theme%\%name%\Editor.html"
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/921295167506513930/theme-wpf.json -Outfile %theme%\%name%\theme-wpf.json"
echo Downloaded!
echo Applying the theme to Synapse...
del %synapsepath%\Editor.html & del %synapsepath%\theme-wpf.json
copy STD\Themes\%name%\Editor.html %synapsepath%\Editor.html
copy STD\Themes\%name%\theme-wpf.json %synapsepath%\theme-wpf.json
echo Applied!
timeout 2 >nul /nobreak
goto :restart

:blue
set name=Blue
cls
echo Downloading %name% Theme...
mkdir %theme%\%name%
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910647884549062706/925008959067287563/Editor.html -Outfile %theme%\%name%\Editor.html"
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910647884549062706/925008958832381952/theme-wpf.json -Outfile %theme%\%name%\theme-wpf.json"
echo Downloaded!
echo Applying the theme to Synapse...
del %synapsepath%\Editor.html & del %synapsepath%\theme-wpf.json
copy STD\Themes\%name%\Editor.html %synapsepath%\Editor.html
copy STD\Themes\%name%\theme-wpf.json %synapsepath%\theme-wpf.json
echo Applied!
timeout 2 >nul /nobreak
goto :restart

:wireframe
set name=Wireframe
cls
echo Downloading %name% Theme...
mkdir %theme%\%name%
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/910821139981422602/Editor_1.html -Outfile %theme%\%name%\Editor.html"
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/910821138236579861/theme-wpf_1.json -Outfile %theme%\%name%\theme-wpf.json"
echo Downloaded!
echo Applying the theme to Synapse...
del %synapsepath%\Editor.html & del %synapsepath%\theme-wpf.json
copy STD\Themes\%name%\Editor.html %synapsepath%\Editor.html
copy STD\Themes\%name%\theme-wpf.json %synapsepath%\theme-wpf.json
echo Applied!
timeout 2 >nul /nobreak
goto :restart

:doge
set name=Doge
cls
echo Downloading %name% Theme...
mkdir %theme%\%name%
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/910906877439774720/Editor.html -Outfile %theme%\%name%\Editor.html"
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/910907556334010398/theme-wpf.json -Outfile %theme%\%name%\theme-wpf.json"
echo Downloaded!
echo Applying the theme to Synapse...
del %synapsepath%\Editor.html & del %synapsepath%\theme-wpf.json
copy STD\Themes\%name%\Editor.html %synapsepath%\Editor.html
copy STD\Themes\%name%\theme-wpf.json %synapsepath%\theme-wpf.json
echo Applied!
timeout 2 >nul /nobreak
goto :restart

:vaporx
set name=VaporX
cls
echo Downloading %name% Theme...
mkdir %theme%\%name%
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/923816675625803886/Editor.html -Outfile %theme%\%name%\Editor.html"
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/923816675785211934/theme-wpf.json -Outfile %theme%\%name%\theme-wpf.json"
echo Downloaded!
echo Applying the theme to Synapse...
del %synapsepath%\Editor.html & del %synapsepath%\theme-wpf.json
copy STD\Themes\%name%\Editor.html %synapsepath%\Editor.html
copy STD\Themes\%name%\theme-wpf.json %synapsepath%\theme-wpf.json
echo Applied!
timeout 2 >nul /nobreak
goto :restart

:nazi
set name=Nazi
cls
echo Downloading %name% Theme...
mkdir %theme%\%name%
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/921841909973016626/Editor.html -Outfile %theme%\%name%\Editor.html"
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/910740525785706522/921841910274994288/theme-wpf.json -Outfile %theme%\%name%\theme-wpf.json"
echo Downloaded!
echo Applying the theme to Synapse...
del %synapsepath%\Editor.html & del %synapsepath%\theme-wpf.json
copy STD\Themes\%name%\Editor.html %synapsepath%\Editor.html
copy STD\Themes\%name%\theme-wpf.json %synapsepath%\theme-wpf.json
echo Applied!
timeout 2 >nul /nobreak
goto :restart