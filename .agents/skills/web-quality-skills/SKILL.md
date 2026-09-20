---
name: web-quality-skills
description: Framework de Auditoria de Qualidade Web, Core Web Vitals, Acessibilidade WCAG 2.2 e Práticas Recomendadas de Engenharia, baseado no portfólio de Addy Osmani (Google Chrome), David Dias (Front-End Checklist - 385 regras) e Leonxlnx (Taste-Skill).
---

# 🌐 Skill: Web Quality Skills & Front-End Checklist (v3.0.0)

Esta skill consolida o framework canônico de qualidade frontend do MrStock ERP, unificando os **5 Pilares de Addy Osmani (Google Chrome)**, as **11 Categorias do Front-End Checklist de David Dias (385 regras em frontendchecklist.io)** e as **Heurísticas Anti-Slop de Leonxlnx (taste-skill)**.

---

## 1. A Matriz dos 11 Eixos do Front-End Checklist (David Dias / frontendchecklist.io)

### ① HTML (Estrutura e Semântica)
- **Doctype & Encodings:** `<!DOCTYPE html>` e `<meta charset="utf-8">` na primeira linha da `<head>`.
- **Viewport Responsivo:** `<meta name="viewport" content="width=device-width, initial-scale=1">` sem bloquear zoom (`user-scalable=no` é proibido).
- **Idioma Base:** Atributo `lang="pt-br"` na tag `<html>`.
- **Semântica Estrutural:** Uso estrito de `<header>`, `<nav>`, `<main id="main-content">`, `<aside>`, `<footer>`.
- **Skip Links:** Presença de `<a href="#main-content" class="so-skip-link visually-hidden-focusable">Pular para o conteúdo principal</a>` como primeiro filho navegável do `<body>`.
- **Noscript Fallback:** Tags `<noscript>` informando a dependência do JavaScript em interfaces transacionais críticas (PDV, gráficos).
- **Tipos de Input Semânticos:** Uso rigoroso de `type="tel"`, `type="email"`, `type="number"`, `type="password"`.

### ② CSS (Layout, Tipografia e Impressão)
- **Minificação e Entrega:** Arquivos CSS sempre acompanhados de versão `.min.css` em produção.
- **Design Tokens em Variáveis CSS:** Paleta institucional, raios de borda e espaçamentos centralizados no `:root`.
- **Print Stylesheet Global (`@media print`):** Todas as telas devem ocultar automaticamente a `.main-sidebar`, `.navbar`, `.so-skip-link`, botões de ação e rodapés na impressão física (`Ctrl + P`), mantendo tabelas e cards em fundo branco puro e texto preto.
- **Anéis de Foco Visíveis:** Estados `:focus-visible` obrigatórios em todos os elementos interativos (`box-shadow: 0 0 0 3px rgba(...)`), nunca anulando o outline sem substituto de alto contraste.
- **Hardware Acceleration:** Animações restritas a `transform` e `opacity` para execução a 60fps na GPU sem causar reflow/repaint.
- **Banimento de Em-Dash (`—`) Estético:** Substituição de travessões longos gerados por IA por separadores sóbrios (`•`, `|`, `-`).

### ③ JavaScript (Comportamento e Execução)
- **Execução Segura:** Proibição estrita de `eval()`, `new Function()` ou manipulações inseguras de `innerHTML`.
- **Debounce & Throttle:** Eventos de digitação rápida em inputs de pesquisa (`keyup`, `input`) DEVEM usar função `debounce(fn, 250)` para evitar gargalos no DOM.
- **Imutabilidade e Escopo:** Uso exclusivo de `const` e `let` (banimento do `var`), métodos modernos de array (`map`, `filter`, `reduce`).
- **Silenciamento em Produção:** Remoção ou desligamento de `console.log()` e `console.debug()` em deploys de produção.
- **Tratamento Resiliente de JSON:** Todo `JSON.parse()` deve ser envelopado em blocos `try/catch`.

### ④ Performance & Core Web Vitals (CWV)
- **LCP (Largest Contentful Paint < 1.2s):** Preload de fontes locais (`.woff2`) e eliminação de CSS bloqueante.
- **INP (Interaction to Next Paint < 50ms):** Thread principal desimpedida; tarefas longas particionadas no PDV.
- **CLS (Cumulative Layout Shift = 0.000):** Todas as imagens e ícones DEVEM possuir atributos `width` e `height` explícitos.
- **Browser Caching:** Regras ativas no `.htaccess` com `Cache-Control: max-age=31536000, immutable` para estáticos (`.css`, `.js`, `.woff2`, imagens).
- **Tamanho Total da Página:** Payload total mantido estritamente abaixo de 500KB.

