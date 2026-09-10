#!/usr/bin/env bash
# ==============================================================================
# Antigravity Foundry - 1-Click Environment Setup & Pre-Commit Shield (Linux/macOS)
# ==============================================================================
set -e

# ANSI Color codes
BOLD="\033[1m"
GREEN="\033[0;32m"
CYAN="\033[0;36m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
GRAY="\033[0;90m"
RESET="\033[0m"

header() {
    echo -e "\n${CYAN}=====================================================================${RESET}"
    echo -e "${BOLD}${CYAN} $1${RESET}"
    echo -e "${CYAN}=====================================================================${RESET}"
}

success() {
    echo -e "  ${GREEN}[OK]${RESET} $1"
}

info() {
    echo -e "  ${YELLOW}[..]${RESET} $1"
}

fail() {
    echo -e "  ${RED}[FAIL]${RESET} $1"
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

clear 2>/dev/null || true
cat << 'EOF'

   ___  _  _ _____ ___ ___ ___    _____   _____ _  _ ___  ___ _   _ 
  /   \| \| |_   _|_ _/ __| _ \  /   \ \ / / __| \| |   \| _ \ \ / /
 / /_\ \ .` | | |  | | (_ |   / / /_\ \ V /| _|| .` | |) |   /\ V / 
/_/   \_\_|\_| |_| |___\___|_|_\/_/   \_|_| |___|_|\_|___/|_|_\\_/  
        F O U N D R Y   E N G I N E   -   I N S T A L L E R
EOF

header "STAGE 1: VERIFYING SYSTEM PREREQUISITES"

# 1. Verify Git
info "Checking Git installation..."
if command -v git >/dev/null 2>&1; then
    GIT_VER=$(git --version)
    success "Git detected: $GIT_VER"
else
    fail "Git is not installed. Please install Git via apt, brew, dnf or pacman."
    exit 1
fi

# 2. Verify Python 3
info "Checking Python 3 environment..."
PYTHON_BIN=""
if command -v python3 >/dev/null 2>&1; then
    PYTHON_BIN="python3"
elif command -v python >/dev/null 2>&1; then
    # Verify if it's Python 3
    if python -c 'import sys; exit(0 if sys.version_info.major >= 3 else 1)' >/dev/null 2>&1; then
        PYTHON_BIN="python"
    fi
fi

if [ -n "$PYTHON_BIN" ]; then
    PY_VER=$($PYTHON_BIN --version 2>&1)
    success "Python 3 detected: $PY_VER (using '$PYTHON_BIN')"
else
    fail "Python 3.8+ was not found in PATH."
    echo -e "        Please install Python 3 using your package manager (e.g., sudo apt install python3)."
    exit 1
fi

# 3. Verify Node.js 18+
info "Checking Node.js (v18+ required)..."
if command -v node >/dev/null 2>&1; then
    NODE_VER=$(node -v)
    NODE_MAJOR=$(node -v | sed -E 's/v([0-9]+)\..*/\1/')
    if [ "$NODE_MAJOR" -ge 18 ]; then
        success "Node.js detected: $NODE_VER (Supported: >= v18)"
    else
        fail "Node.js version $NODE_VER is too old. Node v18+ is required."
        echo -e "        Please install or upgrade Node via nvm or package manager."
        exit 1
    fi
else
    fail "Node.js is not installed. Please install Node.js v18+ from https://nodejs.org/"
    exit 1
fi

# 4. Verify npm
info "Checking npm package manager..."
if command -v npm >/dev/null 2>&1; then
    NPM_VER=$(npm -v)
    success "npm detected: v$NPM_VER"
else
    fail "npm is not installed. Please install npm alongside Node.js."
    exit 1
fi

header "STAGE 2: CONFIGURING PRE-COMMIT SECRETS SHIELD"

# Ensure script is executable
if [ -f ".agents/scripts/pre_commit_secrets_shield.py" ]; then
    chmod +x .agents/scripts/pre_commit_secrets_shield.py
    success "Made .agents/scripts/pre_commit_secrets_shield.py executable."
fi

# Git repo check & Hook installation
GIT_DIR="$SCRIPT_DIR/.git"
if [ ! -d "$GIT_DIR" ]; then
    info "Git repository not initialized. Running 'git init'..."
    git init
    success "Git repository initialized."
