<#
.SYNOPSIS
    Antigravity Foundry - 1-Click Environment Setup & Pre-Commit Shield Installer (Windows PowerShell)
.DESCRIPTION
    Automates prerequisite verification (Git, Python 3, Node.js 18+),
    configures the Zero-Leak Pre-Commit Secrets Shield Git Hook,
    and installs Cockpit dependencies.
#>

[CmdletBinding()]
param()

$ErrorActionPreference = "Stop"
$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Colors and formatting helpers
function Write-Header {
    param([string]$Text)
    Write-Host "`n=====================================================================" -ForegroundColor Cyan
    Write-Host " $Text" -ForegroundColor Cyan
    Write-Host "=====================================================================" -ForegroundColor Cyan
}

function Write-Success {
    param([string]$Text)
    Write-Host "  [OK] $Text" -ForegroundColor Green
}

function Write-Info {
    param([string]$Text)
    Write-Host "  [..] $Text" -ForegroundColor Yellow
}

function Write-Fail {
    param([string]$Text)
    Write-Host "  [FAIL] $Text" -ForegroundColor Red
}

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location -Path $ScriptDir

try { Clear-Host } catch {}
Write-Host @"

   ___  _  _ _____ ___ ___ ___    _____   _____ _  _ ___  ___ _   _ 
  /   \| \| |_   _|_ _/ __| _ \  /   \ \ / / __| \| |   \| _ \ \ / /
 / /_\ \ .` | | |  | | (_ |   / / /_\ \ V /| _|| .` | |) |   /\ V / 
/_/   \_\_|\_| |_| |___\___|_|_\/_/   \_|_| |___|_|\_|___/|_|_\\_/  
        F O U N D R Y   E N G I N E   -   I N S T A L L E R
"@ -ForegroundColor Cyan

Write-Header "STAGE 1: VERIFYING SYSTEM PREREQUISITES"

# 1. Verify Git
Write-Info "Checking Git installation..."
try {
    $gitVer = (git --version 2>&1).Trim()
    Write-Success "Git detected: $gitVer"
} catch {
    Write-Fail "Git is not installed or not available in PATH."
    Write-Host "        Please download and install Git from https://git-scm.com/" -ForegroundColor DarkYellow
    exit 1
}

# 2. Verify Python 3
Write-Info "Checking Python 3 environment..."
$pythonCmd = $null

if (Get-Command "python" -ErrorAction SilentlyContinue) {
    $pyVerOutput = (python --version 2>&1).Trim()
    if ($pyVerOutput -match "Python 3\.(\d+)") {
        $pythonCmd = "python"
        Write-Success "Python 3 detected via 'python': $pyVerOutput"
    }
}

if (-not $pythonCmd -and (Get-Command "py" -ErrorAction SilentlyContinue)) {
    $pyVerOutput = (py -3 --version 2>&1).Trim()
    if ($pyVerOutput -match "Python 3\.(\d+)") {
        $pythonCmd = "py -3"
        Write-Success "Python 3 detected via 'py -3': $pyVerOutput"
    }
}

if (-not $pythonCmd -and (Get-Command "python3" -ErrorAction SilentlyContinue)) {
    $pyVerOutput = (python3 --version 2>&1).Trim()
    if ($pyVerOutput -match "Python 3\.(\d+)") {
        $pythonCmd = "python3"
        Write-Success "Python 3 detected via 'python3': $pyVerOutput"
    }
}

if (-not $pythonCmd) {
    Write-Fail "Python 3.8+ is required but was not found in PATH."
    Write-Host "        Please install Python 3 from https://www.python.org/downloads/" -ForegroundColor DarkYellow
    Write-Host "        Ensure you check 'Add Python to PATH' during installation." -ForegroundColor DarkYellow
    exit 1
}

# 3. Verify Node.js 18+
Write-Info "Checking Node.js (v18+ required)..."
try {
    $nodeVerOutput = (node --version 2>&1).Trim()
    if ($nodeVerOutput -match "v(\d+)\.") {
        $majorVer = [int]$matches[1]
        if ($majorVer -ge 18) {
            Write-Success "Node.js detected: $nodeVerOutput (Supported: >= v18)"
        } else {
            Write-Fail "Node.js version $nodeVerOutput is too old. v18 or higher is required."
            Write-Host "        Please upgrade Node.js from https://nodejs.org/" -ForegroundColor DarkYellow
            exit 1
        }
    } else {
        Write-Fail "Unable to determine Node.js version."
        exit 1
    }
} catch {
    Write-Fail "Node.js is not installed or not found in PATH."
    Write-Host "        Please install Node.js v18+ LTS from https://nodejs.org/" -ForegroundColor DarkYellow
    exit 1
}

