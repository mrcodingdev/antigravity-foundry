---
name: metodo-fundido
description: Protocolo Mestre de Engenharia de Software do Antigravity Foundry (com casos didáticos de sistemas corporativos). Funde o Matt Pocock Grill-Me Protocol, Addy Osmani Gated SDLC, as 4 Leis de Andrej Karpathy, Clean Code de Uncle Bob Martin e a Esteira Rigorosa de Subagentes Especialistas (3 Workers + 6 Verifiers).
---

# ⚡ MÉTODO FUNDIDO DE TRABALHO (ENTERPRISE SDLC)
**A Metodologia Oficial e Mandatória de Engenharia de Software do Antigravity Foundry**

O **Método Fundido de Trabalho** é a fusão de elite dos 6 maiores pilares de engenharia de software e inteligência artificial aplicada:
1. **Matt Pocock Grill-Me Protocol (Phase 0):** Interrogatório socrático rigoroso antes de tocar em qualquer arquivo.
2. **Addy Osmani Gated SDLC (Phase 1 & 2):** Especificação formal (`SPEC`), decomposição atômica de tarefas e aprovação de planos.
3. **As 4 Leis de Andrej Karpathy:** Engenharia cirúrgica (*Think Before Coding*, *Simplicity First*, *Surgical Changes*, *Goal-Driven Execution*).
4. **Uncle Bob Martin's Clean Code:** Princípios SOLID, funções atômicas de responsabilidade única e blindagem defensiva.
5. **Esteira de Subagentes Workers (Phase 3):** Cláusula Pétrea — Orquestrador Maestro proibido de codificar; construção exclusiva por `@backend-engineer`, `@frontend-engineer` e `@software-engineer`.
6. **Bateria Multicamadas de Verifiers & Gatekeepers (Phase 4):** Auditoria em 5 eixos por `@code-reviewer`, 20 Zonas por `@anti-slop-ui-auditor`, integridade corporativa por `@enterprise-architect`, testes automatizados por `@test-engineer`, cibersegurança por `@security-auditor` e web performance por `@web-performance-auditor`.


---

## 🔄 O FLUXO EM 6 ETAPAS SEQUENCIAIS MANDATÓRIAS

```
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                 MÉTODO FUNDIDO DE TRABALHO (6 ETAPAS)                                   │
└─────────────────────────────────────────────────────────────────────────────────────────────────────────┘
                                                     │
   [ ETAPA 1: GRILL-ME ] ──► Interrogatório Socrático (Matt Pocock) com o desenvolvedor humano.
             │               (4 Pilares: Casos de Borda, RBAC, Design System e Critérios de Sucesso).
             ▼
   [ ETAPA 2: SPEC OSMANI ] ──► Geração do implementation_plan.md formal (Addy Osmani).
             │                 (Arquitetura, tabelas SQL, boundaries Always/Ask/Never e WBS Tasks).
             ▼
   [ ETAPA 3: WORKER BACKEND ] ──► Subagente @backend-engineer constrói a lógica de servidor, APIs, persistência de banco de dados (ex: Node/TypeScript, Python, Go, PHP, Rust) e emite o Relatório de Contrato de Handoff.
             │                     (Emite o Relatório de Contrato de Handoff com variáveis).
             ▼
   [ ETAPA 4: WORKER FRONTEND ] ──► Subagente @frontend-engineer consome o contrato e monta a UI.
             │                     (Aplica Design System Oficial Anti-Slop, 100% botões sólidos e WCAG 2.1).
             ▼
   [ ETAPA 5: VERIFIERS QA ] ──► Auditoria em Paralelo pelos 6 Gatekeepers:
             │                   • @enterprise-architect (Governança, domínio, regras de negócio e dados).
             │                   • @code-reviewer (5 Eixos: Correção, Segurança, Arquitetura, Legibilidade, Perf).
             │                   • @anti-slop-ui-auditor (20 Zonas Anti-Slop, Scorecard 100/100, WCAG 2.1 AA).
             │                   • @test-engineer (Execução de testes automatizados no terminal CLI).
             │                   • @security-auditor (Defesa ativa OWASP Top 10 e Pentest Zero-Leak).
             │                   • @web-performance-auditor (Core Web Vitals e Latência).
             ▼
   [ ETAPA 6: WALKTHROUGH & GIT ] ──► Walkthrough.md com evidências de teste, Conventional Commit
                                      semântico e push para o repositório oficial.

```

---

## 📋 DETALHAMENTO DE CADA ETAPA DO MÉTODO FUNDIDO

### 🎯 ETAPA 1: BATERIA GRILL-ME (MATT POCOCK)
Antes de abrir qualquer arquivo ou escrever código, o assistente DEVE formular uma bateria de perguntas socráticas cobrindo:
1. **Dados & Casos de Borda:** Como tratar nulos, vazios, estoque zero, CPF/CNPJ não informado, falha de rede ou datas passadas.
2. **RBAC & Permissões:** Perfis de Acesso & RBAC: Segregação rigorosa de privilégios (usuários não-privilegiados nunca visualizam dados sensíveis ou margens confidenciais).
3. **Design System:** Botões sólidos de fábrica, classes `.tabular-nums`, topbar limpa e ausência de AI Slop.
4. **Critérios Objetivos de Sucesso:** Qual script ou suíte de testes de terminal (CLI) comprovará que o módulo está 100% funcional.

