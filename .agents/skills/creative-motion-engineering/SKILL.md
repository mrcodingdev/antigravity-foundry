---
name: creative-motion-engineering
description: Engenharia de animações de alto impacto, micro-interações táteis e storytelling cinético usando Anime.js (v4 / v3), SVG morphing, Scroll Observer e física de molas (springs) para interfaces B2B de alto padrão e Landing Pages fora da curva.
---

# 🪄 Skill: Creative Motion Engineering & Anime.js Mastery (v4.0.0)

Esta skill estabelece os princípios de arquitetura cinética, física de interfaces e micro-interações interativas utilizando o motor **Anime.js** (com foco na arquitetura moderna **v4.0.0** e suporte a **v3.2**).

A skill equilibra dois universos distintos de desenvolvimento web:
1. **Ambiente Enterprise B2B (SaaS / ERP):** Micro-interações discretas, contadores numéricos vivos, feedback tátil instantâneo e respeito rígido ao *Anti-Slop* e à produtividade do operador.
2. **Ambiente Creative & Landing Pages (Awwwards / High-Conversion):** Storytelling atrelado à rolagem (*Scroll Observer*), tipografia cinética, botões magnéticos, SVG morphing e física de molas arrastáveis (*Draggable & Flick*).

---

## 🎯 1. Os Dois Modos de Operação Cinética

```
┌──────────────────────────────────────────────────────────────────────────────────┐
│                   DUAL-MODE CREATIVE MOTION FRAMEWORK                            │
├─────────────────────────────────────────┬────────────────────────────────────────┤
│ MODO 1: ENTERPRISE B2B / ERP            │ MODO 2: CREATIVE / LANDING PAGES       │
├─────────────────────────────────────────┼────────────────────────────────────────┤
│ • Filosofia: "Invisível até o feedback" │ • Filosofia: "Efeito Uau & Imersão"    │
│ • Duração: Ultra-rápida (150ms - 350ms) │ • Duração: Fluida e coreografada (0.6s)│
│ • Física: Molas amortecidas (sem jank)  │ • Física: Elastic, Overdamped springs  │
│ • Casos: Roll-up de R$, Checkmark SVG,  │ • Casos: Scroll Observer, SVG Morph,   │
│   Toasts táteis, Transição de abas      │   Magnetic buttons, Kinetic type       │
│ • Regra de Ouro: Zero perda de foco     │ • Regra de Ouro: Reter e converter     │
└─────────────────────────────────────────┴────────────────────────────────────────┘
```

---

## 🏛️ 2. Padrões de Implementação no Modo B2B (MrStock ERP & SaaS)

Em sistemas de gestão e balcões de alta velocidade, a animação nunca pode atrasar o fluxo de trabalho. Os 4 pilares autorizados são:

### A. Contadores Numéricos Financeiros (KPI Roll-Up)
Para carregar valores monetários e métricas do Dashboard sem travamentos:

```javascript
// Exemplo Anime.js v4 / v3: Contador de R$ suave e sem lag
function animarContadorFinanceiro(elementoId, valorFinal, duracao = 1000) {
  const el = document.getElementById(elementoId);
  if (!el) return;
  
  const obj = { val: 0 };
  
  anime({
    targets: obj,
    val: valorFinal,
    round: 100, // 2 casas decimais
    easing: 'easeOutExpo',
    duration: duracao,
    update: function() {
      el.textContent = 'R$ ' + obj.val.toLocaleString('pt-BR', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
    }
  });
}
```

### B. Micro-Interação de Sucesso Fiscal (SVG Line Drawing)
Quando a NFC-e ou venda é confirmada com sucesso, o ícone desenha seu traço verde instantaneamente:

```javascript
// Desenho vetorial de confirmação (Checkmark SVG)
function animarCheckmarkSucesso(seletorSvgPath) {
  anime({
    targets: seletorSvgPath,
    strokeDashoffset: [anime.setDashoffset, 0],
    easing: 'cubicBezier(0.16, 1, 0.3, 1)',
    duration: 450,
    delay: 50
  });
}
```

### C. Toasts Táteis com Física de Molas (Spring Physics)
Mensagens de aviso e sucesso entram com leve amortecimento elástico:

```javascript
function animarToastEntrada(toastElement) {
  anime({
    targets: toastElement,
    translateY: [-20, 0],
    opacity: [0, 1],
    easing: 'spring(1, 80, 12, 0)', // mass, stiffness, damping, velocity
    duration: 350
  });
}
```

---

## 🚀 3. Padrões de Implementação no Modo Criativo (Landing Pages & Portfólios)

