@echo off
setlocal EnableExtensions
chcp 65001 >nul
cd /d "%~dp0"
echo ==========================================
echo   CRUD CAAI - MISMA BASE DE CAAIS WEB
echo ==========================================

set "CAAIS_ENV_FILE=%USERPROFILE%\Desktop\caais web\.env"
if not exist "%CAAIS_ENV_FILE%" (
    echo ERROR: No se encontro la configuracion de CAAIS Web:
    echo        %CAAIS_ENV_FILE%
    pause
    exit /b 1
)

set "JDK_CAAIS="
for /d %%D in ("C:\Program Files\Eclipse Adoptium\jdk-*") do set "JDK_CAAIS=%%~fD"
if defined JDK_CAAIS set "JAVA_HOME=%JDK_CAAIS%"
if not exist "%JAVA_HOME%\bin\javac.exe" (
    if exist "C:\Program Files\Android\Android Studio\jbr\bin\javac.exe" set "JAVA_HOME=C:\Program Files\Android\Android Studio\jbr"
)
if not exist "%JAVA_HOME%\bin\javac.exe" (
    echo ERROR: Se necesita JDK 21 o superior.
    pause
    exit /b 1
)
set "PATH=%JAVA_HOME%\bin;%PATH%"

where mvn.cmd >nul 2>&1
if errorlevel 1 (
    echo ERROR: Maven no esta disponible en PATH.
    pause
    exit /b 1
)

call mvn.cmd clean compile exec:java
set "CODIGO=%errorlevel%"
if not "%CODIGO%"=="0" echo El CRUD termino con un error.
pause
exit /b %CODIGO%
