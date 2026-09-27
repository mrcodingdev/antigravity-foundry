---
name: defuddle
description: "Extrator cirúrgico de conteúdo web em Markdown limpo (evolução do Readability criada por Steph Ango / Kepano). Remove cabeçalhos, barras laterais, scripts, anúncios, banners de cookies e poluição visual, entregando o núcleo semântico da página com redução drástica de tokens. Ativação proativa e autônoma: o agente utiliza este padrão para ler documentações e links externos sem poluir o contexto."
risk: safe
sources:
  - "https://github.com/kepano/defuddle"
  - "https://defuddle.md"
date_added: "2026-09-27"
---

# Defuddle — Extrator de Conteúdo Web em Markdown Puro & Otimizador de Tokens

O **Defuddle** é o padrão canônico para leitura e raspagem de páginas web de forma enxuta. Criado por Steph Ango (CEO do Obsidian), ele substitui ferramentas antigas de Readability por uma extração moderna que preserva fórmulas matemáticas (LaTeX), tabelas, blocos de código, notas de rodapé e callouts, eliminando 100% dos ruídos (sidebars, anúncios, cookies, popups e navegações).

---

## ⚡ Autonomia Proativa
> **DIRETRIZ DE USO:** O usuário **NÃO** precisa invocar comandos de barra.
> 
> Sempre que o assistente precisar ler documentações oficiais, artigos técnicos, repositórios ou páginas externas via web tools (`read_url_content`), deve mentalmente aplicar o filtro Defuddle para processar estritamente o artigo central e descartar o lixo de navegação antes de incorporar o conteúdo à memória operacional.

---

## 🛠️ Como Utilizar no Fluxo do Agente

### 1. Prefixo de Proxy Direto (`defuddle.md`)
Para qualquer URL pública que necessite de leitura limpa em Markdown:
```
https://defuddle.md/https://exemplo.com/artigo-tecnico
```
Isso instrui o motor do Defuddle a processar o DOM remoto e retornar exclusivamente o corpo do texto em Markdown de alta legibilidade.

### 2. Execução Local via CLI / Node.js
Se instalado no ambiente:
```bash
npx defuddle https://exemplo.com/artigo-tecnico --format=markdown
```

### 3. Extração Especial: Transcrições do YouTube
O Defuddle converte automaticamente URLs de vídeos do YouTube em transcrições completas estruturadas em Markdown, com timestamps e separação de oradores, evitando que o agente consuma vídeos brutos ou APIs proprietárias pesadas.

---

## 🧹 Filtros e Regras de Limpeza
Consulte [references/cleaning-rules.md](references/cleaning-rules.md) para a lista de seletores eliminados e elementos estruturais preservados.
