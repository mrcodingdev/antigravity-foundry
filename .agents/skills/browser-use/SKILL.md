---
name: browser-use
description: "Automação autônoma de navegador com Playwright e visão computacional para agentes de IA (criado por browser-use). Permite navegar, interagir com elementos visuais complexos, preencher formulários, auditar interfaces, extrair dados dinâmicos e rodar baterias de testes end-to-end (E2E) simulando comportamento humano real. Ativação autônoma: o assistente ou subagente de QA utiliza esta skill para validar fluxos de interface, PDV e telas web."
risk: safe
sources:
  - "https://github.com/browser-use/browser-use"
date_added: "2026-09-27"
---

# Browser Use — Automação Autônoma de Navegador & Testes E2E com Visão

O **Browser Use** fornece aos agentes de IA a habilidade de navegar na web e em aplicações locais exatamente como um ser humano: inspecionando o DOM visualmente, clicando em botões, preenchendo campos de texto, lidando com popups e confirmando fluxos transacionais.

---

## ⚡ Autonomia Proativa
> **DIRETRIZ DE USO:** O usuário **NÃO** precisa invocar comandos de barra.
> 
> Sempre que o desenvolvedor solicitar a homologação de um fluxo ponta a ponta (como login, emissão de venda no PDV ou cadastro de produto), o assistente adota os padrões de automação e asserções do Browser Use via ferramentas de navegador (Puppeteer / DevTools MCP / Playwright).

---

## 🎯 Aplicações Práticas no Ecossistema

1. **Testes E2E no MrStock ERP Local:**
   - Acessar `http://localhost/MrStock/login.php`.
   - Autenticar com usuário de teste.
   - Abrir o PDV (`vendas/pdv.php`), adicionar produtos com leitor de código de barras simulado, aplicar desconto e finalizar com simulação de NFC-e.
   - Capturar screenshot e validar ausência de erros no console JavaScript.
2. **Auditoria Visual Anti-Quebra:**
   - Inspecionar se elementos com animação fluida `@keyframes mrStockSlideInLeft` carregaram sem sobreposição.
   - Validar responsividade em resoluções desktop (1920x1080) e tablet/POS (1024x768).
3. **Auditoria de Acessibilidade & Foco:**
   - Percorrer a tela inteira utilizando apenas a tecla `Tab` para verificar estados de `:focus-visible` e ordem de tabulação.

---

Consulte [references/playwright-patterns.md](references/playwright-patterns.md) para padrões de scripts e asserções resilientes.
