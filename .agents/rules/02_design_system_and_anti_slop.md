# Diretrizes de Design System e Erradicação de AI Slop
# 02_design_system_and_anti_slop.md

Este documento define os padrões visuais, tipográficos, ergonômicos e de acessibilidade do ecossistema Antigravity Foundry. Seu objetivo primário é blindar produtos de software contra vícios estéticos de Inteligência Artificial (*AI Slop* / *Vibecoding*) e assegurar interfaces sólidas, sóbrias e acessíveis no padrão B2B Enterprise (Stripe, Linear, GitHub, Vercel, Shopify).

---

## 🎯 1. As 20 Zonas Canônicas Anti-AI Slop & Vibecoding

```
                    AS 20 ZONAS DE CAÇA AO AI SLOP & VIBECODING
  ┌────────────────────────────────────────────────────────────────────────┐
  │ 1. ZERO GRADIENTES ROXOS/AZUIS  ──► Proibido purple-to-blue AI vibes   │
  │ 2. ZERO GRADIENT HERO TEXT      ──► Proibido text-transparent clip     │
  │ 3. ZERO EMOJIS EM TÍTULOS       ──► Headings 100% limpos e formais     │
  │ 4. TIPOGRAFIA TABULAR CALIBRADA ──► Inter com tabular-nums e mono      │
  │ 5. GHOST BORDERS NEUTRAS (1PX)  ──► Proibido colored-border cards neon │
  │ 6. CARDS SÓLIDOS (ANTI-GLASS)   ──► Proibido glassmorphism/blur em card│
  │ 7. ALTO CONTRASTE (WCAG AA/AAA) ──► Proibido low-contrast dark mode    │
  │ 8. BENTO GRID DE NEGÓCIO REAL   ──► Proibido 3 icon boxes genéricos    │
  │ 9. HIERARQUIA PURA DO H1        ──► Proibido badge flutuando sobre h1  │
  │ 10. ÍCONES SÓLIDOS PADRONIZADOS ──► Proibido lucide icons ultrafinos   │
  │ 11. IDENTIDADE PRÓPRIA B2B      ──► Proibido shadcn UI sem identidade  │
  │ 12. GPU ANIMATION COMPOSITOR    ──► Proibido scroll fade-in pesado     │
  │ 13. ZERO CURSOR BEAMS / AURORAS ──► Proibido feixes no ponteiro        │
  │ 14. BOTÕES SÓLIDOS DE FÁBRICA   ──► Proibido fade no hover ou outline  │
  │ 15. ESPAÇAMENTO SISTEMÁTICO 8PX ──► Proibido paddings arbitrários      │
  │ 16. TIPOGRAFIA EDITORIAL LIMPA  ──► Proibido em dashes '—' compulsivos │
  │ 17. VOCABULÁRIO REAL DE NEGÓCIO ──► Proibido buzzwords vazias de IA    │
  │ 18. SANS-SERIF UNIFORME         ──► Proibido palavras em serif italic  │
  │ 19. HARMONIA TIPOGRÁFICA        ──► Proibido misturas exóticas de moda │
  │ 20. SUPERFÍCIES LIMPAS          ──► Proibido grain/ruído sobre gradiente│
  └────────────────────────────────────────────────────────────────────────┘
```

### Detalhamento das 20 Zonas:

1. **Zero Gradientes Roxos/Azuis (*Purple-to-Blue Gradient*):**
   - *Vício de IA:* Uso sistemático do gradiente `linear-gradient(to right, #8b5cf6, #3b82f6)` em fundos, bordas e botões.
   - *Regra Foundry:* Paletas corporativas sóbrias e contrastantes (ardósia, grafite, verde escuro corporativo, azul naval clássico). Proibido estética neon "cyberpunk" em aplicações empresariais.

2. **Zero Texto com Efeito Degradê Clipado (*Gradient Hero Text*):**
   - *Vício de IA:* Aplicar `background-clip: text; color: transparent;` no título principal de telas.
   - *Regra Foundry:* Títulos corporativos usam cores sólidas de alto contraste (`#0f172a`, `#1e293b` em modo claro; `#f8fafc`, `#ffffff` em modo escuro).

3. **Zero Emojis em Títulos e Cabeçalhos (*Emojis in Headings*):**
   - *Vício de IA:* Inserir emojis infantis no início de títulos (ex: `📊 Dashboard`, `⚡ Métricas`, `📦 Estoque`).
   - *Regra Foundry:* Títulos de tela e headers utilizam tipografia limpa e semântica. Ícones devem ser vetoriais (SVG ou icon font sólida) semanticamente alinhados, nunca caracteres de emoji.