### ⑤ Accessibility / Acessibilidade (WCAG 2.1 AA / WCAG 2.2 AAA)
- **Contraste de Cores:** Mínimo de 4.5:1 para texto normal, 3:1 para elementos de UI e > 8.5:1 para botões de ação.
- **Navegação Plena por Teclado:** 100% das ações operáveis sem mouse (suporte nativo aos atalhos `F1` a `F9`, `Esc`, `Enter`).
- **Tabelas Semânticas:** Elementos `<th>` com atributo `scope="col"` ou `scope="row"` e tag `<caption>` descritiva.
- **ARIA Live Regions:** Elementos de retorno dinâmico (bipagem de produtos no PDV, cálculo de troco) associados a `<div aria-live="polite">` para anúncio a leitores de tela (NVDA/TalkBack).
- **Rótulos Exclusivos:** Todo input deve possuir um `<label for="...">` explícito ou `aria-label`.

### ⑥ SEO Técnico & Descoberta
- **Canonical URLs:** `<link rel="canonical" href="...">` em todas as páginas públicas.
- **OpenGraph & Twitter Cards:** Tags `og:title`, `og:description`, `og:image` (1200x630px) e `twitter:card` padronizadas.
- **Schema.org JSON-LD:** Metadados estruturados para `Organization`, `LocalBusiness` e `BreadcrumbList`.
- **Rastreabilidade e Proteção:** `robots.txt` higienizado com diretivas `Disallow` em rotas administrativas e `sitemap.xml` publicado.

### ⑦ Security / Segurança de Frontend
- **HTTPS & HSTS:** Transporte criptografado obrigatório e permanente.
- **Links Externos Seguros:** Todo link com `target="_blank"` DEVE conter obrigatoriamente `rel="noopener noreferrer"`.
- **Cabeçalhos HTTP Defensivos:**
  * `X-Frame-Options: SAMEORIGIN` (anti-clickjacking).
  * `X-Content-Type-Options: nosniff` (anti-MIME-sniffing).
  * `Permissions-Policy: camera=(), microphone=(), geolocation=()`.
- **Proteção de Cookies:** Sessões com flags `HttpOnly`, `Secure` e `SameSite=Lax/Strict`.
- **Zero Segredos Expostos:** Scanner pré-commit ativo contra chaves, tokens e credenciais.

### ⑧ Images / Gestão de Ativos Visuais
- **Dimensões Físicas:** Tags `<img>` com `width` e `height` definidos no HTML para reserva imediata de espaço no DOM.
- **Formatos Modernos:** Preferência por vetores SVG e WOFF2 para iconografia e WebP para imagens estáticas.
- **Textos Alternativos:** Atributo `alt="..."` descritivo em imagens informativas e `alt=""` em decorativas.

### ⑨ Testing / Garantia da Qualidade
- **Rastreabilidade QTS:** Casos de teste de software (CTs/UCs) mapeados e documentados para cada fluxo.
- **Sintaxe Pré-Commit:** Validação sintática contínua (`php -l`, `node -c`).
- **Gated Verifiers:** Aprovação formal em 5 eixos pelos Verifiers antes de qualquer mesclagem.

### ⑩ Privacy / Privacidade (LGPD & Marco Civil)
- **Minimização de Dados:** Coleta restrita ao necessário para emissão fiscal e operação de caixa.
- **Transparência:** Termos de Uso e Política de Privacidade publicados e linkados no rodapé institucional.
- **Retenção Segura:** Logs operacionais segregados com carimbo de data/hora imutável.

### ⑪ Internationalization / Localização (pt-BR)
- **Formatação de Moeda:** Padrão brasileiro `R$ 1.234,56` via `number_format($val, 2, ',', '.')` ou `Intl.NumberFormat`.
- **Formatação de Datas:** Formato cronológico `dd/mm/aaaa hh:mm:ss`.
- **Compatibilidade de Caracteres:** Suporte total à acentuação gráfica da língua portuguesa via UTF-8 sem BOM.

---

## 2. Checklist de Homologação Pré-Deploy (Quality Gate)

Antes de autorizar qualquer commit ou deploy:
- [ ] O Skip Link (`.so-skip-link`) está presente e foca no `#main-content`?
- [ ] O arquivo CSS possui o bloco `@media print` para impressão limpa de relatórios?
- [ ] Todas as imagens possuem `width` e `height` declarados?
- [ ] Inputs de busca e filtro em tempo real utilizam `debounce`?
- [ ] Links externos com `target="_blank"` contêm `rel="noopener noreferrer"`?
- [ ] A tag `<noscript>` está presente no cabeçalho comum?
- [ ] O arquivo `css/style.min.css` foi regerado e sincronizado?
- [ ] O scanner `pre_commit_secrets_shield.py` retornou `[PASS]`?
