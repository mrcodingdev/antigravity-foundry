---
name: n8n-automation
description: "Framework canônico de automação de processos, telemetria em tempo real e webhooks integrando Antigravity 2.0, Antigravity Office 2D, Obsidian Megabrain e MrStock ERP com n8n Cloud via MCP."
risk: safe
date_added: "2026-09-10"
---

# n8n Automation Skill (Antigravity 2.0 & MrStock ERP)

Esta skill estabelece o framework operacional para criação, monitoramento e disparo de automações no n8n Cloud integradas ao ecossistema do **MrStock ERP** e aos **Subagentes do Antigravity 2.0**.

## 🧠 Filosofia Central
> "Automações inteligentes devem ser assíncronas, não-bloqueantes e seguras por design (Zero-Leak de segredos e tolerância a falhas de rede)."

---

## ⚡ Workflows Ativos em Produção

| ID Workflow | Nome Oficial | Trigger | Destino / Webhook |
| :--- | :--- | :--- | :--- |
| `W6OPYIpqKMAxprS8` | **MrStock ERP - Monitor de Estoque & Validades** | Cron (Todo dia às 08:00 BRT) | Alerta de produtos críticos e validade próxima (PEPS/FIFO) |
| `S5t6jewbvpRLhvll` | **Antigravity 2.0 - Telemetria & Quality Gates** | Webhook POST | `https://dgzin.app.n8n.cloud/webhook/antigravity-telemetry` |
| `0z3WNCATmmpayi4k` | **MrStock ERP - Auditor de Vendas & Estornos PDV** | Webhook POST | `https://dgzin.app.n8n.cloud/webhook/mrstock-pdv` |

---

## 📡 Payloads e Contratos de Webhook

### 1. Telemetria de Subagentes (`/webhook/antigravity-telemetry`)
Enviado pelo **Antigravity Office 2D** (`agent-scanner.js`) a cada alteração de estado (`IDLE` <-> `RUNNING`) ou parecer emitido (`PASS` / `REVISE`):

```json
{
  "timestamp": "2026-09-10T14:30:00.000Z",
  "agentName": "software-engineer",
  "action": "audit_verdict",
  "status": "IDLE",
  "verdict": "PASS",
  "details": {
    "steps": 14,
    "tools": 8,
    "sessionDir": "a0ab32c5-e6cc-41d5-9b8d-9a61b2592a60"
  }
}
```

### 2. Auditor de Vendas e Estornos (`/webhook/mrstock-pdv`)
Disparado pelo PDV do MrStock ERP na finalização de venda ou estorno gerencial:

```json
{
  "timestamp": "2026-09-10T14:30:00.000Z",
  "evento": "ESTORNO_ITEM",
  "operador_id": 1,
  "venda_id": 1042,
  "produto_id": 87,
  "quantidade": 1,
  "valor_total": 45.90,
  "motivo": "Erro de digitação do operador"
}
```

---

## 🛠️ Diretrizes de Operação via MCP (`n8n`)

Quando o Agente Orquestrador precisar interagir com os fluxos:
1. **Buscar status do fluxo:** Use `get_workflow_details` passando o ID (ex: `S5t6jewbvpRLhvll`).
2. **Auditar histórico de execuções:** Use `get_workflow_history` ou `search_workflow_executions` para checar falhas ou sucessos.
3. **Disparar testes:** Use `execute_workflow` para validação controlada.
4. **Resiliência:** Requisições de telemetria devem possuir timeout estrito de 1500ms e catch silencioso para que indisponibilidades transitórias nunca impactem o ERP ou o Office.

---

## 🛡️ Checklist de Governança
- [ ] O workflow no n8n trata payloads ausentes ou nulos com fallback seguro?
- [ ] Nenhuma credencial do banco de dados ou token de API está em texto puro?
- [ ] O endpoint do webhook responde com HTTP 200/202 imediato?
- [ ] O disparo local possui proteção contra travamento de event-loop?
