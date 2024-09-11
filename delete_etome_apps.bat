@echo off

:: Check if adb is installed and accessible
adb version >nul 2>&1
IF ERRORLEVEL 1 (
    echo ADB is not installed or not in PATH.
    pause
    exit /b
)

:: Check if any device is connected
adb devices > devices.txt
findstr /v "List of devices attached" devices.txt | findstr "device" >nul 2>&1
IF ERRORLEVEL 1 (
    echo No device detected. Please connect a device via ADB.
    del devices.txt
    pause
    exit /b
)

:: Clean up the temporary file
del devices.txt

:: Get the list of all installed packages that contain "etome" or "leywin"
for /f "tokens=2 delims=:" %%p in ('adb shell pm list packages ^| findstr /i "etome leywin"') do (
    echo Trying to uninstall package: %%p

    :: Attempt regular uninstall
    adb uninstall %%p
    IF ERRORLEVEL 1 (
        echo Failed to uninstall %%p, trying as root...
        adb shell su -c "pm uninstall --user 0 %%p"
    )
)

echo ==============================================
echo All matching packages have been processed.
echo ==============================================
pause
