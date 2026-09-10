# Antigravity Foundry

<div align="center">

```
   ___  _  _ _____ ___ ___ ___    _____   _____ _  _ ___  ___ _   _ 
  /   \| \| |_   _|_ _/ __| _ \  /   \ \ / / __| \| |   \| _ \ \ / /
 / /_\ \ .` | | |  | | (_ |   / / /_\ \ V /| _|| .` | |) |   /\ V / 
/_/   \_\_|\_| |_| |___\___|_|_\/_/   \_|_| |___|_|\_|___/|_|_\\_/  
        F O U N D R Y   E N G I N E   -   V E R S I O N   2 . 0
```

**A Matriz Multi-Agente Empresarial, Framework Gated SDLC & Cockpit 2D Pixel Art para o Google Antigravity 2.0.**

[![License: MIT](https://img.shields.io/badge/Licen%C3%A7a-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Engine](https://img.shields.io/badge/Engine-Google%20Antigravity%202.0-blue.svg)](https://antigravity.google)
[![Architecture](https://img.shields.io/badge/Arquitetura-Matriz%20Dual--Layer-purple.svg)](#2-a-matriz-multi-agente-dual-layer)
[![Design System](https://img.shields.io/badge/Design%20System-Su%C3%AD%C3%A7o%20%26%20Anti--Slop-green.svg)](#4-as-20-zonas-can%C3%B4nicas-anti-ai-slop--design-system)
[![Security](https://img.shields.io/badge/Seguran%C3%A7a-Zero--Leak%20Shield-red.svg)](#7-pre-commit-secrets-shield)
[![Cockpit](https://img.shields.io/badge/Cockpit-2D%20Pixel%20Art%2060FPS-orange.svg)](#5-antigravity-office-2d-pixel-art-cockpit)
[![Code Quality](https://img.shields.io/badge/Qualidade-100%25%20Clean%20Code-brightgreen.svg)](#3-gated-sdlc--o-m%C3%A9todo-fundido-de-trabalho)

🌐 **Idioma:** Português do Brasil | [🇺🇸 English Version](README.md)

---

[Início Rápido](#8-início-rápido--instalação) • [Zero-Overhead UX](#-ux-sem-sobrecarga-roteamento-proativo-automático-zero-comandos-manuais) • [Arquitetura](#2-a-matriz-multi-agente-dual-layer) • [Método Fundido](#3-gated-sdlc--o-método-fundido-de-trabalho) • [Anti-Slop](#4-as-20-zonas-canônicas-anti-ai-slop--design-system) • [Customização](#9-guia-de-customização-e-adaptação-sob-medida) • [Manifesto](docs/07_THE_FOUNDRY_JOURNEY_AND_MANIFESTO.md) • [Tutoriais](docs/08_STEP_BY_STEP_TUTORIALS.md) • [60 Referências](#10-inspirações-fundacionais--o-hall-da-fama-das-60-tecnologias) • [Cockpit 2D](#5-antigravity-office-2d-pixel-art-cockpit) • [Documentação](#11-índice-de-documentação)

</div>

> [!NOTE]
> **Edição Oficial em Português do Brasil:**  
> Esta é a documentação completa e nativa em Português do Brasil do Antigravity Foundry. Se preferir a especificação internacional em inglês, acesse o [**`README.md`**](README.md).
> 
> 🚀 **Destaques Imperdíveis da Versão 2.0:**
> - 📜 **Manifesto da Trajetória:** Conheça a história e os 10 Mandamentos da Engenharia Agêntica em [**`docs/07_THE_FOUNDRY_JOURNEY_AND_MANIFESTO.md`**](docs/07_THE_FOUNDRY_JOURNEY_AND_MANIFESTO.md).
> - 🛠️ **Suíte de Tutoriais Passo a Passo:** Aprenda a rodar o ciclo completo do zero à produção em [**`docs/08_STEP_BY_STEP_TUTORIALS.md`**](docs/08_STEP_BY_STEP_TUTORIALS.md).
> - 🏛️ **O Hall da Fama das 60 Tecnologias:** O compêndio de engenharia reversa das 7 Levas em [**`docs/00_FOUNDATIONAL_REFERENCES.md`**](docs/00_FOUNDATIONAL_REFERENCES.md).

---

## 🌟 1. A Filosofia: Por Que Chats Monolíticos de IA Colapsam

Em projetos de software reais e bases de código de grande porte, desenvolvedores frequentemente utilizam assistentes de IA através de uma única janela de chat contínuo. Esse paradigma monolítico entra invariavelmente em colapso devido a quatro falhas estruturais críticas:

```mermaid
graph TD
    A["Assistente de IA em Chat Monolítico Único"] --> B["1. Saturação & Vazamento de Contexto"]
    A --> C["2. Ausência de Especialização de Papéis"]
    A --> D["3. Viés do Autor (Self-Review Bias)"]
    A --> E["4. Ausência de Portões Determinísticos"]

    B --> F["Alucinação Cumulativa & Degradação de Código"]
    C --> F
    D --> F
    E --> F
```

1. **Saturação da Janela de Contexto e Amnésia Arquitetural (*Lost-in-the-Middle*):**  
   Conforme o histórico ultrapassa dezenas de mensagens e milhares de tokens, modelos de linguagem sofrem diluição severa de atenção. Restrições e invariantes críticas estabelecidas no passo 1 são silenciosamente esquecidas pelo passo 20.
2. **Emaranhamento Cognitivo (*Faz-Tudo, Especialista em Nada*):**  
   Um agente tentando planejar a arquitetura, escrever regras de banco de dados, desenhar CSS, rodar testes e documentar simultaneamente gera código superficial, incoerente e frágil.
3. **O Viés do Autor (*Self-Review Bias*):**  
   O agente que gerou o código tende a declarar sua própria criação como "perfeita e livre de falhas". Sem separação formal entre quem constrói e quem audita, bugs silenciosos e falhas de segurança escapam para produção.
4. **Ausência de Portões Determinísticos Rígidos (*Hard Gates*):**  
   Sessões monolíticas concluem tarefas com base em declarações retóricas otimistas (*"Pronto, implementei tudo com sucesso!"*) em vez de provas empíricas extraídas do terminal com exit code `0`.

### O Remédio do Antigravity Foundry

O **Antigravity Foundry** substitui a ingenuidade do chat único por uma **Arquitetura Dual-Layer (Camada Dupla)** de alta governança:
- **Camada 1 (Orquestração Soberana):** O Maestro Central planeja, decompõe tarefas, questiona socraticamente e gerencia portões, **sem jamais escrever código de aplicação diretamente**.
- **Camada 2A (Workers de Construção):** 3 subagentes hiperespecialistas que recebem tarefas atômicas com janelas de contexto limpas e entregam contratos formais de handoff.
- **Camada 2B (Verifiers Gatekeepers):** 6 auditores adversariais independentes que avaliam o código entregue sob 6 domínios distintos. **Uma única rejeição veta o commit.**

```mermaid
flowchart TB
    subgraph Layer1 ["CAMADA 1: GOVERNANÇA SOBERANA & ORQUESTRAÇÃO"]
        Maestro["antigravity-orchestrator<br/>(Maestro Central / Governador)"]
        State["Memória Persistente & Estado de Sessão<br/>(Task State, Handshake, Brain)"]
        Cockpit["Antigravity Cockpit 2D<br/>(Telemetria SSE em Tempo Real & Áudio)"]
        Maestro <--> State
        Maestro --> Cockpit
    end

    subgraph Layer2Workers ["CAMADA 2A: WORKERS CONSTRUTORES (IMPLEMENTAÇÃO)"]
        direction LR
        W1["foundry-builder<br/>(Sistemas & Infraestrutura)"]
        W2["software-engineer<br/>(Full-Stack Frontline)"]
        W3["backend-engineer<br/>(Banco de Dados & APIs)"]
    end

    subgraph Layer2Verifiers ["CAMADA 2B: VERIFIERS GATEKEEPERS (AUDITORIA INDEPENDENTE)"]
        direction LR
        V1["enterprise-architect<br/>(Governança & 4 Leis)"]
        V2["code-reviewer<br/>(Clean Code & SOLID)"]
        V3["security-auditor<br/>(OWASP & Defesa)"]
        V4["test-engineer<br/>(Casos de Borda & Prova Real)"]
        V5["web-performance-auditor<br/>(Core Web Vitals & Latência)"]
        V6["anti-slop-ui-auditor<br/>(20 Zonas Anti-Slop & WCAG)"]
    end

    Maestro ==>|"1. Despacha Subtarefa Isolada"| Layer2Workers
    Layer2Workers ==>|"2. Submete Código & Contrato de Handoff"| Layer2Verifiers
    Layer2Verifiers ==>|"3. Auditoria em Loop Fechado (100% PASS Unânime)"| Maestro
    Maestro ==>|"4. Commit Semântico & Push"| Production[("Release Homologada em Produção")]

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

## ⚡ UX Sem Sobrecarga: Roteamento Proativo Automático (Zero Comandos Manuais)

Em outros frameworks agênticos, você é forçado a memorizar dezenas de comandos `/slash` (`/spec`, `/grill`, `/clean-code`) ou invocar `@agentes` manualmente a cada etapa. No **Antigravity Foundry**, você não precisa virar operador de terminal: você conversa normalmente em **linguagem natural humana**.

> [!TIP]
> **Zero-Overhead UX (Roteamento Autônomo):** Em outros ecossistemas, você é forçado a lembrar dezenas de comandos `/slash` ou invocar `@agentes` manualmente. No Antigravity Foundry, você conversa normalmente em linguagem natural. O Maestro analisa sua intenção, ativa as skills certas no background e aciona a esteira de subagentes automaticamente. Menos atrito, máxima engenharia.

### O Que Você Digita ➔ O Que o Foundry Faz Sozinho nos Bastidores

| O Que Você Digita Casualmentente | O Que o Foundry Faz Sozinho nos Bastidores |
| :--- | :--- |
| *"Adicione um campo de telefone com máscara na tela de clientes"* | 1. Ativa `spec-driven-development` e dispara Grill-Me socrático sobre validação e formato E.164.<br>2. Despacha `backend-engineer` para migration SQL DDL e endpoint REST.<br>3. Emite Contrato de Handoff e aciona `frontend-engineer` para input com tipografia acessível.<br>4. Convoca os 6 Verifiers para auditoria unânime antes do commit. |
| *"Deu erro 500 no login ao enviar token expirado"* | 1. Ativa `debugging-and-error-recovery` (análise de causa-raiz em 6 passos).<br>2. Despacha `backend-engineer` para criar teste de regressão que reproduz a falha.<br>3. Aplica tratamento limpo com `401 Unauthorized` tipado e sem vazamento de stacktrace.<br>4. Submete a `security-auditor` e `test-engineer` com exit code `0`. |
| *"Precisa criar uma tabela de fornecedores vinculada a compras"* | 1. Ativa `database-migrations-sql-migrations` e `database-optimizer`.<br>2. `backend-engineer` formula migration idempotente com índices, foreign keys e rollback reversível.<br>3. `enterprise-architect` audita integridade relacional e limites de domínio. |
| *"Os cards do dashboard estão desalinhados e o botão salvar sumiu"* | 1. Ativa `frontend-ui-engineering` e `anti-slop-ui-auditor`.<br>2. `frontend-engineer` ajusta layout com CSS Grid/Flexbox e foco visível.<br>3. Auditor avalia contraste WCAG 2.1 AA (> 4.5:1) e erradica vícios visuais de IA. |
| *"Terminamos a feature, pode commitar e enviar"* | 1. Roda a suíte completa de testes (`test-engineer`).<br>2. Inspeciona conformidade Clean Code e complexidade ciclomática (`code-reviewer`).<br>3. Executa `pre_commit_secrets_shield.py` garantindo zero vazamento de chaves.<br>4. Despacha commit semântico formatado (`feat: ...`). |

---

## 🏛️ 2. A Matriz Multi-Agente Dual-Layer

Cada agente no ecossistema possui escopo cognitivo estrito, ferramentas autorizadas delimitadas e uma estação de trabalho dedicada no Cockpit 2D:

| Identificador do Agente | Camada | Sala do Cockpit | Especialização Central & Responsabilidades | Ferramentas Autorizadas | Veredito de Portão |
| :--- | :---: | :---: | :--- | :--- | :---: |
| **`antigravity-orchestrator`** | **Camada 1 (Maestro)** | Command Center | Governança do roadmap, decomposição em WBS, interrogatório socrático, aplicação de portões, despacho de agentes. | `send_message`, `manage_task`, `view_file`, `list_dir` | Condutor Soberano |
| **`foundry-builder`** | **Camada 2A (Worker)** | Central Lab | Scaffolding full-stack, configuração de ambiente, scripts de build multiplataforma (`.ps1`, `.sh`, `.bat`), empacotamento. | `write_to_file`, `replace_file_content`, `run_command`, `manage_task`, `list_dir`, `view_file`, `grep_search`, `send_message` | Entregável |
| **`software-engineer`** | **Camada 2A (Worker)** | Development | Componentes web reativos, UI/UX moderna, estado no cliente, consumo de APIs, responsividade mobile/desktop estrita. | `write_to_file`, `replace_file_content`, `view_file`, `grep_search`, `generate_image`, `send_message` | Entregável |
| **`backend-engineer`** | **Camada 2A (Worker)** | Development | APIs RESTful corporativas, queries parametrizadas seguras, transações ACID, locks concorrentes (`SELECT FOR UPDATE`), migrações DDL. | `write_to_file`, `replace_file_content`, `view_file`, `grep_search`, `run_command`, `send_message` | Entregável |
| **`enterprise-architect`** | **Camada 2B (Verifier)** | Governance | Aplicação das 4 Leis Comportamentais de Karpathy, integridade dos limites de domínio, redação formal de ADRs (`docs/adr/`). | `view_file`, `grep_search`, `list_dir`, `send_message` | `PASS / REVISE` |
| **`code-reviewer`** | **Camada 2B (Verifier)** | Governance | Clean Code de Robert C. Martin (Uncle Bob), princípios SOLID, complexidade ciclomática (< 10), conformidade DRY, zero débito técnico. | `view_file`, `grep_search`, `send_message` | `PASS / REVISE` |
| **`security-auditor`** | **Camada 2B (Verifier)** | Bunker | Defesa OWASP Top 10, sanitização zero-trust, imunidade a SQL Injection, erradicação de CSRF/XSS, scanner de credenciais e RBAC/IDOR. | `view_file`, `grep_search`, `run_command`, `send_message` | `PASS / REVISE` |
| **`test-engineer`** | **Camada 2B (Verifier)** | QA Testing | Suítes de testes unitários, integração e regressão, cobertura de casos de borda (mínimo 80%), asserções empíricas no terminal CLI. | `view_file`, `grep_search`, `run_command`, `send_message` | `PASS / REVISE` |
| **`web-performance-auditor`**| **Camada 2B (Verifier)** | Bunker / QA | Core Web Vitals (LCP, INP, CLS), desempenho de consultas SQL, eliminação de loops N+1, auditoria de vazamento de memória e latência p95. | `view_file`, `grep_search`, `run_command`, `send_message` | `PASS / REVISE` |
| **`anti-slop-ui-auditor`** | **Camada 2B (Verifier)** | QA Lab | Auditoria das 20 Zonas Canônicas Anti-Slop, fidelidade ao Design System, acessibilidade digital WCAG 2.1 AA e emissão de Scorecard (0-100). | `view_file`, `grep_search`, `send_message` | `PASS / REVISE` |

---

## 🔒 3. Gated SDLC & O Método Fundido de Trabalho

O desenvolvimento no Antigravity Foundry é estritamente regido pelo **Método Fundido de Trabalho** — um pipeline sequencial fechado em 5 etapas onde a progressão depende de aprovação formal de portões:

```
[Etapa 1: Grill-Me] ──► [Etapa 2: Spec] ──► [Etapa 3: Construção] ──► [Etapa 4: 6 Verifiers] ──► [Etapa 5: Commit]
  5 Provas Socráticas    implementation_plan.md   Workers constroem em      Aprovação Unânime 100%      Prova Real &
  Análise de Borda       Portões de Aceite        contextos isolados        Veto com Tolerância Zero    Push Seguro
```

### Etapa 1: Grill-Me Socrático (`/socratic-grill`)
Antes de tocar em qualquer arquivo de código ou documentação, o sistema executa um interrogatório socrático rigoroso cobrindo Casos de Borda, Regras de Negócio/RBAC, Limites de Interface e Critérios Objetivos de Sucesso.

### Etapa 2: Especificação Técnica & Plano de Implementação (`/spec`)
O Maestro elabora o documento formal `implementation_plan.md` definindo:
- Objetivos executivos e limites de domínio (*Boundaries: Always / Ask First / Never*).
- Contratos exatos de DTO e payload entre backend e frontend.
- Alterações em schemas de banco de dados com migrações reversíveis.
- Comandos determinísticos de terminal necessários para comprovar o sucesso do código.

### Etapa 3: Construção por Workers Especialistas
O Maestro invoca sequencialmente os Workers necessários (`backend-engineer` ➔ `frontend-engineer` ou `software-engineer`). Cada Worker opera focado exclusivamente em seu domínio e emite um **Relatório de Contrato de Handoff** ao finalizar.

### Etapa 4: Auditoria em Loop Fechado pelos 6 Verifiers Gatekeepers (`/gates-check`)
O código produzido é submetido simultaneamente aos 6 Verifiers. **Nenhum código entra na base sem aprovação unânime 6/6 `[ 🟢 PASS ]`.** Se qualquer auditor emitir `[ 🔴 REVISE ]`, o código retorna ao Worker responsável com uma Punch List cirúrgica. O ciclo possui um *Circuit Breaker* de até 3 rodadas automáticas antes de solicitar mediação humana.

### Etapa 5: Prova Real Empírica e Commit Semântico (`/semantic-commit`)
As asserções são validadas pela execução real de testes no terminal CLI (exit code `0`). O relatório `walkthrough.md` é gerado com as evidências capturadas, o scanner de segredos (`pre_commit_secrets_shield.py`) inspeciona o diff e o commit semântico é despachado.

---

## 🎨 4. As 20 Zonas Canônicas Anti-AI Slop & Design System

O Foundry integra um Design System corporativo de nível institucional, desenvolvido especificamente para erradicar os vícios estéticos característicos de código gerado por inteligências artificiais (*AI Slop* / *Vibecoding*). As interfaces seguem o rigor tipográfico e minimalista do design suíço (padrão Stripe, Linear, GitHub, Vercel):

```
                   AS 20 ZONAS DE BLINDAGEM VISUAL ANTI-SLOP
  ┌────────────────────────────────────────────────────────────────────────┐
  │ 01. ZERO GRADIENTES ROXOS/AZUIS ──► Proibido purple-to-blue genérico   │
  │ 02. ZERO GRADIENT HERO TEXT     ──► Proibido text-transparent clip     │
  │ 03. ZERO EMOJIS EM TÍTULOS      ──► 100% Ícones vetoriais semânticos   │
  │ 04. NUMERAIS TABULARES FIXOS    ──► tabular-nums em métricas e dados   │
  │ 05. GHOST BORDERS DE 1PX        ──► Proibido bordas neon espessas      │
  │ 06. CARDS SÓLIDOS (ANTI-GLASS)  ──► Proibido backdrop-blur em leitura  │
  │ 07. ALTO CONTRASTE (WCAG AA/AAA)──► Proibido cinza claro sobre branco  │
  │ 08. BENTO GRIDS DE NEGÓCIO REAL ──► Proibido 3 cartões vazios de ícone │
  │ 09. HIERARQUIA PURA DO H1       ──► Proibido badge flutuando sobre h1  │
  │ 10. ÍCONES SÓLIDOS PADRONIZADOS ──► SVGs coesos com espessura uniforme │
  │ 11. IDENTIDADE CORPORATIVA B2B  ──► Tema institucional autêntico       │
  │ 12. GPU ANIMATION COMPOSITOR    ──► Apenas transform e opacity 60 FPS  │
  │ 13. ZERO CURSOR BEAMS / AURORAS ──► Proibido feixes no mouse           │
  │ 14. BOTÕES SÓLIDOS DE FÁBRICA   ──► Hover apenas escurece 8% a 10%     │
  │ 15. GRADE SISTEMÁTICA DE 8PX    ──► Proibido paddings arbitrários      │
  │ 16. TIPOGRAFIA EDITORIAL LIMPA  ──► Proibido travessões em-dash longos │
  │ 17. VOCABULÁRIO REAL DE NEGÓCIO ──► Proibido buzzwords vazias de IA    │
  │ 18. SANS-SERIF HOMOGÊNEA        ──► Proibido itálicos serifados soltos │
  │ 19. ESCALA MODULAR COESA        ──► Proporções harmônicas de fonte     │
  │ 20. SUPERFÍCIES FOSCAS LIMPAS   ──► Zero textura/ruído sobreposto      │
  └────────────────────────────────────────────────────────────────────────┘
```

A especificação completa das 20 zonas e tokens de estilização está documentada em [`.agents/rules/02_design_system_and_anti_slop.md`](.agents/rules/02_design_system_and_anti_slop.md).

---

## 🕹️ 5. Antigravity Office 2D Pixel Art Cockpit

O **Antigravity Cockpit 2D** é um Centro de Comando retro em Pixel Art executado nativamente sobre HTML5 Canvas a 60 FPS. Ele oferece observabilidade visual contínua e em tempo real sobre o esquadrão de agentes:

```
+-------------------------------------------------------------------------+
|                  SALA 1: ORQUESTRAÇÃO & COMANDO CENTRAL                 |
|             (Mesa Central do Maestro - antigravity-orchestrator)        |
+------------------------------------+------------------------------------+
|    SALA 2: SALA DE GOVERNANÇA      |    SALA 3: BUNKER DE SEGURANÇA     |
|  - enterprise-architect            |  - security-auditor                |
|  - code-reviewer                   |  - web-performance-auditor         |
+------------------------------------+------------------------------------+
|    SALA 4: LABORATÓRIO DE DEV      |    SALA 5: LABORATÓRIO DE QA & DOC |
|  - software-engineer               |  - test-engineer                   |
|  - backend-engineer                |  - anti-slop-ui-auditor            |
|  - foundry-builder                 |                                    |
+------------------------------------+------------------------------------+
```

### Funcionalidades do Cockpit:
- **Engine Canvas a 60 FPS:** Sprites em pixel art com animações dinâmicas de caminhada, digitação no teclado, reflexão e celebração em consenso verde.
- **Web Audio API Procedural 8-bit:** Zero arquivos `.mp3` externos. Síntese nativa por ondas quadradas e senoidais de efeitos sonoros chiptune (Beeps de Step, Woosh de Handoff, Fanfarra de Aprovação e Alarme de Violação).
- **Telemetria Server-Sent Events (SSE) em Tempo Real:** Varredura contínua de transcrições e streaming de eventos instantâneos para o navegador em `http://localhost:4444`.
- **Modal Inspetor de Agentes:** Clique em qualquer avatar para inspecionar em tempo real a ferramenta ativa, contador de passos, tarefa em andamento, Chain-of-Thought e temperatura do modelo.
- **HUD de Métricas e Consumo de Tokens:** Gráficos de capacidade da janela de contexto, quotas e velocidade de geração de tokens.

Para instruções completas de operação, consulte [docs/05_COCKPIT_GUIDE.md](docs/05_COCKPIT_GUIDE.md).

---

## 🧰 6. Catálogo das 18 Skills Puras do Núcleo

O Foundry disponibiliza 18 habilidades universais padronizadas acessíveis via comandos `/slash` ou acionadas autonomamente pelo Maestro:

| Comando | Nome da Skill | Agente Primário | Escopo Operacional |
| :--- | :--- | :---: | :--- |
| **`/metodo-fundido`** | Orquestração Completa do Gated SDLC | `antigravity-orchestrator` | Conduz o pipeline ponta a ponta de 5 etapas para novas features ou refatorações. |
| **`/spec`** | Redação de Especificação Técnica | `antigravity-orchestrator` | Gera o `implementation_plan.md` com contratos de dados e portões de aceite. |
| **`/socratic-grill`** | Interrogatório Socrático de Borda | `enterprise-architect` | Bateria interrogatória profunda desafiando requisitos frágeis e casos de borda. |
| **`/adr`** | Registro de Decisão de Arquitetura | `enterprise-architect` | Redige documentação formal `ADR-XXXX.md` na pasta `docs/adr/`. |
| **`/clean-code`** | Auditoria Clean Code & SOLID | `code-reviewer` | Avalia complexidade ciclomática (< 10), tamanho de métodos (< 25 linhas) e clareza. |
| **`/cybersecurity-audit`**| Auditoria de Vulnerabilidades OWASP | `security-auditor` | Varredura contra SQL Injection, XSS, CSRF, IDOR e mutações não autorizadas. |
| **`/test-runner`** | Execução de Suíte de Testes | `test-engineer` | Executa runners automatizados (`npm test`, `pytest`, `phpunit`, `go test`) com cobertura >= 80%. |
| **`/perf-audit`** | Auditoria de Latência & Queries | `web-performance-auditor` | Audita planos de execução `EXPLAIN`, elimina loops N+1 e garante p95 < 200ms. |
| **`/gates-check`** | Aceite Determinístico de Portões | `foundry-builder` | Roda em sequência os portões do `GATES.md`, abortando caso exit code != 0. |
| **`/walkthrough`** | Compilação de Relatório Homologado | `enterprise-architect` | Compila o `walkthrough.md` com evidências do terminal, carrosséis e checklists. |
| **`/cockpit-telemetry`** | Status & Diagnóstico do Cockpit | `foundry-builder` | Valida integridade do stream SSE na porta 4444 e monitora transcrições do Brain. |
| **`/backend-scaffold`** | Scaffold de Backend Tipado & Seguro | `backend-engineer` | Cria controllers REST, DTOs tipados e repositórios com queries parametrizadas seguras. |
| **`/frontend-component`**| Construtor de UI Anti-Slop | `software-engineer` | Cria componentes de interface acessíveis WCAG 2.1 AA e fiéis às 20 zonas. |
| **`/database-migration`**| Migração DDL Idempotente Reversível| `backend-engineer` | Gera migrações DDL seguras com suporte compulsório a script de rollback (*Down*). |
| **`/code-review`** | Revisão por Pares Multi-Agente | `code-reviewer` | Emite tabelas de auditoria de diff com parecer formal `APPROVED` ou `REVISE`. |
| **`/secret-scan`** | Scanner Ativo de Vazamento | `security-auditor` | Varre arquivos staged no Git contra tokens cloud, chaves de IA e senhas de banco. |
| **`/api-contract`** | Gerador de Contratos de Handoff | `antigravity-orchestrator` | Produz contratos JSON/TypeScript tipados para desenvolvimento paralelo. |
| **`/semantic-commit`** | Commit Semântico Padronizado | `foundry-builder` | Gera commits no padrão Conventional Commits (`feat:`, `fix:`, `docs:`, `test:`). |

Exemplos detalhados de uso de cada skill estão disponíveis em [docs/04_SKILLS_CATALOG.md](docs/04_SKILLS_CATALOG.md).

---

## 🛡️ 7. Pre-Commit Secrets Shield

A segurança no Antigravity Foundry é proativa, automatizada e inegociável. O script integrado **Pre-Commit Secrets Shield** (`.agents/scripts/pre_commit_secrets_shield.py`) é executado antes de qualquer commit no Git:

```
git commit -m "feat: implementar gateway de pagamento"
               │
               ▼
[HOOK] .git/hooks/pre-commit
               │
               ▼
python .agents/scripts/pre_commit_secrets_shield.py
               │
       ┌────────┴────────┐
       ▼                 ▼
[PASS: 0 Segredos]   [BLOQUEADO: Segredo Detectado!]
Commit avança.       Commit abortado sumariamente com Exit Code 1.
```

### Assinaturas Ativamente Monitoradas:
- **Chaves de Nuvem e Provedores de IA:** OpenAI (`sk-proj-...`, `sk-...`), Anthropic Claude (`sk-ant-...`), Google Gemini / Cloud (`AIza...`), AWS Access Keys (`AKIA...`, Secret Key).
- **Controle de Versão & Autenticação:** GitHub Tokens (`ghp_...`, `gho_...`, `github_pat_...`), tokens JWT (`eyJ...`).
- **Chaves Criptográficas Privadas:** Blocos de chaves privadas RSA, OpenSSH, PGP, EC (ex: placeholder `-----BEGIN PRIVATE KEY-----`).
- **Bancos de Dados & Credenciais:** URIs de conexão completas (`postgres://`, `mysql://`, `mongodb://`) e senhas explícitas em variáveis de ambiente staged.

---

## 🚀 8. Início Rápido & Instalação

### Pré-Requisitos do Sistema
- **Git** (`git --version`)
- **Python 3.8+** (`python --version` ou `python3 --version`)
- **Node.js 18+ LTS** (`node --version`)

### Instalador em 1 Clique para Windows (PowerShell)
```powershell
# Clone o repositório
git clone https://github.com/mrcodingdev/antigravity-foundry.git
cd antigravity-foundry

# Execute o instalador automatizado
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

### Instalador em 1 Clique para Linux / macOS (Bash)
```bash
# Clone o repositório
git clone https://github.com/mrcodingdev/antigravity-foundry.git
cd antigravity-foundry

# Execute o instalador automatizado
chmod +x install.sh
./install.sh
```

### Inicializando o Cockpit 2D em Pixel Art

**Windows:**
```powershell
.\cockpit\start-cockpit.bat
```

**Linux / macOS:**
```bash
./cockpit/start-cockpit.sh
```

O Centro de Comando retro será aberto automaticamente no seu navegador padrão em **`http://localhost:4444`**.

### Acoplando o Foundry em um Projeto Já Existente
Para adicionar o poder do Antigravity Foundry a qualquer repositório existente:
1. Copie as pastas `.agents/` e `templates/` para a raiz do seu projeto.
2. Ative o hook de pré-commit:
   ```bash
   python .agents/scripts/pre_commit_secrets_shield.py
   ```
3. Inicie suas sessões invocando os subagentes ou executando qualquer skill (ex: `/metodo-fundido "Criar novo módulo de faturamento"`).

---

## 🛠️ 9. Guia de Customização e Adaptação sob Medida

Embora o Antigravity Foundry seja **100% plug-and-play e zero-config** para uso imediato em qualquer base de código, seu verdadeiro superpoder reside na **facilidade de customização modular**:

- **Totalmente Agnóstico:** Utilize de fábrica com Node/TypeScript, Python, Go, Rust, Java, C# ou PHP.
- **Ajuste as Regras da Sua Empresa (`.agents/rules/`):** Injete a paleta de cores institucional da sua marca no `02_design_system_and_anti_slop.md` e adicione limites arquiteturais do time no `01_core_architecture_rules.md`.
- **Especialize os Workers para a Sua Stack (`.agents/subagents/workers/`):**
  * Adapte `backend-engineer.md` para FastAPI/SQLAlchemy, NestJS/Prisma, Go/Gin/pgx ou Laravel.
  * Adapte `frontend-engineer.md` para Next.js (App Router), Vue/Nuxt, SvelteKit ou Tailwind CSS.
- **Conecte os Verifiers às Ferramentas Reais da Empresa (`.agents/subagents/verifiers/`):** Configure o `test-engineer` e o `code-reviewer` para rodar seus linters reais (`eslint`, `ruff`, `golangci-lint`) e suítes de teste (`npm test`, `pytest`, `cargo test`, `go test`).
- **Crie Novas Skills de Domínio (`.agents/skills/`):** Encapsule regras complexas da sua empresa (ex: gateway Stripe/PIX, regras fiscais, autenticação OAuth2, conformidade LGPD/GDPR) em novas skills reutilizáveis.
- **Personalize o Cockpit 2D (`cockpit/`):** Altere nomes de agentes, cores, avatares e adicione novas salas temáticas.

👉 **Manual Completo Passo a Passo:** Leia [**`docs/06_ADAPTATION_AND_CUSTOMIZATION_GUIDE.md`**](docs/06_ADAPTATION_AND_CUSTOMIZATION_GUIDE.md) com receitas prontas para todas as stacks.

---

## 🏛️ 10. Inspirações Fundacionais: O Hall da Fama das 60 Tecnologias

O Antigravity Foundry foi construído sobre os ombros de gigantes. Ele consolida **60 dos projetos e repositórios mais influentes do mundo** em IA agêntica, engenharia de software e cibersegurança, catalogados cronologicamente em **7 Levas de Pesquisa**:

| Leva | Domínio Técnico | Qtd. | Destaques Canônicos |
| :---: | :--- | :---: | :--- |
| **Leva 1** | Fundamentos de IA, SDLC e Qualidade Web | 18 | `andrej-karpathy-skills`, `agent-skills` (Addy Osmani), `skills` (Matt Pocock Grill-Me), `Clean Code`, `hallmark` |
| **Leva 2** | Cibersegurança Ofensiva, Core Web Vitals e Disciplina | 20 | `strix` (No exploit no report), `Anthropic-Cybersecurity-Skills` (MITRE F3), `unlazy` (Hard Gates), `critical` |
| **Leva 3** | Harnesses e Softwares Executáveis | 5 | `munder-difflin` (Pixel Art Single-Committer), `claude-mem` (Progressive Disclosure), `VoltAgent` (Circuit Breaker) |
| **Leva 4** | Loops Autônomos & Motores de Execução | 4 | `aiden` (Proof over Declared Done), `pi` (Supply-Chain Hardening), `ralph` (Fresh Context Loop) |
| **Leva 5** | Servidores MCP de Alta Performance | 7 | `pagespeed-insights-mcp`, `dechonet-mcp`, `siteaudit-mcp`, `codebase-memory-mcp` (Tree-Sitter AST) |
| **Leva 6** | Ecossistema Corporativo, Fiscal & Agentes | 5 | `dolibarr` (Pragmatismo ERP), `nfe.io` (Filas Assíncronas), `no-ai-slop` (Peter Yang), `agency-agents` |
| **Leva 7** | Engenharia Documental e Automação Office | 1 | `OfficeCLI` (Automação CLI headless de `.docx`, `.xlsx`, `.pptx` sem suíte instalada) |
| **TOTAL** | **Ecossistema Unificado Antigravity Foundry** | **60** | **O Estado da Arte Global em Engenharia Agêntica** |

👉 **Compêndio Completo das 60 Tecnologias:** Leia [**`docs/00_FOUNDATIONAL_REFERENCES.md`**](docs/00_FOUNDATIONAL_REFERENCES.md) com análise minuciosa de cada autor, conceito primordial e matriz de rastreabilidade completa.

---

## 📚 11. Índice de Documentação

O repositório inclui uma suíte completa e modular de documentação técnica localizada nas pastas [`docs/`](docs/) e [`templates/`](templates/):

### Manuais Técnicos Oficiais
- **[`docs/00_FOUNDATIONAL_REFERENCES.md`](docs/00_FOUNDATIONAL_REFERENCES.md)**: Compêndio oficial do Hall da Fama das 60 tecnologias, linhagem open-source e matriz de rastreabilidade.
- **[`docs/01_ARCHITECTURE.md`](docs/01_ARCHITECTURE.md)**: Imersão profunda no modelo mental Dual-Layer, mecânica de orquestração e segregação de papéis.
- **[`docs/02_THE_GATED_SDLC.md`](docs/02_THE_GATED_SDLC.md)**: Detalhamento das 5 etapas do Método Fundido, contratos de portão e critérios de saída.
- **[`docs/03_AGENT_MATRIX.md`](docs/03_AGENT_MATRIX.md)**: Fichas técnicas completas de todos os subagentes, ferramentas autorizadas e personas.
- **[`docs/04_SKILLS_CATALOG.md`](docs/04_SKILLS_CATALOG.md)**: Manual exaustivo de todas as 18 skills universais `/slash` com exemplos práticos.
- **[`docs/05_COCKPIT_GUIDE.md`](docs/05_COCKPIT_GUIDE.md)**: Guia operacional do Cockpit 2D em Pixel Art, sintetizador Web Audio e telemetria SSE.
- **[`docs/06_ADAPTATION_AND_CUSTOMIZATION_GUIDE.md`](docs/06_ADAPTATION_AND_CUSTOMIZATION_GUIDE.md)**: Guia definitivo para customizar regras, workers, verifiers e skills para a sua própria stack.
- **[`docs/07_THE_FOUNDRY_JOURNEY_AND_MANIFESTO.md`](docs/07_THE_FOUNDRY_JOURNEY_AND_MANIFESTO.md)**: **O Manifesto Épico:** Da falácia dos chats monolíticos à fábrica autônoma, com os 10 Mandamentos da Engenharia Agêntica.
- **[`docs/08_STEP_BY_STEP_TUTORIALS.md`](docs/08_STEP_BY_STEP_TUTORIALS.md)**: **Tutoriais Práticos Passo a Passo:** Setup em 2 min, ciclo Gated SDLC de ponta a ponta, adaptação de stacks e uso do Cockpit 2D.

### Templates Canônicos de Governança
- **[`templates/implementation_plan_template.md`](templates/implementation_plan_template.md)**: Modelo padrão de especificação técnica e plano de implementação.
- **[`templates/gates_contract_template.md`](templates/gates_contract_template.md)**: Contrato determinístico de verificação dos 6 portões.
- **[`templates/adr_template.md`](templates/adr_template.md)**: Registro de Decisão de Arquitetura no padrão Michael Nygard.
- **[`templates/walkthrough_template.md`](templates/walkthrough_template.md)**: Relatório de homologação e entrega com provas de execução no terminal.

---

## 👤 12. Autor, Comunidade & Licença

O **Antigravity Foundry** é projetado com rigor arquitetural e disciplina por **Douglas** ([@mrcodingdev](https://github.com/mrcodingdev)).

- **Perfil do Autor:** [GitHub @mrcodingdev](https://github.com/mrcodingdev)
- **Compatibilidade:** Desenvolvido nativamente para o Google Antigravity 2.0.
- **Licença:** Distribuído sob a permissiva [Licença MIT](LICENSE). Você é livre para utilizar, modificar e distribuir este ecossistema para projetos pessoais e comerciais.

<div align="center">

---

*“A simplicidade é pré-requisito para a confiabilidade.” — Edsger W. Dijkstra*  
*Construído com precisão cirúrgica para a engenharia de software soberana.*

</div>