4. **Tipografia Tabular Calibrada (*Tabular Numerals*):**
   - *Vício de IA:* Renderização de números e tabelas monetárias sem alinhamento proporcional de glifos.
   - *Regra Foundry:* Todo número financeiro, métrica, data ou quantidade deve receber `font-variant-numeric: tabular-nums` (ou classe `.tabular-nums`), garantindo alinhamento vertical estrito de colunas.

5. **Ghost Borders Neutras de 1px (*Neutral Ghost Borders*):**
   - *Vício de IA:* Cards com bordas espessas ou de cores neon saturadas (`border: 2px solid #a855f7`).
   - *Regra Foundry:* Contornos de containers e cartões usam bordas sutis de 1px neutro (`border: 1px solid rgba(0,0,0,0.08)` ou `border: 1px solid #e2e8f0` no tema claro; `#334155` no tema escuro).

6. **Cards Sólidos e Legíveis (Anti-Glassmorphism):**
   - *Vício de IA:* Uso excessivo de `backdrop-filter: blur(...)` e fundos semitransparentes em tabelas e painéis de dados.
   - *Regra Foundry:* Superfícies de trabalho devem ser sólidas (`#ffffff` ou `#f8fafc`), permitindo leitura rápida sem esforço visual. `backdrop-filter` é reservado exclusivamente a backdrops de janelas modais.

7. **Alto Contraste (> 4.5:1 WCAG AA, ideal > 7:1 AAA):**
   - *Vício de IA:* Textos em cinza claro lavado (`#9ca3af`) sobre fundos brancos ou cinza escuro sobre preto, reprovados em acessibilidade.
   - *Regra Foundry:* Todo par de cor texto/fundo deve atender rigorosamente à taxa de contraste mínima de 4.5:1 para texto normal e 3:1 para elementos de interface e gráficos.

8. **Bento Grid de Negócio Real:**
   - *Vício de IA:* Grid repetitivo de 3 cartões genéricos com ícones flutuantes sem conteúdo útil.
   - *Regra Foundry:* Layout modular Bento Grid orientado a dados reais: métricas-chave (KPIs), comparativos percentuais de período, status operacional e alertas prioritários.

9. **Hierarquia Pura do Título H1:**
   - *Vício de IA:* Pílula/badge flutuando centralizada logo acima da tag `<h1>` (`[ ✨ Powered by AI ]`).
   - *Regra Foundry:* O título `<h1>` é a âncora primordial da hierarquia visual. Badges de estado pertencem ao lado do título ou aos cartões de metadados correspondentes.

10. **Ícones Sólidos e Padronizados:**
    - *Vício de IA:* Ícones de múltiplos pacotes misturados, com traços desiguais ou ultra-finos de 1px difíceis de discernir.
    - *Regra Foundry:* Conjunto coeso de ícones com traço/preenchimento consistente (2px de espessura de traço ou sólidos), empacotados localmente (sem CDN externa).

11. **Identidade B2B Autoral:**
    - *Vício de IA:* Interface copiada de templates pré-fabricados sem adaptação à marca ou contexto operacional.
    - *Regra Foundry:* Identidade visual adaptada ao domínio da aplicação, com tokens de design bem estruturados e consistência sistêmica.

12. **GPU Animation Compositor:**
    - *Vício de IA:* Scripts pesados de animação de scroll (AOS, ScrollReveal) que atrasam a exibição de dados.
    - *Regra Foundry:* Animações restritas a transições aceleradas por GPU (`transform`, `opacity`), nunca animando propriedades que disparam reflow/layout (`width`, `height`, `margin`, `top`).

13. **Zero Cursor Beams ou Efeitos de Luz:**
    - *Vício de IA:* Brilhos coloridos seguindo o ponteiro do mouse na tela.
    - *Regra Foundry:* Zero efeitos visuais distrativos no ponteiro. Hover states devem ser discretos, informativos e rápidos.

14. **Botões Sólidos Corporativos:**
    - *Vício de IA:* Botões transparentes com outline em ações principais, ou botões que ficam translúcidos (`opacity: 0.7`) ou invertem cores no hover.
    - *Regra Foundry (Cláusula Pétrea de UI):* Ações primárias utilizam botões sólidos preenchidos. No `:hover`, o botão **apenas escurece suavemente** (8% a 10% darker via `filter: brightness(0.92)` ou cor hex ajustada). Nunca clareia, nunca inverte fundo com borda.

15. **Espaçamento Sistemático em Escala de 8px:**
    - *Vício de IA:* Margens e espaçamentos aleatórios (`margin-top: 11px; padding: 17px`).
    - *Regra Foundry:* Adoção estrita da grade de 8 pontos: `4px` (0.5x), `8px` (1x), `12px` (1.5x), `16px` (2x), `24px` (3x), `32px` (4x), `48px` (6x), `64px` (8x).

