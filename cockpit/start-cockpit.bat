@echo off
chcp 65001 >nul
title Antigravity Cockpit 2D - Foundry Command Center
color 0B

echo =====================================================================
echo       ANTIGRAVITY FOUNDRY - COCKPIT 2D COMMAND CENTER
echo =====================================================================
echo.

cd /d "%~dp0"

:: 1. Verifica presenca do Node.js
where node >nul 2>nul
if %errorlevel% neq 0 (
    if exist "%ProgramFiles%\nodejs\node.exe" (
        set "PATH=%PATH%;%ProgramFiles%\nodejs"
    ) else if exist "%ProgramFiles(x86)%\nodejs\node.exe" (
        set "PATH=%PATH%;%ProgramFiles(x86)%\nodejs"
    ) else (
        echo [ERRO] Node.js nao encontrado no sistema.
        echo Instale o Node.js v18+ a partir de https://nodejs.org/
        pause
        exit /b 1
    )
)

:: 2. Verifica se node_modules existe, senao instala dependencias
if not exist "node_modules\" (
    echo [INFO] Diretório node_modules ausente. Instalando dependências locais...
    call npm install
    if %errorlevel% neq 0 (
        echo [ERRO] Falha ao executar npm install.
        pause
        exit /b 1
    )
    echo [OK] Dependências instaladas com sucesso.
    echo.
)

:: 3. Inicia o servidor Node.js
echo [INFO] Inicializando servidor Express na porta 4444...
start "Antigravity Cockpit Server [4444]" cmd /k "title Antigravity Cockpit Server && cd /d "%~dp0" && node server.js"

:: 4. Aguarda inicializacao do servidor
ping 127.0.0.1 -n 3 >nul

:: 5. Abre a interface no navegador padrao
echo [INFO] Abrindo o Cockpit 2D no navegador padrao...
start "" "http://localhost:4444"

echo.
echo =====================================================================
echo  [OK] COCKPIT 2D ATIVO EM: http://localhost:4444
echo.
echo  Logs em tempo real na janela dedicada do servidor.
echo  Para encerrar o servidor, feche a janela do console correspondente.
echo =====================================================================
timeout /t 5 >nul
exit /b 0
