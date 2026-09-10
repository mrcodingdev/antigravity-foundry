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

- Starting a new project, page, or feature (e.g., checkout flow, financial ledger, analytics dashboard, RBAC permissions).
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
   - Como o sistema se comporta se o item estiver com estoque zerado ou indisponível?
   - O que ocorre se a conexão com o banco de dados ou gateway de pagamento oscilar durante a transação?

2. 🔐 Regras de Negócio & Permissões (RBAC & Business Rules):
   - Essa ação pode ser feita por usuários operacionais comuns ou exige privilégios de Administrador?
   - Usuários sem privilégios visualizam custos internos ou margens? (Exemplo didático de RBAC: NUNCA sem autorização executiva).
   - Há trava contra operações duplicadas (idempotência) ou venda com inconsistência de saldo?

3. 🎨 Design System & Restrições de UI (Anti-Slop Boundaries):
   - O layout respeita as regras de Design System Anti-Slop (Botões Sólidos, sem outline)?
   - A tela é 100% navegável por teclado (:focus-visible) em formulários e telas operacionais?
   - Os valores numéricos e monetários usam font-variant-numeric: tabular-nums?

4. 🏁 Critérios Objetivos de Sucesso (Acceptance Criteria):
   - Qual comando ou teste automatizado de terminal comprovará que o módulo está 100% pronto?
   - Como validamos visualmente a mudança antes de tocar em diretórios estáveis de produção?

```

> **Regra de Ouro:** Não avance para a escrita da especificação até que o humano tenha respondido ou validado as premissas do interrogatório!

---

## Phase 1: Specify (Addy Osmani Core)

Com as respostas do interrogatório em mãos, gere o documento formal de especificação cobrindo as 6 áreas canônicas:

1. **Objective:** O que estamos construindo e para quem (ex: *"Módulo de Fechamento de Vendas / Checkout Corporativo"*).
2. **Commands:** Comandos executáveis exatos (ex: linters de código, testes automatizados, scripts de migração).
3. **Project Structure:** Diretórios e arquivos afetados (ex: controllers, services, repositories, rotas, views).
4. **Code Style & Design Tokens:** Snippet real demonstrando a sintaxe limpa (ex: tipagem forte, prepared statements estritos, botões sólidos corporativos).
5. **Testing Strategy:** Como o `test-engineer` e o `code-reviewer` auditarão o código.
6. **Boundaries (Always / Ask First / Never):**
   - **Always:** Usar botões sólidos, `tabular-nums`, prepared statements em queries.
   - **Ask First:** Alterações em schemas de banco de dados, novas dependências externas.
   - **Never:** Sobrescrever código de produção sem aprovação, usar botões transparentes com gradiente roxo (*AI Slop*).


---

## Phase 2: Plan (Technical Breakdown)

Com a especificação aprovada, gere o plano técnico de implementação:
- Mapeie dependências (o banco e migrations antes das regras de serviço; os serviços antes dos endpoints de API; a API antes da interface).
- Identifique pontos de risco e planos de contingência.
- Defina os pontos de parada (*Checkpoints*) para validação visual no navegador.

---

## Phase 3: Tasks (Tickets Atômicos de Matt Pocock)

Divida o plano em tarefas atômicas e independentes:
- Cada tarefa deve poder ser executada em um único ciclo focado.
- Cada tarefa mexe em no máximo 3 a 5 arquivos.
- Cada tarefa possui um critério de verificação claro:

```markdown
- [ ] Task 1: [Criar migration de banco de dados e repository seguro]
  - Aceite: [Script de migração executado e testado localmente]
  - Verificação: [Comando de checagem do schema no terminal]
  - Arquivos: [migrations/001_create_orders.sql, src/repositories/order_repository.py]
```

---

## Phase 4: Implement (TDD + Prova Real)

Execute as tarefas uma por uma aplicando as skills do Núcleo Puro:
- **`incremental-implementation`:** Entrega passo a passo sem quebrar o sistema.
- **`clean-code`:** Código limpo e legível segundo princípios SOLID.
- **Portão de Prova Real:** Executar a validação no terminal e realizar o commit semântico imediato (`git commit -m "feat(checkout): ..."`).
