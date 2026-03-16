@echo off
echo ==========================================
echo  FitCoach AI — Local Server
echo ==========================================
echo.

REM Try Python 3 first
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo Starting server with Python...
    echo.
    echo Your app URL: http://localhost:8080/FitCoach_AI.html
    echo.
    echo To open on iPhone:
    echo  1. Connect iPhone to the SAME WiFi network as this PC
    echo  2. Find your PC's IP address (run ipconfig in another window)
    echo  3. Open Safari on iPhone and go to:
    echo     http://YOUR-PC-IP:8080/FitCoach_AI.html
    echo  4. Tap the Share button (box with arrow)
    echo  5. Tap "Add to Home Screen"
    echo  6. Tap "Add" — done! FitCoach AI is now on your home screen
    echo.
    echo Press Ctrl+C to stop the server.
    echo.
    python -m http.server 8080
    goto end
)

REM Try Python 2
python2 --version >nul 2>&1
if %errorlevel% == 0 (
    echo Starting server with Python 2...
    python2 -m SimpleHTTPServer 8080
    goto end
)

REM Try Node.js npx
npx --version >nul 2>&1
if %errorlevel% == 0 (
    echo Starting server with Node.js (npx serve)...
    echo Your app URL: http://localhost:8080/FitCoach_AI.html
    npx serve -p 8080 .
    goto end
)

echo ERROR: Python or Node.js not found.
echo Please install Python from https://www.python.org
echo or Node.js from https://nodejs.org
echo.
echo Alternative: Use VS Code and install the "Live Server" extension,
echo then right-click FitCoach_AI.html and choose "Open with Live Server"
echo.
pause
:end
