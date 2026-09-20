---
name: progressive-agent-memory
description: "Framework de Memória Persistente de Revelação Progressiva (3 Camadas), Protocolo Mailbox Single-Committer, Otimização Semântica de KV Cache e Fronteiras de Resiliência para o MrStock ERP (inspirado em Claude-Mem, Munder Difflin, FreeToken e VoltAgent)."
---

# Progressive Agent Memory & Multi-Agent Orchestration Framework (MrStock ERP)

Este framework estabelece o padrão de governança de memória, orquestração multiagente assíncrona e economia de tokens para o **MrStock ERP**, sintetizando os melhores princípios dos projetos `claude-mem` (Alex Newman), `munder-difflin` (Chaitanya Giri), `FreeToken` (FlashML/UC Berkeley) e `VoltAgent` (voltagent.dev).

---

## 1. O Padrão de Revelação Progressiva em 3 Camadas (Progressive Disclosure)

Inspirado no `claude-mem`, toda recuperação de contexto, histórico de transações e memória de sessões passadas DEVE seguir a estratégia de 3 camadas para economizar até 90% dos tokens de contexto:

```
┌────────────────────────────────────────────────────────────┐
│ CAMADA 1: ÍNDICE COMPACTO (search)                         │
│ • Retorna apenas ID, Data, Tipo e Resumo de 1 linha.       │
│ • Custo: ~50 a 100 tokens por resultado.                   │
├────────────────────────────────────────────────────────────┤
│ CAMADA 2: CONTEXTO CRONOLÓGICO (timeline)                  │
│ • Inspeciona eventos adjacentes ao ID de interesse.        │
│ • Custo: ~150 a 250 tokens.                                │
├────────────────────────────────────────────────────────────┤
│ CAMADA 3: CARGA COMPLETA SOB DEMANDA (get_observations)    │
│ • Carrega o payload completo, diffs ou carrinho completo   │
│   EXCLUSIVAMENTE para os IDs filtrados na Camada 1.        │
│ • Custo: ~500 a 1.000 tokens (restrito ao essencial).      │
└────────────────────────────────────────────────────────────┘
```

### Regras Mandatórias:
1. **Proibido Dumps Massivos de Arquivos:** Nunca despejar arquivos inteiros de histórico, logs ou tabelas completas no contexto sem antes executar uma amostragem compacta na Camada 1.
2. **Aplicação no ERP:** O módulo de consulta histórica do PDV (`vendas/historico.php`) e o módulo de auditoria (`relatorios/logs.php`) devem renderizar linhas sintéticas primeiro e carregar o detalhamento dos itens somente sob expansão de modal ou clique.

---

## 2. Arquitetura Single-Committer Hive & Mailbox Protocol

Inspirado no `munder-difflin`, para garantir concorrência segura entre múltiplos subagentes e erradicar panes de `index.lock` no Git:

1. **Workers como Operários de Entrega (Outbox):**
   - Os subagentes construtores (`@backend-engineer`, `@frontend-engineer`, `@software-engineer`) operam cirurgicamente nos arquivos atribuídos e geram o relatório de handoff na mensagem de saída.
   - Nenhum subagente tem permissão para commitar no Git diretamente sem a validação do pipeline.
2. **Orquestrador Central como Comitente Único (Single Committer):**
   - O **Agente Pai** atua como o único comitente autorizado (`Single Committer`), consolidando as alterações, validando a sintaxe (`php -l`), rodando o scanner de segurança (`pre_commit_secrets_shield.py`) e disparando o commit atômico e push com mensagem semântica padronizada.

---

## 3. Otimização Semântica de Cache KV (Semantic KV Caching)

Inspirado no paper científico do `FreeToken` (arXiv:2608.16157):

1. **Ancoragem de Contexto Invariante:**
   - As regras estáticas de negócio (GEMINI.md, Design System de botões sólidos, permissões RBAC e credenciais `.env`) devem permanecer sempre no topo dos prompts de sistema e arquivos de contexto.
   - Isso permite que o provedor de IA e engines locais aproveitem o cache de atenção (Prompt Caching / KV Cache), acelerando a resposta e reduzindo latência em até 4x.

---

## 4. Error Boundaries & Degradação Elegante (Graceful Degradation)

Inspirado no `VoltAgent/skills`:

1. **Fronteiras de Isolamento de Subagentes:**
   - Se um subagente verificador (ex: `@web-performance-auditor` ou `@security-auditor`) sofrer timeout ou instabilidade de rede, a falha DEVE ser contida na sua fronteira (*error boundary*).
   - O sistema gera um relatório de advertência (`[ ⚠️ WARNING - TIMEOUT ]`) e prossegue com os demais verificadores, sem abortar catastroficamente a sessão do usuário.
2. **Contingência no Ponto de Venda (PDV):**
   - Se o serviço de simulação fiscal NFC-e estiver indisponível, o caixa degrada imediatamente para emissão de cupom térmico não-fiscal de 80mm com gravação de pendência em fila assíncrona, garantindo que o atendimento de balcão da Papelaria Real nunca pare.

---

## 5. Protocolo de Blindagem de Privacidade (`<private>`)

Inspirado no `claude-mem` e na Regra #19 do MrStock ERP:
- Qualquer informação classificada como credencial, segredo de banco, host de produção ou chave de webhook deve ser marcada ou ocultada sob o protocolo `<private>`:
  - Nunca persistir senhas em arquivos de documentação, históricos públicos ou commits.
  - Bloqueio preventivo pelo `pre_commit_secrets_shield.py` antes de qualquer push.
