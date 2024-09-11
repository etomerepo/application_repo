@echo off
SETLOCAL

:: Check if adb is installed and accessible
adb version >nul 2>&1
IF ERRORLEVEL 1 (
    echo ADB is not installed or not in PATH.
    pause
    exit /b
)

:: Loop through all APK files in the current directory
for %%f in (*.apk) do (
    echo ==============================================
    echo Currently installing: %%f

    :: Install the APK using adb
    adb install -r "%%f" >nul 2>&1

    :: Check if the installation was successful
    IF ERRORLEVEL 0 (
        echo Success: %%f installed successfully.
    ) ELSE (
        echo Failed: Could not install %%f.
    )
    echo ==============================================
    echo.
)

echo All installations completed.
pause
ENDLOCAL