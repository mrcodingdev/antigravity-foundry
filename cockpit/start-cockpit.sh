#!/usr/bin/env bash
set -e

# =====================================================================
#       ANTIGRAVITY FOUNDRY - COCKPIT 2D COMMAND CENTER (UNIX)
# =====================================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "====================================================================="
echo "      ANTIGRAVITY FOUNDRY - COCKPIT 2D COMMAND CENTER"
echo "====================================================================="
echo ""

# 1. Verifica presenca do Node.js
if ! command -v node >/dev/null 2>&1; then
    echo "[ERRO] Node.js não encontrado no sistema."
    echo "Por favor instale o Node.js v18+ (https://nodejs.org/) para executar o Cockpit."
    exit 1
fi

# 2. Verifica e instala dependencias caso node_modules nao exista
if [ ! -d "node_modules" ]; then
    echo "[INFO] Diretório node_modules ausente. Executando npm install..."
    npm install
    echo "[OK] Dependências instaladas com sucesso."
    echo ""
fi

# 3. Inicia o servidor Express em background
echo "[INFO] Inicializando servidor Express na porta 4444..."
node server.js &
SERVER_PID=$!

# Garante encerramento do processo do servidor ao sair
trap "echo '[INFO] Encerrando servidor Cockpit...'; kill $SERVER_PID 2>/dev/null || true; exit" INT TERM EXIT

sleep 2

# 4. Abre a interface no navegador padrao
echo "[INFO] Abrindo o Cockpit 2D no navegador padrão..."
if command -v xdg-open >/dev/null 2>&1; then
    xdg-open "http://localhost:4444" >/dev/null 2>&1 &
elif command -v open >/dev/null 2>&1; then
    open "http://localhost:4444" >/dev/null 2>&1 &
else
    echo "[INFO] Abra manualmente no seu navegador: http://localhost:4444"
fi

echo ""
echo "====================================================================="
echo " [OK] COCKPIT 2D ATIVO EM: http://localhost:4444"
echo " Pressione Ctrl+C neste terminal para encerrar o Cockpit."
echo "====================================================================="
echo ""

# Mantém o processo ativo aguardando o servidor
wait "$SERVER_PID"
