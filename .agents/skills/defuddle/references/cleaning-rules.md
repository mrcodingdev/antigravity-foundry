# Regras de Limpeza e Preservação do Defuddle

## Elementos Sistematicamente Eliminados (Ruído Web)
1. **Banners e Avisos Legais:** Modais de consentimento de cookies (GDPR/LGPD), barras de notificação de newsletter e popups de inscrição.
2. **Navegações e Cabeçalhos:** `<header>`, `<nav>`, menus hamburguer, breadcrumbs desnecessários e links de "pular para o conteúdo".
3. **Barras Laterais e Rodapés:** `<aside>`, listas de artigos relacionados patrocinados, seções de comentários de terceiros (Disqus, etc.) e `<footer >` com links corporativos genéricos.
4. **Metadados Visuais e Anúncios:** `div[class*="ad-"]`, iframes de rastreamento, pixels sociais e botões de compartilhamento flutuantes.

---

## Elementos Intocáveis (Preservação Semântica)
1. **Blocos de Código:** `<pre><code>` com identificação precisa de linguagem para realce sintático.
2. **Tabelas de Dados:** `<table>` convertidas integralmente para tabelas Markdown no padrão GFM (`| Coluna |`).
3. **Matemática e Notações Científicas:** Blocos KaTeX, MathJax e MathML preservados na sintaxe `$...$` e `$$...$$`.
4. **Notas de Rodapé e Citações:** `<blockquote>` e referências `[^1]` mantidas com precisão bibliográfica.
5. **Callouts e Alertas:** Convertidos para GitHub Alerts (`> [!NOTE]`, `> [!WARNING]`, etc.).
