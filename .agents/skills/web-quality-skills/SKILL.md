---
name: web-quality-skills
description: Framework de Auditoria de Qualidade Web, Core Web Vitals, Acessibilidade WCAG 2.2 e Práticas Recomendadas de Engenharia, baseado no portfólio de Addy Osmani (Google Chrome) e David Dias.
---

# 🌐 Skill: Web Quality Skills & Core Web Vitals (v2.2.0)

Esta skill estabelece o modelo de qualidade web baseado em evidência empírica contínua (*measurement-first*) para aplicações no Antigravity Foundry (com casos didáticos corporativos de ERP), unificando medições de laboratório (Lighthouse) e de campo (RUM/CrUX).


---

## 1. Os 5 Pilares de Qualidade Web de Addy Osmani

### ① Performance & Core Web Vitals (CWV)
- **Largest Contentful Paint (LCP < 1.2s):**
  * Eliminar render-blocking CSS via minificação (`style.min.css`) e Critical CSS inlined.
  * Otimizar web fonts locais em formato `.woff2` com `font-display: swap`.
  * Evitar preloads massivos concorrentes em conexões móveis (4G restrito).
- **Interaction to Next Paint (INP < 50ms):**
  * Proibição de tarefas longas (*long tasks* > 50ms) na thread principal durante o checkout no PDV.
  * Uso de microtarefas assíncronas e `requestAnimationFrame` para geração de recibos e QR Code.
- **Cumulative Layout Shift (CLS = 0.000):**
  * Dimensões explícitas (`width` e `height`) em todas as tags `<img>` e `<svg>`.
  * Alturas mínimas reservadas (`min-height`) para tabelas dinâmicas, cards de KPIs e áreas de notificação.

### ② Acessibilidade Universal (WCAG 2.1 AA / WCAG 2.2 AAA)
- **Contraste de Cores:** Mínimo de 4.5:1 para textos regulares e 7.0:1 para elementos de apoio (padrão Slate-600 `#475569` sobre branco).
- **Semântica ARIA e Rótulos de Formulário:** 100% dos inputs com `<label for="...">` correspondente e atributos `aria-label` em botões de ação com ícones puros.
- **Navegação por Teclado:** Ordem lógica de tabulação (`tabindex`), anel de foco nítido (`:focus-visible`) e atalhos de teclado no PDV (`F2`, `F4`, `ESC`).

### ③ Melhores Práticas de Engenharia (Best Practices)
- **Zero Console Errors:** Ausência total de exceções ou advertências não tratadas no console do navegador.
- **Segurança de Transporte:** HTTPS obrigatório, proteção HSTS, `rel="noopener noreferrer"` em links externos.
- **Armazenamento Seguro:** Sanitização de dados salvos em `localStorage` ou `sessionStorage`.

### ④ SEO Técnico & Descoberta
- **Metatags Semânticas:** `<meta name="description">` obrigatória em todas as páginas públicas e de autenticação.
- **Hierarquia de Títulos:** Um único `<h1>` por página, seguido de `<h2>` e `<h3>` ordenados sem saltos hierárquicos.

### ⑤ Navegação Agêntica & AEO (Agentic Engine Optimization)
- **Padrão `/llms.txt`:** Manutenção do manifesto em Markdown puro na raiz da aplicação.
- **HTML Semântico:** Marcos estruturais nativos (`<header>`, `<nav>`, `<main role="main">`, `<footer>`).

---

## 2. Checklist de Homologação Pré-Deploy

Antes de aprovar qualquer entrega visual:
- [ ] Pontuação mínima no Lighthouse: **Performance ≥ 95**, **Acessibilidade = 100**, **Práticas Recomendadas = 100**, **SEO = 100**?
- [ ] Dimensões de viewport móvel testadas sem rolagem horizontal indesejada (`scrollWidth === innerWidth`)?
- [ ] O arquivo `css/style.min.css` foi regerado e sincronizado?
- [ ] A tag de versão no cache-busting foi atualizada (`?v=X.X.X`)?
- [ ] Todos os botões respeitam a Regra #1 (Cores sólidas de fábrica, zero outlines)?
