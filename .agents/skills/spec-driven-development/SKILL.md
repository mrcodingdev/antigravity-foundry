---
name: spec-driven-development
description: Creates specs before coding. Use when starting a new project, feature, or significant change and no specification exists yet. Integrates Addy Osmani's Gated SDLC with Matt Pocock's Grill-Me Socratic Interrogation Protocol to eliminate assumptions before coding.
---

# Spec-Driven Development (Hybrid: Addy Osmani + Matt Pocock's Grill-Me Protocol)

## Overview

Write a structured specification before writing any code. The spec is the shared source of truth between you and the human engineer — it defines what we're building, why, and how we'll know it's done. Code without a spec is guessing.

This enhanced version integrates **Addy Osmani's 4-Phase Gated SDLC** with **Matt Pocock's Grill-Me Protocol (Socratic Interrogation Engine)** to ruthlessly interrogate requirements, edge cases, and user workflows before touching a single file.

---

## When to Use

- Starting a new project, page, or feature (e.g., PDV checkout, NFC-e modal, Curva ABC dashboard).
- Requirements are ambiguous, incomplete, or only exist as a high-level request.
- The change touches multiple files, SQL tables, or architectural layers.
- You're about to make a significant design or database decision.

**When NOT to use:** Single-line typo fixes or trivial changes where requirements are self-evident and atomic.

---

## The Gated Workflow (Pocock + Osmani Fusion)

```
 [ GRILL-ME ] ──► [ SPECIFY ] ──► [ PLAN ] ──► [ TASKS ] ──► [ IMPLEMENT ]
 (Interrogatório)   (Osmani Spec)   (Arquitetura) (Tickets Atômicos) (TDD + Git)
       │                 │              │              │              │
       ▼                 ▼              ▼              ▼              ▼
   Validação         Validação      Validação      Validação      Validação
   do Humano         do Humano      do Humano      do Humano      do Humano
```

---

## Phase 0: The "Grill-Me" Socratic Interrogation (Matt Pocock Engine)

Before writing any document or code, activate the **Grill-Me Protocol**. Assume the role of a strict, inquisitive Senior Technical Lead and interrogate the request on 4 essential fronts:

```markdown
### 🎯 GRILL-ME INTERROGATION BATTERY

1. 📊 Dados & Casos de Borda (Data & Edge Cases):
   - O que acontece se o valor for zero, negativo ou nulo?
   - Como o sistema se comporta se o produto estiver com estoque zerado no balcão?
   - O que ocorre se a conexão com o banco ou com a SEFAZ oscilar durante a operação?

2. 🔐 Regras de Negócio & Permissões (RBAC & Business Rules):
   - Essa ação pode ser feita pelo perfil Caixa ou exige liberação do Administrador?
   - O Caixa visualiza margem de lucro ou custo de compra? (Exemplo didático de RBAC: NUNCA sem autorização gerencial).
   - Há trava contra desconto abusivo ou venda com prejuízo?

3. 🎨 Design System & Restrições de UI (Anti-Slop Boundaries):
   - O layout respeita as regras de Design System Anti-Slop (Botões Sólidos, sem outline)?
   - A tela é 100% navegável por teclado (:focus-visible) no PDV ou formulários operacionais?
   - Os valores monetários usam font-variant-numeric: tabular-nums?

4. 🏁 Critérios Objetivos de Sucesso (Acceptance Criteria):
   - Qual comando ou teste automatizado comprovará que a tela está 100% pronta?
   - Como validamos visualmente a mudança antes de tocar em diretórios de backup ou releases estáveis?

```

> **Regra de Ouro:** Não avance para a escrita da especificação até que o humano tenha respondido ou validado as premissas do interrogatório!

---

## Phase 1: Specify (Addy Osmani Core)

Com as respostas do interrogatório em mãos, gere o documento formal de especificação cobrindo as 6 áreas canônicas:

1. **Objective:** O que estamos construindo e para quem (ex: *"Tela de Fechamento de Caixa para a Papelaria Real"*).
2. **Commands:** Comandos executáveis exatos (ex: `php -l index.php`, testes K6, migrations).
3. **Project Structure:** Diretórios e arquivos afetados (ex: `pdv/index.php`, `inc/header.php`, `mrstock_db`).
4. **Code Style & Design Tokens:** Snippet real demonstrando a sintaxe limpa (PHP 8.2 PDO, Bootstrap 5 sólido).
5. **Testing Strategy:** Como o `test-engineer` e o `code-reviewer` auditarão o código.
6. **Boundaries (Always / Ask First / Never):**
   - **Always:** Usar botões sólidos, `tabular-nums`, prepared statements em queries.
   - **Ask First:** Alterações em schemas de banco de dados, novas dependências externas.
   - **Never:** Sobrescrever diretórios de backup ou código de produção sem aprovação, usar botões transparentes com gradiente roxo (*AI Slop*).


---

## Phase 2: Plan (Technical Breakdown)

Com a especificação aprovada, gere o plano técnico de implementação:
- Mapeie dependências (o banco deve ser alterado antes da rota PHP; a API antes da interface).
- Identifique pontos de risco e planos de contingência.
- Defina os pontos de parada (*Checkpoints*) para validação visual no navegador.

---

## Phase 3: Tasks (Tickets Atômicos de Matt Pocock)

Divida o plano em tarefas atômicas e independentes:
- Cada tarefa deve poder ser executada em um único ciclo focado.
- Cada tarefa mexe em no máximo 3 a 5 arquivos.
- Cada tarefa possui um critério de verificação claro:

```markdown
- [ ] Task 1: [Criar tabela/coluna no mrstock_db com script SQL]
  - Aceite: [Script .sql executado e testado no MySQL local]
  - Verificação: [DESCRIBE tabela no terminal]
  - Arquivos: [sql/migrations/v2_update.sql]
```

---

## Phase 4: Implement (TDD + Prova Real)

Execute as tarefas uma por uma aplicando as skills do Núcleo Puro:
- **`incremental-implementation`:** Entrega passo a passo sem quebrar o sistema.
- **`clean-code`:** Código limpo e legível segundo princípios SOLID.
- **Portão de Prova Real:** Executar a validação no terminal e realizar o commit semântico imediato (`git commit -m "feat(pdv): ..."`).
