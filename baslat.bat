@echo off
setlocal

set "REPO_URL=https://github.com/hakan57600/dijital-is-sistemi.git"
set "SCRIPT_DIR=%~dp0"
if exist "%SCRIPT_DIR%\.git" (
    set "INSTALL_DIR=%SCRIPT_DIR%"
) else (
    set "INSTALL_DIR=%USERPROFILE%\dijital-is-sistemi"
)

where git >nul 2>&1
if errorlevel 1 (
    echo Git bulunamadi. Once Git for Windows kurup tekrar deneyin.
    pause
    exit /b 1
)

if exist "%INSTALL_DIR%\.git" goto update_repo

if exist "%INSTALL_DIR%" (
    echo Hedef klasor zaten var ama Git deposu degil:
    echo "%INSTALL_DIR%"
    echo Mevcut dosyalari korumak icin otomatik islem durduruldu.
    pause
    exit /b 1
)

echo Sistem GitHub'dan indiriliyor...
git clone "%REPO_URL%" "%INSTALL_DIR%"
if errorlevel 1 (
    echo Indirme basarisiz oldu. GitHub girisini ve ag baglantisini kontrol edin.
    pause
    exit /b 1
)
goto launch_cli

:update_repo
for /f "delims=" %%R in ('git -C "%INSTALL_DIR%" remote get-url origin') do set "CURRENT_REMOTE=%%R"
if /I not "%CURRENT_REMOTE%"=="%REPO_URL%" (
    echo Bu klasor beklenen GitHub deposuna bagli degil.
    echo Mevcut dosyalari korumak icin otomatik islem durduruldu.
    pause
    exit /b 1
)

for /f "delims=" %%B in ('git -C "%INSTALL_DIR%" branch --show-current') do set "CURRENT_BRANCH=%%B"
if /I not "%CURRENT_BRANCH%"=="main" (
    echo Mevcut dal main degil. Otomatik guncelleme durduruldu.
    pause
    exit /b 1
)

echo GitHub'daki guncellemeler kontrol ediliyor...
git -C "%INSTALL_DIR%" fetch origin
if errorlevel 1 (
    echo GitHub'dan guncellemeler alinamadi.
    pause
    exit /b 1
)

set "DIRTY="
for /f "delims=" %%G in ('git -C "%INSTALL_DIR%" status --porcelain') do set "DIRTY=1"
if defined DIRTY (
    echo Yerel degisiklikler var. Bunlari ezmemek icin guncelleme durduruldu.
    echo Degisiklikleri once commit edin veya guvenli bir yere yedekleyin.
    pause
    exit /b 1
)

git -C "%INSTALL_DIR%" pull --ff-only origin main
if errorlevel 1 (
    echo Guncelleme tamamlanamadi. Depo durumunu kontrol edin.
    pause
    exit /b 1
)

:launch_cli
where copilot >nul 2>&1
if errorlevel 1 (
    echo Dijital is sistemi hazir:
    echo "%INSTALL_DIR%"
    echo Copilot CLI bu bilgisayarda bulunamadi veya PATH'e ekli degil.
    start "" explorer "%INSTALL_DIR%"
    pause
    exit /b 0
)

cd /d "%INSTALL_DIR%"
echo Sistem hazir. Copilot CLI bu klasorde baslatiliyor...
copilot