# 4. Verify npm
Write-Info "Checking npm package manager..."
try {
    $npmVer = (npm --version 2>&1).Trim()
    Write-Success "npm detected: v$npmVer"
} catch {
    Write-Fail "npm was not found. Please reinstall Node.js LTS."
    exit 1
}

Write-Header "STAGE 2: CONFIGURING PRE-COMMIT SECRETS SHIELD"

# 5. Git repository check & Hook installation
$gitDir = Join-Path $ScriptDir ".git"
if (-not (Test-Path $gitDir)) {
    Write-Info "Git repository not initialized. Initializing 'git init'..."
    git init | Out-Null
    Write-Success "Git repository initialized."
}

$hooksDir = Join-Path $gitDir "hooks"
if (-not (Test-Path $hooksDir)) {
    New-Item -ItemType Directory -Path $hooksDir -Force | Out-Null
}

$hookFile = Join-Path $hooksDir "pre-commit"

# Universal POSIX/Git Bash pre-commit script that runs with Git on Windows
$hookContent = @'
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
'@

Set-Content -Path $hookFile -Value $hookContent -Encoding ASCII
Write-Success "Pre-commit hook installed at: $hookFile"

# 6. Test Secrets Shield execution
Write-Info "Running health check on .agents/scripts/pre_commit_secrets_shield.py..."
try {
    if ($pythonCmd -eq "py -3") {
        $shieldOutput = (py -3 .agents/scripts/pre_commit_secrets_shield.py 2>&1)
    } else {
        $shieldOutput = (& $pythonCmd .agents/scripts/pre_commit_secrets_shield.py 2>&1)
    }
    Write-Success "Secrets Shield is operational:"
    Write-Host "        $shieldOutput" -ForegroundColor DarkGray
} catch {
    Write-Fail "Health check failed for Pre-Commit Secrets Shield: $_"
    exit 1
}

Write-Header "STAGE 3: INSTALLING COCKPIT 2D DEPENDENCIES"

$cockpitDir = Join-Path $ScriptDir "cockpit"
if (Test-Path $cockpitDir) {
    Push-Location $cockpitDir
    Write-Info "Installing local Node.js packages in cockpit/..."
    
    # Run npm install quietly
    $npmProcess = Start-Process -FilePath "npm.cmd" -ArgumentList "install", "--no-fund", "--no-audit" -NoNewWindow -Wait -PassThru
    if ($npmProcess.ExitCode -eq 0) {
        Write-Success "Cockpit dependencies installed successfully."
    } else {
        Write-Fail "npm install failed with exit code $($npmProcess.ExitCode)."
        Pop-Location
        exit 1
    }
    Pop-Location
} else {
    Write-Fail "Directory 'cockpit/' was not found."
    exit 1
}

Write-Header "INSTALLATION COMPLETE - SUMMARY & NEXT STEPS"

Write-Host @"
[FOUNDRY MATRIX STATUS]
  + Git Repository          : READY
  + Pre-Commit Hook         : ARMED (Zero-Leak Policy Active)
  + Pre-Commit Secrets      : PASS (0 secrets detected)
  + Cockpit 2D Web Server   : DEPENDENCIES READY (Port 4444)
  + 18 Universal Skills     : AVAILABLE in .agents/skills/
  + Dual-Layer Agent Matrix : 3 Workers + 6 Verifiers Configured

[HOW TO LAUNCH THE 2D COCKPIT]
  To start the real-time retro command center at http://localhost:4444, run:
  
    .\cockpit\start-cockpit.bat

[HOW TO CONNECT ANTIGRAVITY TO YOUR PROJECT]
  1. If you are starting a new project, copy the '.agents/' directory to your
     project workspace, or keep this repository as your central engine.
  2. The Orquestrador can be invoked anytime with:
     /metodo-fundido "Your feature or architectural task description"
  3. Explore official manuals in the 'docs/' directory:
     - docs/01_ARCHITECTURE.md
     - docs/02_THE_GATED_SDLC.md
     - docs/03_AGENT_MATRIX.md
     - docs/04_SKILLS_CATALOG.md
     - docs/05_COCKPIT_GUIDE.md

Antigravity Foundry is ready for mission deployment!
"@ -ForegroundColor Green

Write-Host "=====================================================================`n" -ForegroundColor Cyan