fi

HOOKS_DIR="$GIT_DIR/hooks"
mkdir -p "$HOOKS_DIR"
HOOK_FILE="$HOOKS_DIR/pre-commit"

cat > "$HOOK_FILE" << 'EOF'
#!/usr/bin/env sh
# ==============================================================================
# Antigravity Foundry - Pre-Commit Secrets Shield Hook
# Enforces Zero-Leak Security Policy: Blocks commits containing keys/credentials.
# ==============================================================================

echo ""
echo ">> [SHIELD] Executing Pre-Commit Secrets Scanner..."

if command -v py >/dev/null 2>&1 && py -3 -c "import sys" >/dev/null 2>&1; then
    py -3 .agents/scripts/pre_commit_secrets_shield.py
elif command -v python3 >/dev/null 2>&1 && python3 -c "import sys" >/dev/null 2>&1; then
    python3 .agents/scripts/pre_commit_secrets_shield.py
elif command -v python >/dev/null 2>&1 && python -c "import sys" >/dev/null 2>&1; then
    python .agents/scripts/pre_commit_secrets_shield.py
else
    echo "[ERROR] Python 3 not found in PATH to execute secrets shield."
    exit 1
fi

HOOK_EXIT=$?
if [ $HOOK_EXIT -ne 0 ]; then
    echo ">> [BLOCKED] Pre-commit hook aborted the commit due to security violations."
    exit 1
fi

exit 0
EOF

chmod +x "$HOOK_FILE"
success "Pre-commit hook installed and executable at: $HOOK_FILE"

# Health check Secrets Shield
info "Running health check on .agents/scripts/pre_commit_secrets_shield.py..."
SHIELD_RES=$($PYTHON_BIN .agents/scripts/pre_commit_secrets_shield.py 2>&1)
success "Secrets Shield is operational:"
echo -e "        ${GRAY}$SHIELD_RES${RESET}"

header "STAGE 3: INSTALLING COCKPIT 2D DEPENDENCIES"

COCKPIT_DIR="$SCRIPT_DIR/cockpit"
if [ -d "$COCKPIT_DIR" ]; then
    cd "$COCKPIT_DIR"
    info "Installing local Node.js packages in cockpit/..."
    npm install --no-fund --no-audit
    success "Cockpit dependencies installed successfully."
    
    if [ -f "start-cockpit.sh" ]; then
        chmod +x start-cockpit.sh
        success "Made cockpit/start-cockpit.sh executable."
    fi
    cd "$SCRIPT_DIR"
else
    fail "Directory 'cockpit/' was not found."
    exit 1
fi

header "INSTALLATION COMPLETE - SUMMARY & NEXT STEPS"

cat << 'EOF'

[0;32m[FOUNDRY MATRIX STATUS]
  + Git Repository          : READY
  + Pre-Commit Hook         : ARMED (Zero-Leak Policy Active)
  + Pre-Commit Secrets      : PASS (0 secrets detected)
  + Cockpit 2D Web Server   : DEPENDENCIES READY (Port 4444)
  + 18 Universal Skills     : AVAILABLE in .agents/skills/
  + Dual-Layer Agent Matrix : 3 Workers + 6 Verifiers Configured

[HOW TO LAUNCH THE 2D COCKPIT]
  To start the real-time retro command center at http://localhost:4444, run:
  
    ./cockpit/start-cockpit.sh

[HOW TO CONNECT ANTIGRAVITY TO YOUR PROJECT]
  1. If starting a new project, copy the '.agents/' directory into your
     project workspace, or keep this repository as your central engine.
  2. The Orchestrator can be invoked anytime with:
     /metodo-fundido "Your feature or architectural task description"
  3. Explore official manuals in the 'docs/' directory:
     - docs/01_ARCHITECTURE.md
     - docs/02_THE_GATED_SDLC.md
     - docs/03_AGENT_MATRIX.md
     - docs/04_SKILLS_CATALOG.md
     - docs/05_COCKPIT_GUIDE.md

Antigravity Foundry is ready for mission deployment![0m

=====================================================================
EOF
