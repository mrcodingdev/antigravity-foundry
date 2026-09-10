# 🛠️ Guia Oficial de Customização e Adaptação
# 06_ADAPTATION_AND_CUSTOMIZATION_GUIDE.md

> **"O Antigravity Foundry é 100% plug-and-play imediato para qualquer projeto. Mas seu verdadeiro superpoder reside na capacidade de ser moldado cirurgicamente à identidade, regras de negócio e stack tecnológica da sua equipe."**

Este guia foi elaborado para desenvolvedores, Tech Leads e Arquitetos de Software que desejam operar o Antigravity Foundry em seu potencial máximo, seja utilizando-o imediatamente sem configurações prévias (Modo Zero-Config) ou personalizando cada camada da matriz para a realidade da sua empresa.

---

## 🧭 Índice do Guia

1. [Modo 1: Plug-and-Play Imediato (Zero-Config)](#1-modo-1-plug-and-play-imediato-zero-config)
2. [Modo 2: Customização sob Medida](#2-modo-2-customização-sob-medida)
   - [Passo A: Ajustando Regras do Projeto (`.agents/rules/`)](#passo-a-ajustando-regras-do-projeto-agentsrules)
   - [Passo B: Especializando os Workers para sua Stack (`.agents/subagents/workers/`)](#passo-b-especializando-os-workers-para-sua-stack-agentssubagentsworkers)
   - [Passo C: Conectando os Verifiers aos seus Linters & Testes (`.agents/subagents/verifiers/`)](#passo-c-conectando-os-verifiers-aos-seus-linters--testes-agentssubagentsverifiers)
   - [Passo D: Criando Novas Skills de Domínio (`.agents/skills/`)](#passo-d-criando-novas-skills-de-domínio-agentsskills)
   - [Passo E: Personalizando o Cockpit 2D em Pixel Art (`cockpit/`)](#passo-e-personalizando-o-cockpit-2d-em-pixel-art-cockpit)
3. [Boas Práticas de Manutenção & Versionamento](#3-boas-práticas-de-manutenção--versionamento)

---

## 1. Modo 1: Plug-and-Play Imediato (Zero-Config)

Se você precisa iniciar um novo projeto ou plugar o Foundry em uma base de código existente sem perder tempo com configurações preliminares:

### Como Funciona de Fábrica:
1. **Agnóstico por Natureza:** A matriz padrão vem pré-configurada para compreender e respeitar qualquer stack (TypeScript, Python, Go, Rust, Java, C#, PHP).
2. **Design System Universal:** As 20 Zonas Anti-Slop funcionam automaticamente com CSS puro, Tailwind CSS, Bootstrap, Styled Components ou qualquer biblioteca de componentes.
3. **Segurança Automática:** O scanner de segredos (`pre_commit_secrets_shield.py`) protege credenciais para mais de 15 tipos de chaves e provedores de nuvem de fábrica.

### Instalação Direta em Qualquer Projeto:
Para adicionar a matriz do Foundry ao seu repositório atual:
```bash
# Copie os diretórios de inteligência para a raiz do seu projeto existente
cp -r .agents /caminho/do/seu/projeto/
cp -r templates /caminho/do/seu/projeto/
```
Pronto! A partir deste momento, qualquer agente de IA compatível (como Gemini CLI, Claude Desktop, Cursor, Roo-Code, Windsurf) que ler a raiz do seu repositório obedecerá à arquitetura de subagentes, às regras canônicas e às 18 skills.

---

## 2. Modo 2: Customização sob Medida

Quando seu time possui convenções específicas de código, paletas corporativas consagradas, suítes de teste de integração pré-existentes ou regras de negócio regulatórias (Fintech, Saúde, E-commerce), siga os 5 passos abaixo.

---

### Passo A: Ajustando Regras do Projeto (`.agents/rules/`)

O diretório `.agents/rules/` contém a constituição inegociável lida pelo Orquestrador e por todos os subagentes.

#### 1. Customizando a Paleta Corporativa (`02_design_system_and_anti_slop.md`):
Adicione os tokens de cor da sua marca e substitua a Zona 1 para estabelecer sua identidade institucional:
```markdown
### Cores Primárias da Nossa Empresa:
- `--brand-primary`: #0f766e (Teal Corporativo)
- `--brand-primary-hover`: #115e59 (10% mais escuro no hover)
- `--brand-surface`: #f8fafc (Cinza neutro sólido para cards)
- `--brand-border`: #e2e8f0 (Borda neutra sutil de 1px)
```

#### 2. Adicionando Limites Arquiteturais do Time (`01_core_architecture_rules.md`):
Defina o padrão de arquitetura da sua organização:
```markdown
### Padrão Arquitetural Obrigatório:
- Adotamos **Clean Architecture / Ports and Adapters**.
- Toda chamada externa (Stripe, Twilio, S3) DEVE passar por uma interface em `domain/ports/` e uma implementação em `infrastructure/adapters/`.
- Proibido importar dependências de infraestrutura diretamente dentro de entidades de domínio.
```

---

### Passo B: Especializando os Workers para sua Stack (`.agents/subagents/workers/`)

Os Workers são os especialistas em construção. Você pode personalizar as instruções e bibliotecas esperadas para que o código gerado reflita exatamente os idiomas e frameworks da sua empresa.

#### Exemplo 1: Adaptando `backend-engineer.md` para Python / FastAPI & SQLAlchemy
Em `.agents/subagents/workers/backend-engineer.md`:
```markdown
## 🐍 Stack Tecnológica Mandatória (Python FastAPI)
- Framework: **FastAPI** com Pydantic v2 para DTOs e validação estrita.
- ORM / Persistência: **SQLAlchemy 2.0 async** com sessões assíncronas (`AsyncSession`).
- Migrações: **Alembic** gerando revisões versionadas em `alembic/versions/`.
- Segurança: Prepared statements gerados pelo SQLAlchemy; proibido uso de `text()` com interpolação de strings `%s` ou f-strings.
- Autenticação: Tokens JWT validados via `Depends(get_current_active_user)`.
```

#### Exemplo 2: Adaptando `backend-engineer.md` para Node.js / NestJS & Prisma
```markdown
## 🟢 Stack Tecnológica Mandatória (NestJS + Prisma)
- Framework: **NestJS** modular com injeção de dependência e `class-validator`.
- ORM: **Prisma Client** com transações explícitas (`prisma.$transaction([...])`).
- DTOs: Classes tipadas com decoradores `@IsString()`, `@IsNotEmpty()`, `@IsPositive()`.
- Controllers: Respostas padronizadas via interceptor global `TransformInterceptor`.
```

#### Exemplo 3: Adaptando `backend-engineer.md` para Go / Gin & pgx
```markdown
## 🔵 Stack Tecnológica Mandatória (Go Gin + pgx)
- Framework: **Gin Gonic** ou roteador padrão `net/http` do Go 1.22+.
- Persistência: **jackc/pgx/v5** com conexões em pool `*pgxpool.Pool`.
- Queries: Consultas parametrizadas estritas (`$1`, `$2`) ou geração via **sqlc**.
- Context: Propagação compulsória de `ctx context.Context` em todas as camadas de repositório e serviço.
```

#### Exemplo 4: Adaptando `frontend-engineer.md` para Next.js / Tailwind CSS
Em `.agents/subagents/workers/frontend-engineer.md`:
```markdown
## ⚛️ Stack Tecnológica de Frontend (Next.js App Router + Tailwind)
- Framework: **Next.js 14+ (App Router)** com React Server Components (RSC) por padrão.
- Estilização: **Tailwind CSS** respeitando rigorosamente a grade de 8px e as 20 Zonas Anti-Slop.
- Componentes: Botões sólidos (`bg-slate-900 hover:bg-slate-800 text-white font-medium px-4 py-2 rounded-md`).
- Acessibilidade: Radix UI primitives para menus, modais e tooltips acessíveis.
- Numerais: Classe `tabular-nums` obrigatória em qualquer renderização de preços, contadores ou métricas.
```

---

### Passo C: Conectando os Verifiers aos seus Linters & Testes (`.agents/subagents/verifiers/`)

Os Verifiers são os guardiões de qualidade. Para que a auditoria seja verdadeiramente determinística, configure os comandos exatos que seu time já utiliza no CI/CD.

#### 1. Configurando o `test-engineer.md`:
Substitua as instruções de teste pela suíte real do seu repositório:
```markdown
## 🧪 Execução Compulsória de Testes no Terminal
O test-engineer deve executar os seguintes comandos de validação:
- Para Node/TS: `npm run test:unit && npm run test:e2e`
- Para Python: `pytest -v --cov=src tests/`
- Para Go: `go test -v -race ./...`
- Para PHP: `./vendor/bin/phpunit --testdox`
- Para Rust: `cargo test --all`

Critério de aprovação [🟢 PASS]: Taxa de sucesso de 100% e cobertura mínima de 80%.
```

#### 2. Configurando o `code-reviewer.md`:
Adicione as checagens estáticas de formatação e linting:
```markdown
## 🔍 Linters e Checagens Estáticas Mandatórias:
Antes de emitir veredito:
- Python: Rodar `ruff check .` e `mypy src/`
- TypeScript: Rodar `npx eslint . --ext .ts,.tsx` e `npx tsc --noEmit`
- Go: Rodar `golangci-lint run`
```

---

### Passo D: Criando Novas Skills de Domínio (`.agents/skills/`)

Toda empresa possui regras de negócio complexas que não devem ser repetidas a cada prompt. Transforme o conhecimento do seu time em **Skills Autônomas**.

#### Estrutura de uma Nova Skill:
Crie uma nova pasta em `.agents/skills/<nome-da-skill>/SKILL.md`:

```
.agents/skills/
└── stripe-pix-payments/
    └── SKILL.md
```

#### Conteúdo da Nova Skill (`.agents/skills/stripe-pix-payments/SKILL.md`):
```markdown
---
name: stripe-pix-payments
description: Diretrizes de arquitetura, conciliação e segurança para pagamentos via Stripe e PIX no checkout da nossa empresa.
---

# 💳 Skill: Stripe & PIX Payments Architecture

## 1. Regras de Ouro de Pagamento:
1. **Idempotência Obrigatória:** Toda chamada de cobrança à API Stripe DEVE enviar um `Idempotency-Key` no formato `UUID-v4` gerado no início da transação.
2. **Webhooks Seguros:** Webhooks do Stripe e de bancos PIX devem validar a assinatura criptográfica (`stripe-signature` / HMAC-SHA256) antes de processar qualquer evento.
3. **Zero Cartões Hardcoded:** Dados de cartão de crédito NUNCA tocam nosso backend (uso exclusivo de Stripe Elements / Tokens seguros).
4. **Status de Transação:** O status do pedido só muda para `PAID` após confirmação do evento `payment_intent.succeeded` via webhook auditado, nunca pelo retorno do cliente.
```

Depois de criar a skill, basta referenciá-la nas tarefas ou no `docs/04_SKILLS_CATALOG.md`.

---

### Passo E: Personalizando o Cockpit 2D em Pixel Art (`cockpit/`)

O **Antigravity Cockpit 2D** pode ser adaptado com as salas, agentes e nomes reais do seu esquadrão:

1. **Alterar Nomes, Cores e Badges de Agentes:**
   - Edite `cockpit/agent-scanner.js` no array `this.agentDefinitions`:
   ```javascript
   {
     id: 'ai-specialist',
     name: 'AI & LLM Engineer',
     role: 'Especialista em LangChain & Embeddings',
     room: 'development',
     deskCoord: { x: 22, y: 18 },
     color: '#8b5cf6',
     badge: 'LLM',
     avatarStyle: 'cyber_hoodie',
     level: 85
   }
   ```
2. **Adicionar Novas Salas ou Mesas:**
   - O mapa de tiles é renderizado em `cockpit/public/js/office-sprites.js` e `cockpit/public/js/office-app.js`.
   - Você pode ajustar dimensões da grade e adicionar objetos corporativos (cafeteira, sofás, servidores) modificando as chamadas de renderização de sprites.

---

## 3. Boas Práticas de Manutenção & Versionamento

Para garantir que suas customizações permaneçam organizadas e compatíveis com futuras atualizações do Foundry:

1. **Mantenha as 4 Leis de Karpathy Intactas:** Mesmo customizando frameworks e linters, preserve a disciplina comportamental (*Think Before Coding, Simplicity First, Surgical Changes, Goal-Driven Execution*).
2. **Preserve a Cláusula Pétrea:** Mantenha a proibição de o Orquestrador Pai codificar diretamente; a segregação de papéis é o segredo da longevidade arquitetural do Foundry.
3. **Rode o Secrets Shield Continuamente:** O script `.agents/scripts/pre_commit_secrets_shield.py` deve permanecer no seu pipeline de pré-commit para proteger suas credenciais proprietárias.

---

## Conclusão

Com esta flexibilidade modular, o Antigravity Foundry adapta-se à sua empresa com a mesma facilidade com que opera de fábrica. Seus agentes de IA passam a trabalhar exatamente como o seu time de engenharia mais sênior.