---

### 📐 ETAPA 2: ESPECIFICAÇÃO GATED SDLC (ADDY OSMANI)
Com as respostas do Grill-Me, gerar o arquivo de planejamento formal (`implementation_plan.md`):
* **Objective:** Descrição executiva da funcionalidade ou refatoração.
* **Project Structure:** Lista exata de arquivos modificados ou criados.
* **Boundaries (Always / Ask First / Never):**
  - *Always:* Botões sólidos, Prepared Statements / ORM seguro, CSRF tokens, `tabular-nums`.
  - *Ask First:* Alterações de schema no banco de dados, novas dependências.
  - *Never:* O Agente Pai escrever código de aplicação sem autorização prévia por `ask_question`.
* **Task Breakdown (WBS):** Tarefas atômicas sequenciais numeradas.

---

### 🔨 ETAPA 3 & 4: ESTEIRA SEQUENCIAL DE WORKERS (CLÁUSULA PÉTREA #16)
* **Proibição do Agente Pai:** O Agente Pai NÃO escreve código de aplicação.
* **Exceção Interativa:** Somente com popup `ask_question` para tarefas atômicas triviais autorizadas com "Sim".
* **Pipeline Obrigatório:**
  1. `@backend-engineer` codifica a controladora, queries preparadas e emite o Relatório de Contrato.
  2. `@frontend-engineer` consome o contrato e renderiza a interface acessível (WCAG 2.1 AA) e botões sólidos.
  3. `@software-engineer` é utilizado para manutenções atômicas de arquivo único.

---

### 🔍 ETAPA 5: BATERIA DE AUDITORIA MULTICAMADAS & LOOP FECHADO (ZERO-ESCAPE QUALITY GATE)
Todo código produzido pelos Workers passa obrigatoriamente pelos 6 Gatekeepers:
* **`@enterprise-architect`:** Valida integridade do domínio de negócio, modelagem de dados e governança (ex. didático: regras de faturamento, integridade de transações, segregação de privilégios e auditoria contábil).
* **`@code-reviewer`:** Audita nos 5 Eixos (Corretude, Legibilidade, Arquitetura, Segurança OWASP e Performance).
* **`@anti-slop-ui-auditor`:** Audita as 20 Zonas de Blindagem Visual e emite Scorecard Oficial (0 a 100) com WCAG 2.1 AA.
* **`@test-engineer`:** Escreve e roda suíte de testes de prova real via terminal CLI (unitários, integração e carga K6).
* **`@security-auditor`:** Defesa ativa OWASP Top 10, caça de vulnerabilidades, scanner de segredos e pentest.
* **`@web-performance-auditor`:** Core Web Vitals (LCP, INP, CLS), latência de ponta a ponta e consumo de recursos.

#### 🔄 O PROTOCOLO MANDATÓRIO DE RE-AUDITORIA EM LOOP FECHADO:
1. **Regra de Ouro:** Se QUALQUER Verifier emitir rejeição (`[ 🔴 FAIL ]` ou `[ 🔴 REVISE ]`), o Agente Pai re-aciona a esteira de Workers especialistas (`backend-engineer` ➔ `frontend-engineer`) para corrigir todos os pontos da Punch List.
2. **Proibição Estrita de Bypass:** Ao término do trabalho dos Workers, o Agente Pai é **TERMINANTEMENTE PROIBIDO** de responder diretamente ao usuário ou avançar para a Etapa 6.
3. **Re-Auditoria Compulsória:** O Agente Pai DEVE OBRIGATORIAMENTE reinvocar os mesmos Verifiers para uma nova rodada de auditoria sobre o código corrigido.
4. **Circuit Breaker (Teto de 3 Rodadas):** O loop automático repete-se por até no máximo 3 rodadas. Caso persista reprovação após a 3ª rodada, o Agente Pai interrompe o loop e aciona o desenvolvedor humano via `ask_question` para mediação técnica.
5. **Critério de Saída do Loop:** Somente com aprovação unânime (`[ 🟢 PASS ]` ou `[ 🟢 APPROVE ]`) de 100% dos Verifiers o Agente Pai está autorizado a redigir o `walkthrough.md` e avançar para a Etapa 6.
6. **Transparência:** O Agente Pai deve relatar na entrega todas as rodadas executadas até a aprovação verde unânime.

---

### 🚀 ETAPA 6: DOCUMENTAÇÃO, VERSIONAMENTO E PUSH (KARPATHY + CONVENTIONAL COMMITS)
1. Geração do `walkthrough.md` com evidências de teste, notas dos auditores e instruções de validação.
2. Verificação pelo scanner pré-commit (`python .agents/scripts/pre_commit_secrets_shield.py`).
3. Execução de `git commit -m "<tipo>(<escopo>): <descrição>"` seguindo Conventional Commits semânticos.
4. `git push origin main` para o repositório oficial do projeto.


