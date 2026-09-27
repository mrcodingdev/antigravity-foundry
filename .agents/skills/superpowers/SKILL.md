---
name: superpowers
description: "Framework de desenvolvimento disciplinado e dialética de múltiplas perspectivas para coding agents seniores (criado por Jesse Vincent / obra). Combate o vibe-coding precipitado através de 4 fases estruturadas: Clarify Socrático -> Especificação com Confronto Dialético de Visões Opostas -> TDD estrito -> Code Review formal. Ativação proativa e autônoma: o assistente convoca subagentes com visões contrárias para debater antes de alterar código estrutural."
risk: safe
sources:
  - "https://github.com/obra/superpowers"
  - "https://github.com/obra/superpowers-skills"
date_added: "2026-09-27"
---

# Superpowers — Disciplina de Engenharia Sênior & Dialética de Múltiplas Perspectivas

O **Superpowers** transforma o ecossistema de agentes em uma equipe de engenharia madura e autocrítica. Em vez de uma IA complacente que concorda com qualquer ideia e parte imediatamente para o código, o Superpowers institui a confrontação deliberada de perspectivas opostas antes da primeira linha ser escrita.

---

## ⚡ Autonomia Proativa
> **DIRETRIZ DE USO:** O desenvolvedor **NÃO** precisa digitar comandos com barra.
> 
> Em qualquer refatoração de médio ou grande porte, nova funcionalidade estrutural ou decisão de banco de dados, o assistente adota os 4 passos do Superpowers e convoca internamente as perspectivas contrastantes para iluminar pontos cegos.

---

## 🏛️ As 4 Fases do Superpowers

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                       O PIPELINE DIALÉTICO SUPERPOWERS                      │
├───────────────────┬───────────────────┬───────────────────┬─────────────────┤
│ 1. CLARIFY        │ 2. DIALÉTICA      │ 3. TEST (TDD)     │ 4. REVIEW       │
│ • Interrogação    │ • Confronto entre │ • Prova de falha  │ • Auditoria     │
│   Socrática       │   Skeptical vs    │   antes do código │   em 5 eixos    │
│ • Casos de borda  │   Visionary       │ • Asserções reais │ • Zero warnings │
└───────────────────┴───────────────────┴───────────────────┴─────────────────┘
```

1. **Clarify (Alinhamento Socrático):** Fazer as perguntas difíceis sobre regras de negócio, limites operacionais e premissas implícitas antes de aceitar a tarefa.
2. **Multi-Perspective Spec (A Dialética de Visões Opostas):** Submeter a proposta a dois subagentes com posturas intelectuais antagônicas:
   - **`@skeptical-architect` (O Simplificador Cético / Advogado do Diabo):** "Todo código é passivo e débito técnico. Corte 50% dos requisitos. Como isso quebra no pior cenário? Podemos resolver com um índice SQL ou um comando direto sem criar novas classes?"
   - **`@visionary-builder` (O Construtor Visionário / Maximizar Experiência e Escala):** "Como essa funcionalidade prepara o terreno para o MrStock v3.0? A experiência do usuário no balcão é fluida e memorável? Os contratos de dados suportam multi-filiais e concorrência massiva?"
3. **Develop via TDD (Desenvolvimento Orientado a Testes):** Escrever primeiro o teste que falha, provando a necessidade da alteração, e então fazer a menor implementação cirúrgica para fazê-lo passar.
4. **Independent Review (Revisão Fechada em 5 Eixos):** Avaliar Correção, Legibilidade, Arquitetura, Segurança e Performance antes de qualquer commit ou aprovação final.

---

Consulte [references/dialectic-protocol.md](references/dialectic-protocol.md) para o roteiro de confronto entre os subagentes e síntese técnica.
