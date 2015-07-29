@echo off
color b
echo //Generated ModPE script > modpe_gen.js
echo The blank file has been created, hit a key to continue.
pause >null
cls
echo Enter the mod name:
set /p name=
cls
echo Enter the mod author:
set /p author=
echo var modName = "%name%"; >> modpe_gen.js
echo var author = "%author%"; >> modpe_gen.js
echo.
echo These have been saved to the file. Tap a key to continue
pause >null
cls
echo Do you want to have a timer? (1/0)
set /p timer=
if %timer% == 1 goto timer
if %timer% == 0 exit()
pause

:timer
cls
echo when the timer reaches ? ticks, do something.
set /p ticks=
cls
echo var timer = 0; >> modpe_gen.js
echo. >> modpe_gen.js
echo function modTick() { >> modpe_gen.js
echo     timer++; >> modpe_gen.js
echo     if(timer == %ticks%){ >> modpe_gen.js
echo         // >> modpe_gen.js
echo     } >> modpe_gen.js
echo } >> modpe_gen.js
pause
