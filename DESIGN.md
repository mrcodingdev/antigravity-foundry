# DESIGN.md — MrStock ERP Design System Specification
> Canonical plain-text design specification following the `VoltAgent/awesome-design-md` standard.  
> Governs visual tokens, solid button standards, Bento Grid layout, typography, and motion engineering for MrStock ERP.

---

## 🏛️ 1. Design Philosophy: Zero AI Slop & Industrial Elegance
MrStock ERP is an operational, mission-critical retail management system engineered for high-speed counter operations (Papelaria Real).
- **Core Principles:** Clarity, solid contrast, high scanability, tactile feedback, tabular alignment.
- **Anti-Slop Prohibitions:** No meaningless purple gradients, no floating blurry drop-shadows, no ungrounded frosted glass, no oversized rounded corners that eat screen real estate, no outline/ghost buttons for primary or dangerous operations.

---

## 🎨 2. Color Palette & Design Tokens

### 2.1 Primitive Colors
```css
--mrstock-primary: #0d6efd;      /* Solid Royal Blue */
--mrstock-success: #198754;      /* Solid Forest Green */
--mrstock-danger: #dc3545;       /* Solid Alert Red */
--mrstock-warning: #ffc107;      /* Solid Amber Gold */
--mrstock-secondary: #6c757d;    /* Solid Slate Gray */
--mrstock-dark: #212529;         /* Solid Dark Onyx */
--mrstock-whatsapp: #25d366;     /* Official WhatsApp Green */
--mrstock-bg-light: #f8f9fa;     /* Surface Background */
--mrstock-surface-card: #ffffff; /* Card Background */
--mrstock-border: #e9ecef;       /* Subtle Border */
```

### 2.2 Global Solid Button Mandate (Design System Cláusula Pétrea)
All interactive buttons must use **solid fill** with pure white text and icons.
- **Normal State:** Solid color fill, sharp contrast (WCAG AA >= 4.5:1).
- **Hover State (`:hover`):** Never invert colors, never turn transparent. Darken smoothly by 8-12% with subtle elevation shadow (`box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15)`).
- **Active State (`:active`):** Subtle push-down transformation (`transform: translateY(1px)`).
- **Forbidden:** Never use `btn-outline-*` for primary actions or deletion/destructive actions.

### 2.3 Circular WhatsApp Button Component
In customer and supplier tables:
- **Element:** `.btn-whatsapp`
- **Shape:** Perfectly circular (`border-radius: 50%`).
- **Dimensions:** Fixed `22px x 22px` (inline with table text).
- **Background:** Solid `#25d366` with white SVG/FontAwesome icon `<i class="fab fa-whatsapp"></i>`.
- **Layout:** Text phone number on the left, circular green icon button immediately adjacent. Never use stretched green pills containing the phone number.

---

## 🔤 3. Typography Scale & Tabular Precision
- **Primary Font Family:** `'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif`
- **Monospace & Financials:** `'SFMono-Regular', Consolas, 'Liberation Mono', Menlo, monospace`
- **Tabular Figures Mandate:** All monetary amounts (`R$ 0,00`), stock counts, barcodes, and percentages must use `font-variant-numeric: tabular-nums` to guarantee vertical column alignment across table rows.

| Token | Size | Weight | Line Height | Usage |
| :--- | :--- | :--- | :--- | :--- |
| `text-xs` | 11px (0.6875rem) | 500 | 1.2 | Badges, small metadata, batch dates |
| `text-sm` | 13px (0.8125rem) | 400 / 600 | 1.4 | Table content, secondary labels |
| `text-base` | 15px (0.9375rem) | 400 / 500 | 1.5 | Form inputs, body text, navigation |
| `text-lg` | 18px (1.125rem) | 600 | 1.4 | Card headers, section subtitles |
| `text-xl` | 22px (1.375rem) | 700 | 1.3 | KPI Info Box values, page title |
| `text-2xl` | 28px (1.75rem) | 700 | 1.2 | PDV Total Screen Display |

---

## 📐 4. Layout Architecture: Bento Grid & Spacing
- **Base Grid:** 8px baseline grid system (`8px`, `16px`, `24px`, `32px`, `48px`).
- **Card Geometry:**
  - Border radius: Fixed `12px` (`border-radius: 0.75rem`).
  - Border: `1px solid var(--mrstock-border)`.
  - Box Shadow: `0 2px 8px rgba(0, 0, 0, 0.04)`.
- **Topbar Mandate:**
  - Shows strictly the clean page title (`Dashboard`, `Histórico de Vendas`, `Estoque & Produtos`).
  - Prohibited: Never include the redundant prefix `MrStock ERP - ` or active badges `[• ERP Ativo]`.

---

## ✨ 5. Motion Engineering: Global Slide-In Fluid Animation
All structural containers, cards, KPI boxes, filter chips, and table bodies inherit the institutional animation:
```css
@keyframes mrStockSlideInLeft {
  from {
    opacity: 0;
    transform: translateX(-16px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

.card, .so-card, .info-box, .settings-tabs-container, .table tbody tr {
  animation: mrStockSlideInLeft 0.5s cubic-bezier(0.16, 1, 0.3, 1) both;
}
```
- **Staggered Delays:** First card `0.05s`, second card `0.10s`, third card `0.15s`, fourth card `0.20s`.
- **Prohibition:** Strictly forbidden to add `prefers-reduced-motion: reduce { animation: none !important; }` blocks that cancel animations during ETEC presentation evaluations.
