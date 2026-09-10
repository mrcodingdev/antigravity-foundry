# Antigravity Foundry

<div align="center">

```
   ___  _  _ _____ ___ ___ ___    _____   _____ _  _ ___  ___ _   _ 
  /   \| \| |_   _|_ _/ __| _ \  /   \ \ / / __| \| |   \| _ \ \ / /
 / /_\ \ .` | | |  | | (_ |   / / /_\ \ V /| _|| .` | |) |   /\ V / 
/_/   \_\_|\_| |_| |___\___|_|_\/_/   \_|_| |___|_|\_|___/|_|_\\_/  
        F O U N D R Y   E N G I N E   -   V E R S I O N   2 . 0
```

**The Production-Grade Multi-Agent Matrix, Gated SDLC Framework & 2D Pixel Art Cockpit for Google Antigravity 2.0.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Engine](https://img.shields.io/badge/Engine-Google%20Antigravity%202.0-blue.svg)](https://antigravity.google)
[![Architecture](https://img.shields.io/badge/Architecture-Dual--Layer%20Matrix-purple.svg)](#2-the-dual-layer-multi-agent-matrix)
[![Design System](https://img.shields.io/badge/Design%20System-Swiss%20%26%20Anti--Slop-green.svg)](#4-20-anti-ai-slop-canonical-rules--design-system)
[![Security](https://img.shields.io/badge/Security-Zero--Leak%20Shield-red.svg)](#7-pre-commit-secrets-shield)
[![Cockpit](https://img.shields.io/badge/Cockpit-2D%20Pixel%20Art%2060FPS-orange.svg)](#5-antigravity-office-2d-pixel-art-cockpit)
[![Code Quality](https://img.shields.io/badge/Code%20Quality-100%25%20Clean%20Code-brightgreen.svg)](#3-gated-sdlc--the-fused-method)

🌐 **Language:** English | [🇧🇷 Versão em Português do Brasil](README.pt-BR.md)

---

[Quick Start](#8-quick-start--installation) • [Architecture](#2-the-dual-layer-multi-agent-matrix) • [Gated SDLC](#3-gated-sdlc--the-fused-method) • [Customization](#10-customization--adaptation-guide) • [Manifesto](docs/07_THE_FOUNDRY_JOURNEY_AND_MANIFESTO.md) • [Tutorials](docs/08_STEP_BY_STEP_TUTORIALS.md) • [60 References](#10-foundational-inspirations-the-hall-of-fame-of-60-technologies) • [2D Cockpit](#5-antigravity-office-2d-pixel-art-cockpit) • [Documentation](#11-documentation-index)

</div>

> [!NOTE]
> **Multilingual Documentation Available:**  
> This specification is presented in English. A complete native Brazilian Portuguese version is available at [**`README.pt-BR.md`**](README.pt-BR.md).
> 
> 🚀 **Version 2.0 Major Highlights:**
> - 📜 **The Journey & Manifesto:** Discover the origin story and The 10 Commandments of Agentic Engineering in [**`docs/07_THE_FOUNDRY_JOURNEY_AND_MANIFESTO.md`**](docs/07_THE_FOUNDRY_JOURNEY_AND_MANIFESTO.md).
> - 🛠️ **Step-by-Step Tutorial Suite:** From zero to production in 2 minutes, end-to-end Gated SDLC run, and stack customization in [**`docs/08_STEP_BY_STEP_TUTORIALS.md`**](docs/08_STEP_BY_STEP_TUTORIALS.md).
> - 🏛️ **The Hall of Fame of 60 Technologies:** Exhaustive reverse-engineering across 7 Research Waves in [**`docs/00_FOUNDATIONAL_REFERENCES.md`**](docs/00_FOUNDATIONAL_REFERENCES.md).

---

## 🌟 1. The Philosophy: Why Monolithic AI Chats Fail

In real-world software engineering and large-scale codebases, developers often interact with AI assistants via a single, unbounded chat thread. This monolithic paradigm inevitably breaks down under four structural failure modes:

```mermaid
graph TD
    A["Monolithic Single-Chat AI Assistant"] --> B["1. Context Window Saturation & Bleed"]
    A --> C["2. Lack of Role Specialization"]
    A --> D["3. Author's Self-Review Bias"]
    A --> E["4. Absence of Deterministic Gates"]

    B --> F["Cumulative Hallucination & Code Degradation"]
    C --> F
    D --> F
    E --> F
```

1. **Context Window Saturation & Attention Bleed:**  
   As session history crosses tens of thousands of tokens and dozens of files, LLMs suffer severe attention dilution ("Lost in the Middle"). Crucial architectural guidelines established at step 1 are silently forgotten by step 20.
2. **Cognitive Entanglement (Jack of All Trades, Master of None):**  
   An agent concurrently juggling system architecture, CSS styling, ACID transactions, unit tests, and technical documentation produces shallow, brittle code.
3. **The Author's Self-Review Bias:**  
   The agent that authored the code will almost always pronounce its own work "complete and defect-free". Without separation between construction and audit, silent bugs escape into production.
4. **Absence of Deterministic Hard Gates:**  
   Monolithic sessions conclude based on optimistic rhetoric (*"I have implemented everything successfully!"*) rather than empirical terminal verification with exit code `0`.

### The Antigravity Foundry Remedy

**Antigravity Foundry** enforces a decoupled **Dual-Layer Architecture**:
- **Layer 1 (Sovereign Orchestration):** The Central Maestro plans, delegates, monitors state, and manages gates, never writing production code directly.
- **Layer 2A (Construction Workers):** 3 hyper-specialized builder subagents receive isolated tasks with clean context windows.
- **Layer 2B (Independent Verifiers Gatekeepers):** 6 adversarial auditors independently review the deliverable. A single non-conformance vetoes the release.

```mermaid
flowchart TB
    subgraph Layer1 ["LAYER 1: SOVEREIGN GOVERNANCE & ORCHESTRATION"]
        Maestro["antigravity-orchestrator<br/>(Central Conductor / Maestro)"]
        State["Persistent Memory & Session State<br/>(Task State, Handshake, Brain)"]
        Cockpit["Antigravity Cockpit 2D<br/>(Real-Time SSE Telemetry & Audio)"]
        Maestro <--> State
        Maestro --> Cockpit
    end

    subgraph Layer2Workers ["LAYER 2A: PRODUCTION WORKERS (BUILDERS)"]
        direction LR
        W1["foundry-builder<br/>(System & Infra Engineer)"]
        W2["software-engineer<br/>(Frontline Full-Stack)"]
        W3["backend-engineer<br/>(Database & API Core)"]
    end

    subgraph Layer2Verifiers ["LAYER 2B: VERIFIERS GATEKEEPERS (INDEPENDENT AUDITORS)"]
        direction LR
        V1["enterprise-architect<br/>(Governance & 4 Laws)"]
        V2["code-reviewer<br/>(Clean Code & SOLID)"]
        V3["security-auditor<br/>(OWASP & Defense)"]
        V4["test-engineer<br/>(Edge Cases & Real Proof)"]
        V5["web-performance-auditor<br/>(Core Web Vitals & Latency)"]
        V6["anti-slop-ui-auditor<br/>(20 Anti-Slop Zones & WCAG)"]
    end

    Maestro ==>|"1. Dispatches Isolated Sub-Task"| Layer2Workers
    Layer2Workers ==>|"2. Submits Code & Handoff Contract"| Layer2Verifiers
    Layer2Verifiers ==>|"3. Closed-Loop Audit (100% Unanimous PASS)"| Maestro
    Maestro ==>|"4. Semantic Commit & Deploy"| Production[("Verified Production Release")]

    classDef orch fill:#3b0764,stroke:#a855f7,stroke-width:2px,color:#fff;
    classDef worker fill:#1e3a8a,stroke:#3b82f6,stroke-width:2px,color:#fff;
    classDef verifier fill:#7f1d1d,stroke:#ef4444,stroke-width:2px,color:#fff;
    classDef prod fill:#064e3b,stroke:#10b981,stroke-width:2px,color:#fff;
    class Maestro,State,Cockpit orch;
    class W1,W2,W3 worker;
    class V1,V2,V3,V4,V5,V6 verifier;
    class Production prod;
```

---

## 🏛️ 2. The Dual-Layer Multi-Agent Matrix

Every agent in the Foundry has a defined cognitive scope, strict tool permissions, and a dedicated station in the 2D Cockpit:

| Agent Identifier | Tier | Cockpit Room | Core Specialization & Responsibilities | Authorized Tools | Gate Verdict |
| :--- | :---: | :---: | :--- | :--- | :---: |
| **`antigravity-orchestrator`** | **Layer 1 (Maestro)** | Command Center | Roadmap governance, task decomposition, Socratic inquiry, gate enforcement, agent dispatch. | `send_message`, `manage_task`, `view_file`, `list_dir` | Conductor |
| **`foundry-builder`** | **Layer 2A (Worker)** | Central Lab | Full-stack scaffolding, environment setup, cross-platform build scripts (`.ps1`, `.sh`, `.bat`), npm/pip package management. | `write_to_file`, `replace_file_content`, `run_command`, `manage_task`, `list_dir`, `view_file`, `grep_search`, `send_message` | Deliverable |
| **`software-engineer`** | **Layer 2A (Worker)** | Development | Reactive web components, modern UI/UX, client-side state, API consumption, strict mobile/desktop responsiveness. | `write_to_file`, `replace_file_content`, `view_file`, `grep_search`, `generate_image`, `send_message` | Deliverable |
| **`backend-engineer`** | **Layer 2A (Worker)** | Development | Enterprise REST APIs, strict parameterized prepared statements, ACID transactions, pessimistic locking (`SELECT FOR UPDATE`), DDL migrations. | `write_to_file`, `replace_file_content`, `view_file`, `grep_search`, `run_command`, `send_message` | Deliverable |
| **`enterprise-architect`** | **Layer 2B (Verifier)** | Governance | Enforces the 4 Behavioral Laws of Andrej Karpathy, verifies domain boundaries, authors Architectural Decision Records (ADRs). | `view_file`, `grep_search`, `list_dir`, `send_message` | `PASS / REVISE` |
| **`code-reviewer`** | **Layer 2B (Verifier)** | Governance | Robert C. Martin (Uncle Bob) Clean Code, SOLID principles, cyclomatic complexity (< 10), DRY compliance, zero technical debt. | `view_file`, `grep_search`, `send_message` | `PASS / REVISE` |
| **`security-auditor`** | **Layer 2B (Verifier)** | Bunker | OWASP Top 10 defense, zero-trust sanitization, SQL Injection immunity, CSRF/XSS eradication, secret scanning, RBAC/IDOR checks. | `view_file`, `grep_search`, `run_command`, `send_message` | `PASS / REVISE` |
| **`test-engineer`** | **Layer 2B (Verifier)** | QA Testing | Unit, integration & regression test suites, boundary condition coverage (minimum 80%), mock verification, empirical terminal assertions. | `view_file`, `grep_search`, `run_command`, `send_message` | `PASS / REVISE` |
| **`web-performance-auditor`**| **Layer 2B (Verifier)** | Bunker / QA | Core Web Vitals (LCP, INP, CLS), query performance, elimination of N+1 loops, memory leak auditing, p95 latency. | `view_file`, `grep_search`, `run_command`, `send_message` | `PASS / REVISE` |
| **`anti-slop-ui-auditor`** | **Layer 2B (Verifier)** | QA Lab | Audits the 20 Canonical Anti-Slop Zones, design system adherence, WCAG 2.1 AA accessibility, issues official scorecards (0-100). | `view_file`, `grep_search`, `send_message` | `PASS / REVISE` |

---

## 🔒 3. Gated SDLC & The Fused Method

The development process inside the Antigravity Foundry is governed by **The Fused Method** (*O Método Fundido*) — an uncompromising 5-phase sequential pipeline where progression is strictly gated:

```
[Phase 1: Grill-Me] ──► [Phase 2: Spec] ──► [Phase 3: Construction] ──► [Phase 4: 6 Verifiers] ──► [Phase 5: Commit]
  5 Socratic Probes      implementation_plan.md   Workers build in          Unanimous 100% PASS         Real Proof &
  Edge-case analysis     Acceptance Gates         isolated contexts         Zero-Tolerance Veto         Zero-Leak Push
```

### Phase 1: Socratic Grill-Me (`/socratic-grill`)
Before writing any code or architecture documents, the system conducts a mandatory Socratic interview challenging assumptions, uncovering hidden constraints, network failure scenarios, idempotency requirements, and concurrency bottlenecks.

### Phase 2: Technical Specification & Implementation Plan (`/spec`)
The Maestro and Chief Architect draft a formal `implementation_plan.md` using the canonical template. The specification defines:
- High-level architectural context and domain boundaries.
- Precise request/response DTO contracts.
- Database schema changes and ACID isolation levels.
- Concrete terminal commands required to prove success in Phase 5.

### Phase 3: Construction by Specialized Workers
The Maestro invokes only the necessary Workers (`foundry-builder`, `software-engineer`, or `backend-engineer`). Each Worker operates with minimal context token load, focuses entirely on execution, and submits a formal Handoff Contract upon completion.

### Phase 4: Closed-Loop Re-Audit by 6 Verifiers Gatekeepers (`/gates-check`)
Every deliverable is reviewed simultaneously by all 6 Verifiers. **No code enters the repository without a 6/6 unanimous PASS verdict.** If any auditor issues a `REVISE`, the deliverable is rejected back to the responsible Worker with precise, actionable line-by-line feedback.

### Phase 5: Empirical Real-World Proof & Semantic Commit (`/semantic-commit`)
Assertions must be validated by running automated tests in the terminal. Once tests return exit code `0`, the `tech-writer-verifier` compiles the `walkthrough.md` homologation report, and the `pre-commit-secrets-shield` scans the staged diff before pushing.

---

## 🎨 4. 20 Anti-AI Slop Canonical Rules & Design System

The Foundry incorporates an enterprise-grade Design System engineered specifically to eradicate visual clichés produced by generative AI (*AI Slop* / *Vibecoding*). Interfaces must adhere to sober Swiss typographic rigor (Stripe, Linear, GitHub, Vercel standard):

```
                    THE 20 CANONICAL ANTI-SLOP GUARDRAILS
  ┌────────────────────────────────────────────────────────────────────────┐
  │ 01. ZERO PURPLE-TO-BLUE GRADIENTS ──► Prohibited generic AI background │
  │ 02. ZERO GRADIENT HERO HEADINGS   ──► Prohibited text-transparent-clip │
  │ 03. ZERO EMOJIS IN HEADINGS       ──► 100% Clean, semantic iconography│
  │ 04. TABULAR NUMERAL CALIBRATION   ──► tabular-nums on all metrics/data │
  │ 05. 1PX NEUTRAL GHOST BORDERS     ──► Prohibited neon colored borders  │
  │ 06. SOLID SURFACES (ANTI-GLASS)   ──► Prohibited noisy backdrop-blur   │
  │ 07. HIGH CONTRAST (WCAG AA/AAA)   ──► Prohibited washed-out gray text  │
  │ 08. REAL BUSINESS BENTO GRIDS     ──► Prohibited 3 generic icon cards  │
  │ 09. PURE H1 HIERARCHY             ──► Prohibited floating pill badges  │
  │ 10. SOLID STANDARDIZED ICONS      ──► Semantic SVG icons, uniform scale│
  │ 11. AUTHENTIC B2B IDENTITY        ──► Purpose-built enterprise theme   │
  │ 12. GPU COMPOSITOR ANIMATIONS     ──► 60 FPS transform/opacity only   │
  │ 13. ZERO CURSOR BEAMS / AURORAS   ──► Prohibited gimmick cursor trails │
  │ 14. SOLID FACTORY BUTTONS         ──► Predictable hover & active states│
  │ 15. SYSTEMATIC 8PX SPACING GRID   ──► Prohibited arbitrary paddings    │
  │ 16. CLEAN EDITORIAL TYPOGRAPHY    ──► Prohibited compulsive em-dashes  │
  │ 17. PRECISE DOMAIN VOCABULARY     ──► Prohibited empty AI buzzwords    │
  │ 18. UNIFORM SANS-SERIF FAMILY     ──► Prohibited random italic serifs  │
  │ 19. HARMONIC SCALE RATIOS         ──► Strict typographic modular scale │
  │ 20. NOISELESS MATTE SURFACES      ──► Zero decorative CSS grain overlay│
  └────────────────────────────────────────────────────────────────────────┘
```

Detailed implementation specifications and CSS variables are documented in [`.agents/rules/02_design_system_and_anti_slop.md`](.agents/rules/02_design_system_and_anti_slop.md).

---

## 🕹️ 5. Antigravity Office 2D Pixel Art Cockpit

The **Antigravity Cockpit 2D** is a gamified retro Command Center running on native HTML5 Canvas at a silky 60 FPS. It provides live, visual observability over all active agents in the Foundry:

```
+-------------------------------------------------------------------------+
|                  ROOM 1: ORCHESTRATION & COMMAND CENTER                 |
|             (Central Desk of Maestro - antigravity-orchestrator)        |
+------------------------------------+------------------------------------+
|    ROOM 2: GOVERNANCE ROOM         |    ROOM 3: SECURITY BUNKER         |
|  - chief-erp-architect             |  - security-auditor                |
|  - code-reviewer                   |  - performance-verifier            |
+------------------------------------+------------------------------------+
|    ROOM 4: DEVELOPMENT LAB         |    ROOM 5: QA & DOCUMENTATION LAB  |
|  - software-engineer               |  - test-engineer                   |
|  - backend-engineer                |  - tech-writer-verifier            |
|  - foundry-builder                 |                                    |
+------------------------------------+------------------------------------+
```

### Key Cockpit Capabilities:
- **60 FPS HTML5 Canvas Engine:** Custom pixel-art sprite rendering with dynamic walking, typing, thinking, and celebration animations.
- **Procedural 8-bit Web Audio API:** Zero external `.mp3` audio files. Synthesizes chiptune square/sine wave sound effects natively (Step Beeps, Handoff Wooshes, Gate Fanfares, Security Alarms).
- **Server-Sent Events (SSE) Real-Time Telemetry:** Scans transcript logs every 1.5 seconds and streams events to the browser at `http://localhost:4444`.
- **Live Agent Inspector Modal:** Click on any agent avatar to inspect their current tool, step count, active task, Chain-of-Thought log, and model temperature.
- **Token & Quota Consumption Tracker:** Real-time visual progress bars for context window capacity, LLM quotas, and token velocities.

For operational instructions, see [docs/05_COCKPIT_GUIDE.md](docs/05_COCKPIT_GUIDE.md).

---

## 🧰 6. The 18 Pure Core Skills Catalog

The Foundry provides 18 standardized procedures accessible via `/slash` commands or invoked autonomously by the Maestro:

| Command | Skill Name | Primary Agent | Operational Scope |
| :--- | :--- | :---: | :--- |
| **`/metodo-fundido`** | Full Gated SDLC Orchestration | `antigravity-orchestrator` | Runs the end-to-end 5-phase pipeline for features and major refactorings. |
| **`/spec`** | Technical Specification Authoring | `antigravity-orchestrator` | Drafts `implementation_plan.md` with schema contracts and acceptance gates. |
| **`/socratic-grill`** | Socratic Edge-Case Interview | `chief-erp-architect` | Executes a 5-question deep probe on edge cases, race conditions, and rollbacks. |
| **`/adr`** | Architecture Decision Record | `chief-erp-architect` | Authors formal `ADR-XXXX.md` documentation in `docs/adr/`. |
| **`/clean-code`** | Clean Code & SOLID Audit | `code-reviewer` | Evaluates complexity (< 10), method size (< 25 lines), and naming clarity. |
| **`/cybersecurity-audit`**| OWASP Top 10 Vulnerability Audit | `security-auditor` | Scans for SQL injection, XSS, CSRF, IDOR, and unauthorized data mutations. |
| **`/test-runner`** | Automated Test Suite Execution | `test-engineer` | Executes test runners (`npm test`, `pytest`, `phpunit`) with >= 80% coverage check. |
| **`/perf-audit`** | Latency & Query Performance Audit| `performance-verifier` | Audits SQL `EXPLAIN` plans, eliminates N+1 loops, enforces p95 < 200ms. |
| **`/gates-check`** | Deterministic Gates Acceptance | `foundry-builder` | Runs all 6 terminal acceptance commands, halting on any non-zero exit code. |
| **`/walkthrough`** | Homologation Walkthrough Report | `tech-writer-verifier` | Compiles `walkthrough.md` with terminal evidence, carousels, and checklists. |
| **`/cockpit-telemetry`** | Cockpit Health & Stream Status | `foundry-builder` | Validates SSE stream integrity at port 4444 and monitors brain transcripts. |
| **`/backend-scaffold`** | Typed Enterprise Backend Scaffold | `backend-engineer` | Scaffolds REST controllers, DTOs, and repositories with strict parameterized queries and ACID locks. |
| **`/frontend-component`**| Reactive UI Component Builder | `software-engineer` | Builds responsive, accessible UI components adhering to the 20 Anti-Slop rules. |
| **`/database-migration`**| Idempotent DDL Migration with Down| `backend-engineer` | Generates safe `IF NOT EXISTS` DDL migrations with automated rollback scripts. |
| **`/code-review`** | Multi-Agent Peer Review | `code-reviewer` | Compiles detailed diff review tables with `APPROVED` or `CHANGES_REQUESTED`. |
| **`/secret-scan`** | Active Secret Leak Detection | `security-auditor` | Scans staged git files for cloud tokens, AI API keys, and database passwords. |
| **`/api-contract`** | API Handoff Contract Generator | `antigravity-orchestrator` | Creates TypeScript/JSON schemas for frontend/backend parallel development. |
| **`/semantic-commit`** | Conventional Semantic Commit | `foundry-builder` | Generates standardized commit messages (`feat:`, `fix:`, `docs:`, `test:`). |

Full usage examples for each skill are available in [docs/04_SKILLS_CATALOG.md](docs/04_SKILLS_CATALOG.md).

---

## 🛡️ 7. Pre-Commit Secrets Shield

Security in the Antigravity Foundry is proactive and non-negotiable. The included **Pre-Commit Secrets Shield** (`.agents/scripts/pre_commit_secrets_shield.py`) runs automatically prior to every git commit.

```
git commit -m "feat: implement payment gateway"
               │
               ▼
[HOOK] .git/hooks/pre-commit
               │
               ▼
python .agents/scripts/pre_commit_secrets_shield.py
               │
      ┌────────┴────────┐
      ▼                 ▼
[PASS: 0 Secrets]   [BLOCKED: Secret Detected!]
Commit proceeds.    Commit aborted with Exit Code 1.
```

### Detected Pattern Signatures:
- **Cloud & AI Keys:** OpenAI (`sk-proj-...`, `sk-...`), Anthropic Claude (`sk-ant-...`), Google Gemini / Cloud (`AIza...`), AWS Access Keys (`AKIA...`, Secret Key).
- **VCS & Auth:** GitHub Tokens (`ghp_...`, `gho_...`, `github_pat_...`), JSON Web Tokens (`eyJ...`).
- **Cryptographic Keys:** RSA/OpenSSH/PGP/EC private key blocks (e.g., placeholder `-----BEGIN PRIVATE KEY-----`).
- **Database & Secrets:** Hardcoded connection URIs (`postgres://`, `mysql://`, `mongodb://`) and explicit passwords in staging.

---

## 🚀 8. Quick Start & Installation

### Prerequisites
- **Git** (`git --version`)
- **Python 3.8+** (`python --version` or `python3 --version`)
- **Node.js 18+ LTS** (`node --version`)

### 1-Click Installer for Windows PowerShell
```powershell
# Clone the repository
git clone https://github.com/mrcodingdev/antigravity-foundry.git
cd antigravity-foundry

# Run the automated 1-click installer
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

### 1-Click Installer for Linux / macOS Bash
```bash
# Clone the repository
git clone https://github.com/mrcodingdev/antigravity-foundry.git
cd antigravity-foundry

# Run the automated 1-click installer
chmod +x install.sh
./install.sh
```

### Launching the 2D Cockpit Command Center

**Windows:**
```powershell
.\cockpit\start-cockpit.bat
```

**Linux / macOS:**
```bash
./cockpit/start-cockpit.sh
```

The retro visual command center will automatically open in your default browser at **`http://localhost:4444`**.

### Connecting Antigravity to a New Project
To equip any existing codebase with the Antigravity Foundry engine:
1. Copy the `.agents/` folder to your project root.
2. Ensure the pre-commit hook is active:
   ```bash
   python .agents/scripts/pre_commit_secrets_shield.py
   ```
3. Prompt your agent with any of the 18 universal commands (e.g., `/metodo-fundido "Implement tenant billing"`).

---

---

## 🛠️ 9. Customization & Adaptation Guide

While Antigravity Foundry is **100% plug-and-play and zero-config** for immediate usage across any codebase, its true enterprise superpower is its **modular adaptability**:

- **Agnostic by Design:** Use it out of the box with Node/TypeScript, Python, Go, Rust, Java, C#, or PHP.
- **Tailor Your Team's Rules (`.agents/rules/`):** Inject your brand color palette into `02_design_system_and_anti_slop.md` and define team-specific architectural invariants into `01_core_architecture_rules.md`.
- **Customize Workers for Your Stack (`.agents/subagents/workers/`):**
  - Adapt `backend-engineer.md` for FastAPI/SQLAlchemy, NestJS/Prisma, Go/Gin/pgx, or Laravel.
  - Adapt `frontend-engineer.md` for Next.js (App Router), Vue/Nuxt, SvelteKit, or Tailwind CSS.
- **Wire Verifiers to Your Live CI Tools (`.agents/subagents/verifiers/`):** Instruct `test-engineer` and `code-reviewer` to execute your actual test runners (`npm test`, `pytest`, `cargo test`, `go test`) and linters (`eslint`, `ruff`, `golangci-lint`).
- **Create Domain-Specific Skills (`.agents/skills/`):** Package proprietary business logic (e.g., Stripe/PIX payments, KYC flows, OAuth2, multi-tenant isolation) into self-contained reusable skill packages.
- **Personalize the 2D Cockpit (`cockpit/`):** Rename stations, adjust agent colors/badges, and configure custom office sprites.

👉 **Complete Step-by-Step Manual:** Read [**`docs/06_ADAPTATION_AND_CUSTOMIZATION_GUIDE.md`**](docs/06_ADAPTATION_AND_CUSTOMIZATION_GUIDE.md) for ready-to-use recipes.

---

## 🏛️ 10. Foundational Inspirations: The Hall of Fame of 60 Technologies

Antigravity Foundry stands on the shoulders of open-source giants. It consolidates **60 of the most influential repositories and projects worldwide** in agentic AI, software engineering, and cybersecurity, categorized across **7 Research Waves**:

| Wave | Technical Domain | Qty | Canonical Highlights |
| :---: | :--- | :---: | :--- |
| **Wave 1** | AI Foundations, SDLC & Web Quality | 18 | `andrej-karpathy-skills`, `agent-skills` (Addy Osmani), `skills` (Matt Pocock Grill-Me), `Clean Code`, `hallmark` |
| **Wave 2** | Offensive Security, Core Web Vitals & Discipline | 20 | `strix` (No exploit no report), `Anthropic-Cybersecurity-Skills` (MITRE F3), `unlazy` (Hard Gates), `critical` |
| **Wave 3** | Executable Software & Multi-Agent Harnesses | 5 | `munder-difflin` (Pixel Art Single-Committer), `claude-mem` (Progressive Disclosure), `VoltAgent` (Circuit Breaker) |
| **Wave 4** | Autonomous Loops & Execution Engines | 4 | `aiden` (Proof over Declared Done), `pi` (Supply-Chain Hardening), `ralph` (Fresh Context Loop) |
| **Wave 5** | High-Performance MCP Servers | 7 | `pagespeed-insights-mcp`, `dechonet-mcp`, `siteaudit-mcp`, `codebase-memory-mcp` (Tree-Sitter AST) |
| **Wave 6** | Enterprise Ecosystem, Fiscal & Personas | 5 | `dolibarr` (ERP Pragmatism), `nfe.io` (Async Queues), `no-ai-slop` (Peter Yang), `agency-agents` |
| **Wave 7** | Document Engineering & Office Automation | 1 | `OfficeCLI` (Headless CLI automation for `.docx`, `.xlsx`, `.pptx` without Office installed) |
| **TOTAL** | **Antigravity Foundry Unified Ecosystem** | **60** | **The Global State-of-the-Art in Agentic Engineering** |

👉 **Complete Compendium of all 60 Technologies:** Read [**`docs/00_FOUNDATIONAL_REFERENCES.md`**](docs/00_FOUNDATIONAL_REFERENCES.md) for full attribution narratives, primordial concepts, and comprehensive traceability matrices.

---

## 📚 11. Documentation Index

The repository includes a comprehensive, modular documentation suite located in the [`docs/`](docs/) and [`templates/`](templates/) directories:

### Core Technical Handbooks
- **[`docs/00_FOUNDATIONAL_REFERENCES.md`](docs/00_FOUNDATIONAL_REFERENCES.md)**: Official Hall of Fame compendium of the 60 technologies, open-source lineage, and traceability matrix.
- **[`docs/01_ARCHITECTURE.md`](docs/01_ARCHITECTURE.md)**: Deep dive into the Dual-Layer mental model, orchestration mechanics, and role segregation.
- **[`docs/02_THE_GATED_SDLC.md`](docs/02_THE_GATED_SDLC.md)**: Detailed breakdown of the 5 phases of The Fused Method, gate contracts, and exit criteria.
- **[`docs/03_AGENT_MATRIX.md`](docs/03_AGENT_MATRIX.md)**: Complete profiles for all subagents, authorized tools, and prompt architectures.
- **[`docs/04_SKILLS_CATALOG.md`](docs/04_SKILLS_CATALOG.md)**: Exhaustive manual for all 18 universal `/slash` skills with syntax examples.
- **[`docs/05_COCKPIT_GUIDE.md`](docs/05_COCKPIT_GUIDE.md)**: Operator runbook for the 2D Pixel Art Cockpit, Web Audio synthesizer, and SSE telemetry.
- **[`docs/06_ADAPTATION_AND_CUSTOMIZATION_GUIDE.md`](docs/06_ADAPTATION_AND_CUSTOMIZATION_GUIDE.md)**: Definitive guide to customizing rules, workers, verifiers, and skills for your stack.
- **[`docs/07_THE_FOUNDRY_JOURNEY_AND_MANIFESTO.md`](docs/07_THE_FOUNDRY_JOURNEY_AND_MANIFESTO.md)**: **The Epic Manifesto:** From monolithic chat breakdown to the autonomous factory, featuring The 10 Commandments of Agentic Engineering.
- **[`docs/08_STEP_BY_STEP_TUTORIALS.md`](docs/08_STEP_BY_STEP_TUTORIALS.md)**: **Hands-On Step-by-Step Tutorials:** 2-minute setup, full end-to-end Gated SDLC cycle, stack customization, and 2D Cockpit runbook.

### Enterprise Governance Templates
- **[`templates/implementation_plan_template.md`](templates/implementation_plan_template.md)**: Canonical specification plan for new features.
- **[`templates/gates_contract_template.md`](templates/gates_contract_template.md)**: Deterministic 6-gate verification contract.
- **[`templates/adr_template.md`](templates/adr_template.md)**: Architecture Decision Record format (Michael Nygard standard).
- **[`templates/walkthrough_template.md`](templates/walkthrough_template.md)**: Homologation report template with terminal evidence.

---

## 👤 12. Author, Community & License

**Antigravity Foundry** is crafted with architectural discipline by **Douglas** ([@mrcodingdev](https://github.com/mrcodingdev)).

- **Author Profile:** [GitHub @mrcodingdev](https://github.com/mrcodingdev)
- **Engine Compatibility:** Built natively for Google Antigravity 2.0.
- **License:** Released under the permissive [MIT License](LICENSE). You are free to use, modify, and distribute this software for personal and commercial projects.

<div align="center">

---

*“Simplicity is prerequisite for reliability.” — Edsger W. Dijkstra*  
*Built with precision for sovereign software engineering.*

</div>
