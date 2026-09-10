---
name: unlazy-discipline
description: Protocolo de Disciplina Determinística de Conclusão com Portões Executáveis (Gate Contract / GATES.md), baseado no framework Leonxlnx/unlazy para o Antigravity Foundry (com casos didáticos corporativos).
---

# 🚪 Skill: Unlazy Discipline & Runnable Gates (v2.2.0)

Esta skill estabelece a disciplina inegociável de conclusão de tarefas substanciais para agentes de IA no ecossistema Antigravity Foundry:

> **"Escreva o livro-razão de aceitação primeiro (`GATES.md`), execute verificações auditadas, re-verifique o trabalho entregue e relate apenas o que a evidência empírica suporta."**

---

## 1. A Anatomia do Contrato de Portão (Gate Contract)

Para qualquer refatoração, nova funcionalidade ou correção de bug de média/alta complexidade, o agente deve estruturar portões executáveis determinísticos:

```markdown
# Gates: [Nome da Funcionalidade / Módulo]

- [ ] G1: [Descrição inequívoca do critério de aceitação]
  CHECK: [Comando de terminal determinístico, ex: npm test, pytest, go test ./..., ou script de validação CLI]
  EXPECT: [Saída em texto esperada exata ou código de saída 0]
  CWD: [Diretório de execução do comando]
  EVIDENCE: pending
```

---

## 2. Regras de Validação de Evidência

1. **Código de Saída Zero:** O processo invocado em `CHECK:` DEVE retornar código de saída `0`. Qualquer código diferente de zero invalida imediatamente o portão.
2. **Correspondência Exata:** A saída combinada de stdout e stderr deve corresponder estritamente ao declarado em `EXPECT:`.
3. **Proibição de Evidência Narrativa:** Portões técnicos não aceitam declarações em prosa livre ("testado manualmente e funcionou"). A evidência é o output real do comando gravado no terminal.
4. **Re-verificação Compulsória (Reverify):** Ao concluir as alterações de código, o agente DEVE re-executar 100% dos portões declarados (`--reverify`), mesmo aqueles que já haviam passado em etapas anteriores, prevenindo regressões silenciosas.
5. **Handoff com Falha Controlada:** Se um portão não puder ser cumprido por impedimento externo (ex: falta de extensão no servidor), o agente é terminantemente proibido de declarar sucesso: ele deve registrar o motivo exato de abandono e solicitar handoff humano.

---

## 3. Aplicação no Fluxo de Desenvolvimento do Antigravity Foundry

* **Fase de Planejamento (Método Fundido):** No `implementation_plan.md`, a seção de Plano de Verificação deve conter os portões executáveis em formato canônico.
* **Fase de Execução (Workers):** O `@software-engineer` e o `@backend-engineer` executam os comandos dos portões após cada edição de arquivo.
* **Fase de Auditoria (Verifiers):** Os 6 Gatekeepers utilizam os portões declarados como critério objetivo de aprovação `[ 🟢 PASS ]` ou rejeição `[ 🔴 REVISE ]`.

