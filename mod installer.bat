::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkoaHUrTXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlXMbSXrZg==
::ZQ05rAF9IAHYFVzEqQIdJx8URQqRKGq2CrAOiA==
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAtGRQWPAE+1EbsQ5+n//NaqrUldXewsbI7X1rGcYOIW/kSqcI4otg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 0a
title GESTIONNAIRE DE MODS
cls

set mc=%appdata%\.minecraft\mods

if not exist "%mc%" mkdir "%mc%"

:menu
cls
echo ===============================
echo    GESTIONNAIRE DE MODS 😈
echo ===============================
echo.
echo 1 - Fabric
echo 2 - Forge
echo 3 - Quilt
echo 4 - Quitter
echo.
set /p choix=Choisis ton loader : 

if "%choix%"=="1" goto fabric
if "%choix%"=="2" goto forge
if "%choix%"=="3" goto quilt
if "%choix%"=="4" exit

:fabric
set folder=mods-fabric
goto run

:forge
set folder=mods-forge
goto run

:quilt
set folder=mods-quilt
goto run

:run
cls
if not exist "%folder%" (
    mkdir "%folder%"
    echo Le dossier %folder% vient d'etre cree 😎
    echo.
    echo Mets tes mods dedans puis relance le programme !
    pause
    exit
)

echo Copie des mods de %folder% vers .minecraft/mods...
timeout /t 1 >nul
copy "%folder%\*" "%mc%\" /y >nul

echo.
echo MODS INSTALLÉS AVEC SUCCÈS 😎🔥
pause
goto menu