### A. Scroll Observer (Sincronização Milimétrica com Rolagem)
Anime.js v4 introduziu o `createScrollObserver`, eliminando a necessidade de plugins pagos de terceiros:

```javascript
import { animate, createScrollObserver } from 'animejs';

// Animação de revelação de cards de produto sincronizada com a rolagem
const timeline = createScrollObserver({
  target: '#hero-section',
  sync: true, // Scrub suave vinculado à barra de rolagem
  enter: 'top top',
  leave: 'bottom bottom'
});

timeline.add('.product-card', {
  y: [100, 0],
  rotateZ: [-10, 0],
  opacity: [0, 1],
  ease: 'outQuad'
});
```

### B. Grid & Wave Staggering (Efeito Onda em Matrizes de Elementos)
Criação de transições hipnóticas ao passar o mouse ou abrir menus:

```javascript
// Efeito de ondulação partindo do centro de uma grade 8x8
anime({
  targets: '.grid-cell',
  scale: [
    { value: 0.2, easing: 'easeOutSine', duration: 300 },
    { value: 1, easing: 'easeInOutQuad', duration: 600 }
  ],
  delay: anime.stagger(60, { grid: [8, 8], from: 'center' })
});
```

### C. Botões Magnéticos (Magnetic Hover Interaction)
O botão é suavemente atraído pelo cursor do mouse quando o usuário se aproxima:

```javascript
function aplicarEfeitoMagnetico(btnElement) {
  btnElement.addEventListener('mousemove', (e) => {
    const rect = btnElement.getBoundingClientRect();
    const x = e.clientX - rect.left - rect.width / 2;
    const y = e.clientY - rect.top - rect.height / 2;
    
    anime({
      targets: btnElement,
      translateX: x * 0.35,
      translateY: y * 0.35,
      easing: 'easeOutQuad',
      duration: 200
    });
  });
  
  btnElement.addEventListener('mouseleave', () => {
    anime({
      targets: btnElement,
      translateX: 0,
      translateY: 0,
      easing: 'spring(1, 90, 10, 0)',
      duration: 500
    });
  });
}
```

### D. SVG Shape Morphing (`morphTo`)
Transformação contínua entre dois caminhos vetoriais fechados:

```javascript
import { morphTo } from 'animejs';

// Transição fluida entre duas formas orgânicas
anime({
  targets: '#blob-shape',
  d: morphTo('#target-star-shape'),
  easing: 'easeInOutCubic',
  duration: 1200,
  direction: 'alternate',
  loop: true
});
```

---

## ⚡ 4. Matriz Comparativa: Quando Usar Anime.js?

| Critério | Anime.js (v4 / v3) | CSS Transitions Puro | GSAP (GreenSock) | Framer Motion |
|---|:---:|:---:|:---:|:---:|
| **Licença** | **100% MIT Livre** | Nativo | Paga para clubs / restrições | MIT |
| **Peso do Bundle** | **~12KB (Modular)** | 0KB | ~60KB+ | ~35KB+ (React) |
| **Dependência de Framework** | **Zero (Vanilla JS, Vue, React)** | Nenhuma | Nenhuma | Exige React |
| **Poder de Staggering** | **Excepcional (Grid/Matriz)** | Complexo / Manual | Excepcional | Moderado |
| **Física de Molas (Springs)** | **Sim (Nativo v4)** | Não | Sim | Sim |
| **SVG Morphing / Paths** | **Sim (Nativo v4)** | Não | Requer plugin pago | Básico |
| **Ideal Para** | **Landing pages modernas e micro-interações corporativas ricas** | Hovers simples de botões | Produções cinematográficas pesadas | Aplicações React puras |

---

## 🛡️ 5. Checklist de Boas Práticas e Core Web Vitals (CWV)

Ao aplicar Anime.js em qualquer projeto:
- [ ] **Aceleração por GPU:** Animar predominantemente `transform` (`translateX`, `translateY`, `scale`, `rotate`) e `opacity`. NUNCA animar `width`, `height`, `top`, `left` ou `margin` para prevenir *Layout Thrashing* e quedas de FPS.
- [ ] **Prefers-Reduced-Motion:** Sempre fornecer contingência para usuários sensíveis a movimento quando aplicável em sites públicos.
- [ ] **Isolamento de Escopo:** Em SPAs ou dashboards dinâmicos, pausar e destruir timelines órfãs ao trocar de visualização para evitar vazamentos de memória.
- [ ] **Tempo de Resposta:** No balcão transacional, animações de feedback não devem ultrapassar 300ms.