16. **Tipografia Editorial Limpa:**
    - *Vício de IA:* Travessões longos ("—") inseridos compulsivamente em cada linha, título ou lista.
    - *Regra Foundry:* Pontuação limpa e concisa. Use hífens simples espaçados (` - `), barras verticais (` | `) ou hierarquia natural com tags `<small>` e classes CSS utilitárias.

17. **Vocabulário Real de Negócio:**
    - *Vício de IA:* Textos repletos de chavões e jargões vazios ("Revolucione seu ecossistema com insights inteligentes").
    - *Regra Foundry:* Terminologia técnica, financeira, fiscal e operacional concreta ancorada no domínio real da solução.

18. **Sans-Serif Uniforme:**
    - *Vício de IA:* Misturar uma única palavra em itálico com serifa dentro de títulos sans-serif modernos.
    - *Regra Foundry:* Hierarquia tipográfica consistente com peso sans-serif sóbrio. Ênfases são aplicadas via peso de fonte ou contraste de cor.

19. **Harmonia Tipográfica Consistente:**
    - *Vício de IA:* Mistura desordenada de famílias tipográficas distintas sem relação geométrica ou proporcional.
    - *Regra Foundry:* No máximo duas famílias tipográficas por projeto (uma sans-serif primária de alta legibilidade para UI e uma monoespaçada para código, dados e comprovantes).

20. **Superfícies Limpas e Nítidas (Anti-Grain):**
    - *Vício de IA:* Sobreposição de ruídos SVG ou texturas granuladas para forçar nostalgia artificial.
    - *Regra Foundry:* Superfícies puras, lisas e com renderização nítida em qualquer densidade de pixels (DPI) ou display industrial.

---

## 📐 2. Tipografia Suíça e Alinhamento Numérico

- **Família Primária:** Sans-Serif de precisão internacional (`Inter`, `system-ui`, `-apple-system`, `BlinkMacSystemFont`, `"Segoe UI"`, `Roboto`, `sans-serif`).
- **Família Monoespaçada:** Mono de alta precisão para hashes, código, identificadores e logs (`"JetBrains Mono"`, `"Fira Code"`, `Consolas`, `monospace`).
- **Regra Tabular Numérica Obrigatória:**
  ```css
  .tabular-nums, table td.numeric, .metric-value, .currency {
    font-variant-numeric: tabular-nums;
    font-feature-settings: "tnum";
  }
  ```

---

## 🔘 3. Botões Sólidos Corporativos

### Estados Padronizados:
- **Default:** Cor sólida institucional com texto de alto contraste (ex: fundo `#0284c7` com texto `#ffffff`).
- **Hover:** Escurecimento sutil (8% a 10%), sem alteração abrupta de contraste ou inversão de cores:
  ```css
  .btn-primary {
    background-color: #0284c7;
    color: #ffffff;
    border: 1px solid #0284c7;
    transition: background-color 150ms ease, border-color 150ms ease, box-shadow 150ms ease;
  }
  .btn-primary:hover {
    background-color: #0369a1;
    border-color: #0369a1;
    color: #ffffff;
  }
  ```
- **Focus:** Anel de foco nítido e visível (`focus-visible` com offset de 2px):
  ```css
  .btn:focus-visible {
    outline: 2px solid #0284c7;
    outline-offset: 2px;
  }
  ```
- **Active:** Leve compressão ou escurecimento adicional (12%).
- **Disabled:** Opacidade reduzida com cursor `not-allowed`, mantendo legibilidade básica.

---

## ♿ 4. Acessibilidade Digital (WCAG 2.1 AA)

1. **Taxa de Contraste Mínima:**
   - Texto normal (< 18pt / < 14pt bold): Contraste mínimo de **4.5:1** contra o plano de fundo.
   - Texto grande (≥ 18pt / ≥ 14pt bold): Contraste mínimo de **3.0:1**.
   - Componentes visuais e estados interativos (bordas de input, estados de foco): Contraste mínimo de **3.0:1**.
2. **Foco Visível Obrigatório:**
   - Proibido `outline: none` sem substituto perceptível de `focus-visible`.
   - Navegação por teclado (`Tab`, `Shift+Tab`, `Enter`, `Space`, setas direcionais) deve ser 100% funcional em todas as telas.
3. **Semântica HTML e ARIA:**
   - Uso de tags semânticas primárias (`<main>`, `<nav>`, `<header>`, `<footer>`, `<section>`, `<article>`, `<button>`).
   - Proibido usar `<div>` ou `<span>` clicáveis sem `role="button"`, `tabindex="0"` e listeners de teclado.
   - Ícones puramente decorativos devem ter `aria-hidden="true"`.
   - Botões de ícones sem texto visível devem conter `aria-label` descritivo.
