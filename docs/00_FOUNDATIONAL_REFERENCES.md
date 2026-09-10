# 🏛️ Compêndio de Referências Fundacionais & Hall da Fama (60 Tecnologias)
# 00_FOUNDATIONAL_REFERENCES.md

> *"Se vi mais longe, foi por estar sobre os ombros de gigantes."*  
> — **Isaac Newton**

O **Antigravity Foundry** não nasceu do acaso ou no vácuo tecnológico. Ele é a culminação de uma profunda pesquisa de engenharia reversa, síntese arquitetural e consolidação empírica de **60 dos projetos, repositórios, ferramentas e frameworks mais influentes do planeta** nos campos de Inteligência Artificial Agêntica, Arquitetura de Sistemas, Cibersegurança Ofensiva/Defensiva, Model Context Protocol (MCP), Core Web Vitals e Design de Interfaces de Alta Performance.

Este documento cataloga exaustivamente **cada uma das 60 referências** que formaram a base do Antigravity Foundry, agrupadas cronológica e metodologicamente em **7 Levas de Pesquisa e Síntese Arquitetural**.

---

## 🧭 Sumário das 7 Levas de Pesquisa

| Leva | Domínio Técnico | Qtd. | Escopo Primordial |
| :---: | :--- | :---: | :--- |
| **Leva 1** | Fundamentos de IA, SDLC e Qualidade Web | 18 | Taxonomia de skills, swarms, SDD, Karpathy Laws, Clean Code e HUDs |
| **Leva 2** | Cibersegurança Ofensiva, Core Web Vitals e Disciplina | 20 | MITRE ATT&CK, PoCs sem exploit, Core Web Vitals, LLMs.txt e Hard Gates |
| **Leva 3** | Harnesses e Softwares Executáveis | 5 | Cockpits 2D, memória progressiva, Single-Committer e voz em tempo real |
| **Leva 4** | Loops Autônomos & Motores de Execução | 4 | Proof over Declared Done, Supply Chain Hardening, Fresh Context e L1-L3 |
| **Leva 5** | Servidores MCP de Alta Performance | 7 | Auditoria de rede, PageSpeed, SEO, AST Tree-Sitter e asserção de APIs |
| **Leva 6** | Ecossistema Corporativo, Fiscal & Agentes | 5 | Arquiteturas transacionais enxutas, antifraude, personas e No-Slop textual |
| **Leva 7** | Engenharia Documental e Automação Office | 1 | Automação CLI headless de `.docx`, `.xlsx`, `.pptx` para relatórios de auditoria |
| **TOTAL** | **Ecossistema Completo do Foundry** | **60** | **A Maior Infraestrutura Unificada de Engenharia de IA do Mercado** |

---

## 📦 LEVA 1: Fundamentos de IA, SDLC e Qualidade Web (01 a 18)

Esta leva estabeleceu o alicerce disciplinar, a metodologia de especificação, as leis comportamentais de codificação com LLMs e a erradicação inicial do "AI Slop".

### 01. [`rominirani/antigravity-skills`](https://github.com/rominirani/antigravity-skills)
* **Autor / Organização:** Romin Irani (Google Cloud DevRel)
* **Conceito Primordial:** Catálogo canônico de skills e extensões para o ecossistema Google Antigravity, definindo a taxonomia de chamadas de ferramentas e declaração declarativa de agentes.
* **Absorção no Foundry:** Estabeleceu a estrutura de pastas `.agents/skills/`, os metadados em frontmatter Markdown e o padrão de invocação de skills do Maestro.

### 02. [`roedyrustam/vibes-plug`](https://github.com/roedyrustam/vibes-plug)
* **Autor / Organização:** Roedy Rustam
* **Conceito Primordial:** Orquestração hierárquica de agentes em enxames (*swarms*) com passagem de bastão estruturada e isolamento de contexto de execução.
* **Absorção no Foundry:** O protocolo formal de *Handoff Contract* entre os workers construtores (`backend-engineer` ➔ `frontend-engineer`) antes do início da montagem de interfaces.

### 03. [`thedaviddias/Front-End-Checklist`](https://github.com/thedaviddias/Front-End-Checklist)
* **Autor / Organização:** David Dias
* **Conceito Primordial:** O checklist mais meticuloso do mundo para integridade de frontend: semântica HTML5, acessibilidade WCAG 2.1 AA (contraste > 4.5:1, foco por teclado), metadados e SEO técnico.
* **Absorção no Foundry:** Critérios inegociáveis de aprovação embutidos na skill `frontend-ui-engineering` e auditados pelo `@anti-slop-ui-auditor`.

### 04. [`Leonxlnx/taste-skill`](https://github.com/Leonxlnx/taste-skill)
* **Autor / Organização:** Leonxlnx
* **Conceito Primordial:** Heurísticas objetivas de bom gosto e caça ao AI Slop visual: proibição estrita de vidros borrados (*glassmorphism*), sombras desmedidas e gradientes roxo-neon.
* **Absorção no Foundry:** Base para as 20 Zonas Canônicas Anti-Slop inscritas em `.agents/rules/02_design_system_and_anti_slop.md`.

### 05. [`bradtraversy/design-resources-for-developers`](https://github.com/bradtraversy/design-resources-for-developers)
* **Autor / Organização:** Brad Traversy
* **Conceito Primordial:** Curadoria refinada de paletas sólidas de alta densidade, tipografia suíça corporativa e empacotamento local de bibliotecas de ícones sem dependência de CDNs frágeis.
* **Absorção no Foundry:** Paleta neutra de alto contraste e arquitetura de componentes do Design System Corporativo do Foundry.

### 06. [`addyosmani/agent-skills`](https://github.com/addyosmani/agent-skills)
* **Autor / Organização:** Addy Osmani (Head de Engenharia do Google Chrome)
* **Conceito Primordial:** Metodologia **Spec-Driven Development (SDD)** e o Gated SDLC: antes de encostar em código, o agente formula uma especificação completa e um plano de implementação auditável.
* **Absorção no Foundry:** A Fase 2 do Método Fundido (`.agents/skills/spec-driven-development/`) e o template `templates/implementation_plan_template.md`.

### 07. [`mattpocock/skills`](https://github.com/mattpocock/skills)
* **Autor / Organização:** Matt Pocock (Criador do Total TypeScript)
* **Conceito Primordial:** O **Grill-Me Socratic Interrogation Protocol**: a obrigação do agente interrogar o desenvolvedor com 5 perguntas profundas (Casos de Borda, RBAC, Restrições de UI, Falhas de Rede e Critérios de Sucesso) antes de agir.
* **Absorção no Foundry:** A Fase 0 obrigatória do Método Fundido de Trabalho, transformando o agente em um Tech Lead Socrático.

### 08. [`multica-ai/andrej-karpathy-skills`](https://github.com/multica-ai/andrej-karpathy-skills)
* **Autor / Organização:** Andrej Karpathy (ex-OpenAI, ex-Tesla AI)
* **Conceito Primordial:** As **4 Leis Comportamentais de Engenharia com IAs**: *Think Before Coding*, *Simplicity First (YAGNI)*, *Surgical Changes*, e *Goal-Driven Execution*.
* **Absorção no Foundry:** Cláusula pétrea inscrita em `.agents/rules/01_core_architecture_rules.md`, governando a mentalidade de todos os workers e verifiers.

### 09. [`Nutlope/hallmark`](https://github.com/Nutlope/hallmark)
* **Autor / Organização:** Hassan El Mghari (Nutlope)
* **Conceito Primordial:** Arquitetura de Design System B2B corporativo focado em produtividade real, alta densidade de informação e repúdio a espaços vazios inflados.
* **Absorção no Foundry:** A regra de numerais tabulares (`font-variant-numeric: tabular-nums`) em tabelas e cards de métricas, além da grade modular de 8px.

### 10. [`huytieu/COG-second-brain`](https://github.com/huytieu/COG-second-brain)
* **Autor / Organização:** Huy Tieu
* **Conceito Primordial:** O ciclo de vida do "segundo cérebro": raciocínio dinâmico de IA ➔ formalização em notas estruturadas (Obsidian Vault) ➔ imutabilidade via Git.
* **Absorção no Foundry:** A skill `.agents/skills/documentation-and-adrs/` e a geração compulsória de registros de decisão arquitetural (ADRs).

### 11. [`Shubhamsaboo/awesome-llm-apps`](https://github.com/Shubhamsaboo/awesome-llm-apps)
* **Autor / Organização:** Shubham Saboo
* **Conceito Primordial:** Padrões práticos de arquitetura para aplicações orientadas a modelos de linguagem, agregando observabilidade, taxonomia de prompts e cadeias lógicas.
* **Absorção no Foundry:** A esteira de engenharia de prompts estruturada e desacoplamento de provedores.

### 12. [`affaan-m/ECC`](https://github.com/affaan-m/ECC)
* **Autor / Organização:** Affaan Mustafa
* **Conceito Primordial:** *Enterprise Codebase Companion*: técnicas de context pinching (compressão seletiva de contexto) e validação imediata pós-edição via linters automáticos.
* **Absorção no Foundry:** A rotina do `@code-reviewer` de exigir validação por analisadores estáticos após cada alteração de código.

### 13. [`ustoppble/overclick`](https://github.com/ustoppble/overclick)
* **Autor / Organização:** Ustoppble
* **Conceito Primordial:** Quadro de tarefas autônomo e telemetria de consumo de tokens, latência e steps de execução via ferramentas MCP.
* **Absorção no Foundry:** O painel de métricas e WBS (*Work Breakdown Structure*) integrado ao HUD do Antigravity Cockpit.

### 14. [`herdrdev/herdr`](https://github.com/herdrdev/herdr)
* **Autor / Organização:** Herdr Dev Team
* **Conceito Primordial:** Terminal multiplexer daemon para coordenação de múltiplos processos de IA em background, expondo estados (`working`, `blocked`, `idle`) via streaming SSE.
* **Absorção no Foundry:** O motor assíncrono `cockpit/agent-scanner.js` que alimenta o Cockpit 2D com telemetria viva sem onerar a execução principal.

### 15. [`trycua/cua`](https://github.com/trycua/cua)
* **Autor / Organização:** CUA Team
* **Conceito Primordial:** Automação de ambiente operacional e execução em sandboxes protegidas para agentes de software.
* **Absorção no Foundry:** Princípios de isolamento de execução de comandos e validação não-invasiva no ambiente de homologação local.

### 16. [`langflow-ai/langflow`](https://github.com/langflow-ai/langflow)
* **Autor / Organização:** DataStax / Langflow
* **Conceito Primordial:** Fluxos de dados estruturados com contratos fortemente tipados entre nós de processamento de IA.
* **Absorção no Foundry:** A tipagem rigorosa dos contratos de portão (`templates/gates_contract_template.md`).

### 17. [`punkpeye/awesome-mcp-servers`](https://github.com/punkpeye/awesome-mcp-servers)
* **Autor / Organização:** Punkpeye
* **Conceito Primordial:** O diretório definitivo e curadoria internacional de servidores Model Context Protocol (MCP) para expansão de agentes.
* **Absorção no Foundry:** Base para a seleção e integração dos 7 servidores MCP de alta performance nativos do Foundry.

### 18. [`greensock/gsap-skills`](https://github.com/greensock/gsap-skills)
* **Autor / Organização:** GreenSock Team
* **Conceito Primordial:** Padrões de animação de ultra-alta performance a 60 FPS acelerados exclusivamente por hardware GPU (`transform`, `opacity`), eliminando *layout thrashing* e reflows.
* **Absorção no Foundry:** Regras rígidas de animação do `@anti-slop-ui-auditor` e o motor de renderização do Cockpit 2D em Pixel Art.

---

## 🛡️ LEVA 2: Cibersegurança Ofensiva, Core Web Vitals e Disciplina Agêntica (19 a 38)

Esta leva blindou o Foundry com rigor militar de cibersegurança, auditoria empírica de web performance e combate à indolência de LLMs.

### 19. [`usestrix/strix`](https://github.com/usestrix/strix)
* **Autor / Organização:** Strix AI
* **Conceito Primordial:** O princípio inegociável de auditoria ofensiva *"No exploit, no report"*: relatórios de vulnerabilidade só têm valor se acompanhados de Proof-of-Concept (PoC) determinística e reproduzível.
* **Absorção no Foundry:** Cláusula mestra do [`@security-auditor`](file:///.agents/subagents/verifiers/security-auditor.md): não são aceitas suposições teóricas de falhas, apenas testes e exploits verificáveis.

### 20. [`KeygraphHQ/shannon`](https://github.com/KeygraphHQ/shannon)
* **Autor / Organização:** Keygraph Team
* **Conceito Primordial:** Automação de auditorias de segurança com emissão de laudos padronizados em conformidade com OASIS SARIF e relatórios executivos.
* **Absorção no Foundry:** O formato estruturado de scorecard e relatório do bunker de segurança do Foundry.

### 21. [`mukul975/Anthropic-Cybersecurity-Skills`](https://github.com/mukul975/Anthropic-Cybersecurity-Skills)
* **Autor / Organização:** Mukul Mahipal
* **Conceito Primordial:** O compêndio de 818 competências de cibersegurança alinhadas ao MITRE ATT&CK e ao MITRE Fight Fraud Framework (F3).
* **Absorção no Foundry:** A skill `.agents/skills/security-defense/` e a matriz de checagens contra ataques de injeção, CSRF, IDOR e escalada de privilégios.

### 22. [`lissy93/personal-security-checklist`](https://github.com/lissy93/personal-security-checklist)
* **Autor / Organização:** Alicia Sykes (Lissy93)
* **Conceito Primordial:** Guia definitivo de hardening defensivo de servidores: cabeçalhos de segurança obrigatórios (HSTS, CSP rigoroso, X-Frame-Options: DENY, SameSite cookies).
* **Absorção no Foundry:** A verificação de cabeçalhos HTTP compulsória executada nas auditorias de segurança de aplicações web.

### 23. [`Leonxlnx/unlazy`](https://github.com/Leonxlnx/unlazy)
* **Autor / Organização:** Leonxlnx
* **Conceito Primordial:** A metodologia *Unlazy Discipline*: erradicar a tendência natural de LLMs de cortar caminhos por meio do arquivo de contratos executáveis `GATES.md`. Afirmações verbais valem zero; comandos executados com exit code `0` valem tudo.
* **Absorção no Foundry:** A skill `.agents/skills/unlazy-discipline/` e o comando obrigatório de re-verificação (`--reverify`).

### 24. [`Leonxlnx/agentic-ai-prompt-research`](https://github.com/Leonxlnx/agentic-ai-prompt-research)
* **Autor / Organização:** Leonxlnx
* **Conceito Primordial:** Pesquisa empírica sobre prompts para arquiteturas de agentes soberanos: separação estrita de competências entre supervisor (governador) e operários (workers).
* **Absorção no Foundry:** O modelo de governança onde o Maestro orquestrador nunca gera código e nunca assume o papel de executor.

### 25. [`Leonxlnx/prompt-library`](https://github.com/Leonxlnx/prompt-library)
* **Autor / Organização:** Leonxlnx
* **Conceito Primordial:** Catálogo desktop (Tauri v2) de prompts de engenharia calibrados para máxima precisão e reprodutibilidade.
* **Absorção no Foundry:** A estrutura padronizada dos arquivos Markdown em `.agents/subagents/` e `.agents/skills/`.

### 26. [`thedaviddias/Front-End-Performance-Checklist`](https://github.com/thedaviddias/Front-End-Performance-Checklist)
* **Autor / Organização:** David Dias
* **Conceito Primordial:** A bíblia de otimização de performance frontend com metas agressivas de Core Web Vitals (LCP < 1.2s, INP < 50ms, CLS = 0).
* **Absorção no Foundry:** As metas de desempenho atribuídas ao subagente [`@web-performance-auditor`](file:///.agents/subagents/verifiers/web-performance-auditor.md).

### 27. [`thedaviddias/Front-End-Design-Checklist`](https://github.com/thedaviddias/Front-End-Design-Checklist)
* **Autor / Organização:** David Dias
* **Conceito Primordial:** Padronização de design de interfaces: escalas harmônicas de tipografia, consistência de espaçamento (grade de 8px) e anatomia de componentes.
* **Absorção no Foundry:** A regra de espaçamento e layout modular em `.agents/rules/02_design_system_and_anti_slop.md`.

### 28. [`thedaviddias/Resources-Front-End-Beginner`](https://github.com/thedaviddias/Resources-Front-End-Beginner)
* **Autor / Organização:** David Dias
* **Conceito Primordial:** Princípios fundamentais de acessibilidade semântica (ARIA roles, contraste, foco visual, navegação assistiva).
* **Absorção no Foundry:** Checklist de acessibilidade obrigatório nos contratos de handoff de interface.

### 29. [`thedaviddias/llms-txt-hub`](https://github.com/thedaviddias/llms-txt-hub)
* **Autor / Organização:** David Dias
* **Conceito Primordial:** O padrão web emergente `/llms.txt` para exposição de documentação sintética estruturada para consumo por agentes e crawlers de IA.
* **Absorção no Foundry:** As diretrizes da skill `agentic-seo` para gerar automaticamente arquivos `llms.txt` e documentação de contexto limpa.

### 30. [`addyosmani/repositories`](https://github.com/addyosmani/repositories)
* **Autor / Organização:** Addy Osmani
* **Conceito Primordial:** Conjunto de padrões de liderança técnica e excelência em engenharia de sistemas de grande escala.
* **Absorção no Foundry:** Filosofia de arquitetura resiliente e modularização de código sem dependências circulares.

### 31. [`addyosmani/critical`](https://github.com/addyosmani/critical)
* **Autor / Organização:** Addy Osmani
* **Conceito Primordial:** Extração e injeção inline de *Critical Path CSS* para eliminar render-blocking resources e alcançar First Contentful Paint quase instantâneo.
* **Absorção no Foundry:** Diretriz da skill `web-performance-optimization` de priorizar recursos críticos no carregamento de telas.

### 32. [`addyosmani/essential-js-design-patterns`](https://github.com/addyosmani/essential-js-design-patterns)
* **Autor / Organização:** Addy Osmani (O'Reilly)
* **Conceito Primordial:** A aplicação canônica dos padrões clássicos do Gang of Four (GoF: Module, Observer, Facade, Mediator, Singleton) na arquitetura web moderna.
* **Absorção no Foundry:** Padrões de código auditados pelo [`@code-reviewer`](file:///.agents/subagents/verifiers/code-reviewer.md) no Eixo de Manutenibilidade e Arquitetura.

### 33. [`addyosmani/web-quality-skills`](https://github.com/addyosmani/web-quality-skills)
* **Autor / Organização:** Addy Osmani
* **Conceito Primordial:** Metodologia de medição empírica da qualidade web (*Measurement-First Engineering*) utilizando Lighthouse v12 em modo headless e sem interferência humana.
* **Absorção no Foundry:** O contrato de medição objetiva de pontuação Lighthouse (> 90 em todas as 4 categorias) do `@web-performance-auditor`.

### 34. [`addyosmani/agentic-seo`](https://github.com/addyosmani/agentic-seo)
* **Autor / Organização:** Addy Osmani
* **Conceito Primordial:** Agentic Engine Optimization (AEO): a preparação de websites para serem compreendidos perfeitamente por agentes de busca e motores generativos.
* **Absorção no Foundry:** A skill `.agents/skills/agentic-seo/` para auditoria de schema.org JSON-LD, OpenGraph e metadados canônicos.

### 35. [`addyosmani/agent-engineer`](https://github.com/addyosmani/agent-engineer)
* **Autor / Organização:** Addy Osmani
* **Conceito Primordial:** Engenharia de ferramentas e design de contratos para agentes autônomos cooperativos.
* **Absorção no Foundry:** Os limites estritos de ferramentas atribuídas a cada subagente nas declarações em `.agents/subagents/`.

### 36. [`mattpocock/agent-rules-books`](https://github.com/mattpocock/agent-rules-books)
* **Autor / Organização:** Matt Pocock
* **Conceito Primordial:** Síntese de livros clássicos de ciência da computação (*Refactoring*, *Working Effectively with Legacy Code*, *Clean Architecture*) traduzidos em regras operacionais para LLMs.
* **Absorção no Foundry:** O conjunto de regras em `.agents/rules/01_core_architecture_rules.md` e os 5 Eixos do Code Reviewer.

### 37. [`huytieu/pm-skills`](https://github.com/huytieu/pm-skills)
* **Autor / Organização:** Huy Tieu
* **Conceito Primordial:** Práticas ágeis de gestão de produto para agentes: decomposição de épicos em tarefas granulares e Daily Briefings sintéticos.
* **Absorção no Foundry:** O formato estruturado de WBS com contagem de passos e estimativa de impacto do Maestro.

### 38. [`Shubhamsaboo/all-rag-techniques`](https://github.com/Shubhamsaboo/all-rag-techniques)
* **Autor / Organização:** Shubham Saboo
* **Conceito Primordial:** Compêndio de técnicas avançadas de RAG: *Graph RAG*, *Contextual Compression*, *Semantic Chunking* e *Self-Correction*.
* **Absorção no Foundry:** Princípios de recuperação semântica integrados via servidor MCP `codebase-memory`.

---

## 🕹️ LEVA 3: Harnesses e Softwares Executáveis (39 a 43)

Esta leva transformou o ecossistema conceitual em uma experiência de software executável, visual e auditável em tempo real.

### 39. [`thedotmack/claude-mem`](https://github.com/thedotmack/claude-mem)
* **Autor / Organização:** thedotmack (Alex Newman)
* **Conceito Primordial:** Persistência de memória contínua em 3 camadas e o princípio de *Progressive Disclosure*: alimentar o agente apenas com o contexto estritamente necessário para cada fase.
* **Absorção no Foundry:** O isolamento da janela de contexto dos workers, que recebem apenas o contrato de handoff e as regras da sua tarefa.

### 40. [`pipecat-ai/pipecat`](https://github.com/pipecat-ai/pipecat)
* **Autor / Organização:** Daily.co
* **Conceito Primordial:** Framework de IA de voz em tempo real de ultrabaixa latência e arquitetura multimodal orientada a eventos.
* **Absorção no Foundry:** A arquitetura do sintetizador de áudio Web Audio do Cockpit (`cockpit/audio-synth.js`), disparando notificações sonoras a 60 FPS por evento agêntico.

### 41. [`VoltAgent/skills`](https://github.com/VoltAgent/skills)
* **Autor / Organização:** VoltAgent Team
* **Conceito Primordial:** Fronteiras de erro (*error boundaries*), circuit breakers e recuperação graciosa de falhas parciais em orquestrações complexas.
* **Absorção no Foundry:** O Circuit Breaker de 3 Rodadas na Etapa 5 do Método Fundido: se os 6 Verifiers não chegarem a 100% PASS em 3 ciclos, o sistema pausa e exige mediação humana.

### 42. [`FlashML-org/FreeToken`](https://github.com/FlashML-org/FreeToken)
* **Autor / Organização:** UC Berkeley / MIT Researchers
* **Conceito Primordial:** Otimização de cache de atenção KV (*Semantic KV Cache*) e estratégias de reuso de prefixos de prompts para reduzir drasticamente custos de inferência.
* **Absorção no Foundry:** O reuso estrito dos cabeçalhos dos arquivos `.agents/rules/` como prefixos estáticos cacheados pelos provedores LLM.

### 43. [`chaitanyagiri/munder-difflin`](https://github.com/chaitanyagiri/munder-difflin) (`munderdiffl.in`)
* **Autor / Organização:** Chaitanya Giri
* **Conceito Primordial:** O escritório 2D retro em Pixel Art com agentes autônomos que caminham entre salas operacionais, associado ao padrão arquitetural **Single-Committer Git**: múltiplos agentes operam em salas temáticas, mas apenas o governador despacha commits.
* **Absorção no Foundry:** A inspiração direta para o **Antigravity Cockpit 2D** (`cockpit/`), o layout do andar corporativo com 4 salas especializadas e a política do Single-Committer.

---

## 🔄 LEVA 4: Loops Autônomos & Motores de Execução (44 a 47)

Esta leva forneceu os princípios matemáticos e de processo para os loops de auto-correção e segurança da cadeia de suprimentos.

### 44. [`taracodlabs/aiden`](https://github.com/taracodlabs/aiden)
* **Autor / Organização:** Taracod Labs
* **Conceito Primordial:** O princípio *"Proof over Declared Done"*: nenhum agente pode declarar uma tarefa como concluída baseando-se em prosa ou intenções; a conclusão requer evidências físicas inspecionáveis no disco ou comandos de teste aprovados.
* **Absorção no Foundry:** A exigência de evidência obrigatória em `templates/walkthrough_template.md` antes de qualquer liberação de release.

### 45. [`earendil-works/pi`](https://github.com/earendil-works/pi)
* **Autor / Organização:** Earendil Works
* **Conceito Primordial:** *Supply-Chain Hardening* e isolamento de dependências: proibição de pacotes transitivos não auditados, empacotamento offline de bibliotecas essenciais e verificação criptográfica de hashes.
* **Absorção no Foundry:** Todas as dependências do Cockpit 2D e do Design System são 100% locais e empacotadas (sem CDNs externas inseguras).

### 46. [`cobusgreyling/loop-engineering`](https://github.com/cobusgreyling/loop-engineering)
* **Autor / Organização:** Cobus Greyling
* **Conceito Primordial:** O modelo de maturação de loops de IA:
  * Nível L1: Chats isolados e manuais (propenso a falhas).
  * Nível L2: Cadeias sequenciais com memória parcial.
  * Nível L3: Loops fechados orientados a objetivos com governança soberana e portões de verificação.
* **Absorção no Foundry:** A classificação do Foundry como um motor nativo Nível L3 de Engenharia de Loops.

### 47. [`snarktank/ralph`](https://github.com/snarktank/ralph)
* **Autor / Organização:** Ryan Carson / Huntley
* **Conceito Primordial:** O padrão *Fresh Context Loop*: a manutenção de um estado persistente em disco (`progress.txt`, PRD de requisitos), permitindo reiniciar a janela de contexto da IA do zero a cada iteração sem carregar o lixo da sessão anterior.
* **Absorção no Foundry:** O mecanismo de sessões limpas para cada subagente despachado pelo Maestro, mantendo apenas os artefatos em disco como fonte de verdade.

---

## ⚡ LEVA 5: Servidores MCP de Alta Performance (48 a 54)

Esta leva integrou ferramentas canônicas baseadas no padrão aberto Model Context Protocol (MCP) da Anthropic, conferindo superpoderes determinísticos aos agentes.

### 48. [`ruslanlap/pagespeed-insights-mcp`](https://github.com/ruslanlap/pagespeed-insights-mcp)
* **Autor / Organização:** Ruslan Lapteff
* **Conceito Primordial:** Servidor MCP especializado em consulta contínua às APIs do Google PageSpeed Insights, retornando métricas reais de campo de Core Web Vitals (LCP, FID/INP, CLS).
* **Absorção no Foundry:** Utilizado pelo `@web-performance-auditor` para auditar a velocidade real de carregamento em ambientes de staging.

### 49. [`node-man/dechonet-mcp`](https://github.com/node-man/dechonet-mcp)
* **Autor / Organização:** node-man
* **Conceito Primordial:** Suíte de 15 ferramentas de rede e infraestrutura via MCP: inspeção de certificados SSL/TLS, resolução DNS, verificação de cabeçalhos de segurança HTTP e análise de rotas.
* **Absorção no Foundry:** Ferramenta do `@security-auditor` para validação de cabeçalhos de proteção e integridade de transporte de rede.

### 50. [`vdalhambra/siteaudit-mcp`](https://github.com/vdalhambra/siteaudit-mcp)
* **Autor / Organização:** Victor Dalhambra
* **Conceito Primordial:** Servidor MCP de auditoria técnica profunda de websites: integridade de links internos/externos, validação de metatags de redes sociais e conformidade WCAG 2.1 AA.
* **Absorção no Foundry:** Utilizado na skill `agentic-seo` e nas validações de integridade de links do `@anti-slop-ui-auditor`.

### 51. [`qinisolabs/qiniso`](https://github.com/qinisolabs/qiniso)
* **Autor / Organização:** Qiniso Labs
* **Conceito Primordial:** Mecanismo determinístico de validação matemática de identificadores corporativos e dígitos verificadores (CPF, CNPJ, IBAN, cartões de crédito), impedindo alucinações de LLMs em validações de dados.
* **Absorção no Foundry:** Diretriz de validação de documentos corporativos na camada de domínio da skill `backend-architecture`.

### 52. [`builditwithgk/repo-cartographer`](https://github.com/builditwithgk/repo-cartographer)
* **Autor / Organização:** GK / BuildItWithGK
* **Conceito Primordial:** Servidor MCP para mapeamento de dependências de código, extração de grafos de importação e geração automática de diagramas Mermaid em tempo real.
* **Absorção no Foundry:** Geração automática de diagramas arquiteturais para inclusão em especificações técnicas e ADRs.

### 53. [`cocaxcode/api-testing-mcp`](https://github.com/cocaxcode/api-testing-mcp)
* **Autor / Organização:** cocaxcode
* **Conceito Primordial:** Servidor MCP para testes automatizados de APIs REST: disparo de requisições GET/POST, asserção de JSON schemas, validação de tempos de resposta e testes de carga.
* **Absorção no Foundry:** Utilizado pelo `@test-engineer` para verificar empiricamente contratos de endpoints no Gated SDLC.

### 54. [`DeusData/codebase-memory-mcp`](https://github.com/DeusData/codebase-memory-mcp)
* **Autor / Organização:** DeusData
* **Conceito Primordial:** Servidor MCP que utiliza Tree-Sitter para construir um grafo de conhecimento de AST (Abstract Syntax Tree) do repositório, indexando classes, funções e chamadas com indexação semântica e economia massiva de contexto.
* **Absorção no Foundry:** A capacidade dos subagentes realizarem buscas estruturadas por símbolos sem ler gigabytes de arquivos em texto puro.

---

## 🏢 LEVA 6: Ecossistema Corporativo, Fiscal & Agentes (55 a 59)

Esta leva incorporou o pragmatismo empresarial de sistemas ERP maduros, a erradicação de enrolação textual e o padrão global de personas de agentes.

### 55. [`Dolibarr/dolibarr`](https://github.com/Dolibarr/dolibarr)
* **Autor / Organização:** Dolibarr Foundation
* **Conceito Primordial:** O sistema ERP/CRM open-source mais longevo e pragmático do mercado: a prova definitiva de que arquiteturas diretas, enxutas, transacionais e sem overengineering garantem décadas de estabilidade para empresas reais.
* **Absorção no Foundry:** O modelo mental corporativo adotado pelo `enterprise-architect`: foco no fluxo de valor do negócio, integridade transacional e rejeição absoluta a complexidade acidental.

### 56. [`nfe.io`](https://github.com/nfe-io)
* **Autor / Organização:** NFe.io Tecnologia
* **Conceito Primordial:** Arquitetura desacoplada de processamento fiscal assíncrono: emissão de notas, cálculo tributário e mensageria distribuída com idempotência estrita.
* **Absorção no Foundry:** O padrão de filas transacionais e jobs assíncronos recomendado para operações de alta criticidade na skill `backend-architecture`.

### 57. [`petergyang/no-ai-slop`](https://github.com/petergyang/no-ai-slop)
* **Autor / Organização:** Peter Yang
* **Conceito Primordial:** O manifesto contra o *AI Slop Textual*: eliminação de jargões vazios, falso-profundidade, resumos pedantes ("Em conclusão...", "É importante lembrar que...") e mensagens de commit desumanas geradas por IA.
* **Absorção no Foundry:** O padrão de comunicação sóbria, commits semânticos cirúrgicos no padrão Conventional Commits e documentação direta ao ponto.

### 58. [`every-app/open-seo`](https://github.com/every-app/open-seo)
* **Autor / Organização:** Every App
* **Conceito Primordial:** Framework open-source para auditoria de metadados, sitemaps XML e indexabilidade técnica para motores modernos de busca.
* **Absorção no Foundry:** Regras da skill `agentic-seo` para validação de tags de rastreamento e indexabilidade de páginas.

### 59. [`msitarzewski/agency-agents`](https://github.com/msitarzewski/agency-agents)
* **Autor / Organização:** Maciej Sitarzewski
* **Conceito Primordial:** A maior biblioteca global de personas de subagentes de IA estruturadas em formato Markdown padronizado, definindo fronteiras claras de atuação e competências específicas.
* **Absorção no Foundry:** A base para a estruturação das personas e fichas operacionais de todos os 10 subagentes em `.agents/subagents/`.

---

## 📄 LEVA 7: Engenharia Documental e Automação Office (60)

Esta leva conferiu ao Foundry a capacidade soberana de manipulação documental empresarial sem depender de softwares proprietários pesados.

### 60. [`iOfficeAI/OfficeCLI`](https://github.com/iOfficeAI/OfficeCLI)
* **Autor / Organização:** iOfficeAI
* **Conceito Primordial:** Motor CLI ultrarrápido para geração, edição e conversão programática de documentos Microsoft Office (`.docx`, `.xlsx`, `.pptx`) diretamente pelo terminal para agentes de IA, operando de forma 100% autônoma sem exigir a suíte Microsoft Office instalada. Acompanhado de uma biblioteca de 11 subskills especializadas para formatação de planilhas contábeis, apresentações executivas e relatórios técnicos.
* **Absorção no Foundry:** A capacidade do `@enterprise-architect` e dos auditores de gerarem relatórios de conformidade executiva, auditorias de segurança em planilhas tabulares e documentações de homologação em formatos de padrão corporativo universal.

---

## 📊 Matriz de Rastreabilidade Completa das 60 Tecnologias

A tabela a seguir consolida a correspondência direta e inequívoca entre cada uma das 60 referências mundiais e os respectivos módulos, subagentes, skills e regras do ecossistema **Antigravity Foundry**:

| # | Tecnologia / Repositório | Autor / Organização | Módulo / Artefato no Antigravity Foundry |
| :---: | :--- | :--- | :--- |
| **01** | `antigravity-skills` | Romin Irani (Google DevRel) | Taxonomia de skills em `.agents/skills/` |
| **02** | `vibes-plug` | Roedy Rustam | Protocolo de Handoff Contract entre Workers |
| **03** | `Front-End-Checklist` | David Dias | Critérios de acessibilidade WCAG 2.1 AA na skill `frontend-ui-engineering` |
| **04** | `taste-skill` | Leonxlnx | As 20 Zonas Canônicas Anti-Slop em `.agents/rules/02_design_system_and_anti_slop.md` |
| **05** | `design-resources-for-developers` | Brad Traversy | Design System Corporativo Suíço e empacotamento local de ícones |
| **06** | `agent-skills` | Addy Osmani (Google) | Metodologia SDD e template `templates/implementation_plan_template.md` |
| **07** | `skills (Grill-Me)` | Matt Pocock | Fase 0: Grill-Me Socrático em `.agents/skills/metodo-fundido/` |
| **08** | `andrej-karpathy-skills` | Andrej Karpathy | As 4 Leis Comportamentais em `.agents/rules/01_core_architecture_rules.md` |
| **09** | `hallmark` | Hassan El Mghari (Nutlope) | Padrões de alta densidade B2B e `font-variant-numeric: tabular-nums` |
| **10** | `COG-second-brain` | Huy Tieu | Skill `documentation-and-adrs` e ciclo de vida de ADRs |
| **11** | `awesome-llm-apps` | Shubham Saboo | Esteira analítica e taxonomia de prompts agênticos |
| **12** | `ECC` | Affaan Mustafa | Context pinching e validação imediata com linters |
| **13** | `overclick` | Ustoppble | WBS task board e contadores de steps no Cockpit 2D HUD |
| **14** | `herdr` | Herdr Dev Team | Daemon SSE em `cockpit/agent-scanner.js` para telemetria contínua |
| **15** | `cua` | CUA Team | Princípios de isolamento e execução determinística de comandos |
| **16** | `langflow` | DataStax / Langflow | Contratos fortemente tipados entre nós de execução |
| **17** | `awesome-mcp-servers` | Punkpeye | Catálogo e curadoria da infraestrutura MCP do Foundry |
| **18** | `gsap-skills` | GreenSock Team | Motor visual a 60 FPS do Cockpit e proscrição de layout thrashing |
| **19** | `strix` | Strix AI | Cláusula "No exploit, no report" do `@security-auditor` |
| **20** | `shannon` | Keygraph Team | Relatórios executivos de auditoria e formato de scorecard |
| **21** | `Anthropic-Cybersecurity-Skills` | Mukul Mahipal | Skill `security-defense` e matriz MITRE ATT&CK / F3 |
| **22** | `personal-security-checklist` | Alicia Sykes (Lissy93) | Hardening de servidores e validação obrigatória de cabeçalhos de segurança |
| **23** | `unlazy` | Leonxlnx | Skill `unlazy-discipline` e contratos executáveis `GATES.md` |
| **24** | `agentic-ai-prompt-research` | Leonxlnx | Segregação estrita entre Governador Soberano e Operários |
| **25** | `prompt-library` | Leonxlnx | Estrutura modular e padronizada das personas de subagentes |
| **26** | `Front-End-Performance-Checklist` | David Dias | Metas de Core Web Vitals (LCP < 1.2s, INP < 50ms, CLS = 0) |
| **27** | `Front-End-Design-Checklist` | David Dias | Grade modular de 8px e consistência visual em componentes |
| **28** | `Resources-Front-End-Beginner` | David Dias | Checklist de semântica web e navegação por teclado |
| **29** | `llms-txt-hub` | David Dias | Geração de especificações sintéticas `/llms.txt` na skill `agentic-seo` |
| **30** | `repositories` | Addy Osmani | Princípios de liderança técnica e modularização sem dependências circulares |
| **31** | `critical` | Addy Osmani | Priorização de Critical Path CSS na skill `web-performance-optimization` |
| **32** | `essential-js-design-patterns` | Addy Osmani | Padrões GoF auditados pelo subagente `@code-reviewer` |
| **33** | `web-quality-skills` | Addy Osmani | Metodologia Measurement-First via Lighthouse v12 em staging |
| **34** | `agentic-seo` | Addy Osmani | Skill `agentic-seo` e padronização JSON-LD / Schema.org |
| **35** | `agent-engineer` | Addy Osmani | Restrições de ferramentas e design de contratos de agentes |
| **36** | `agent-rules-books` | Matt Pocock | Os 5 Eixos de Qualidade de Código do `@code-reviewer` |
| **37** | `pm-skills` | Huy Tieu | Decomposição em WBS atômica e relatórios de progresso diário |
| **38** | `all-rag-techniques` | Shubham Saboo | Estratégias de recuperação de contexto com Graph RAG e compressão |
| **39** | `claude-mem` | Alex Newman (thedotmack) | Progressive Disclosure: contexto atômico e limpo para subagentes |
| **40** | `pipecat` | Daily.co | Arquitetura de áudio orientada a eventos em `cockpit/audio-synth.js` |
| **41** | `VoltAgent/skills` | VoltAgent Team | Circuit Breaker de 3 Rodadas no loop de verificação fechada |
| **42** | `FreeToken` | UC Berkeley / MIT | Reuso estrito de prefixos cacheados de regras e contexto estático |
| **43** | `munder-difflin` | Chaitanya Giri | Cockpit 2D em Pixel Art (`cockpit/`) e arquitetura Single-Committer Git |
| **44** | `aiden` | Taracod Labs | Princípio "Proof over Declared Done" em `templates/walkthrough_template.md` |
| **45** | `pi` | Earendil Works | Supply-Chain Hardening e empacotamento offline de bibliotecas e ícones |
| **46** | `loop-engineering` | Cobus Greyling | Maturação para Loops L3 (governança soberana com portões executáveis) |
| **47** | `ralph` | Ryan Carson / Huntley | Padrão Fresh Context Loop com estado persistido em disco |
| **48** | `pagespeed-insights-mcp` | Ruslan Lapteff | Servidor MCP de telemetria contínua de Core Web Vitals |
| **49** | `dechonet-mcp` | node-man | Servidor MCP com 15 ferramentas de rede, DNS e auditoria SSL/TLS |
| **50** | `siteaudit-mcp` | Victor Dalhambra | Servidor MCP de auditoria de acessibilidade WCAG e integridade de URLs |
| **51** | `qiniso` | Qiniso Labs | Validação matemática determinística de CPFs, CNPJs e documentos fiscais |
| **52** | `repo-cartographer` | GK / BuildItWithGK | Servidor MCP de mapeamento AST e diagramas Mermaid automáticos |
| **53** | `api-testing-mcp` | cocaxcode | Servidor MCP de testes de carga e asserção de contratos de API REST |
| **54** | `codebase-memory-mcp` | DeusData | Servidor MCP com Tree-Sitter para navegação precisa no grafo de símbolos |
| **55** | `dolibarr` | Dolibarr Foundation | Filosofia transacional pragmática do `enterprise-architect` (anti-overengineering) |
| **56** | `nfe.io` | NFe.io Tecnologia | Padrão de filas assíncronas e processamento fiscal idempotente |
| **57** | `no-ai-slop` | Peter Yang | Erradicação de slop textual, resumos prolixos e commits desumanos |
| **58** | `open-seo` | Every App | Auditoria de metadados semânticos e integridade de sitemaps |
| **59** | `agency-agents` | Maciej Sitarzewski | Taxonomia das personas dos 10 subagentes em `.agents/subagents/` |
| **60** | `OfficeCLI` | iOfficeAI | Automação CLI headless de `.docx`, `.xlsx` e `.pptx` para laudos executivos |

---

## 🏛️ Conclusão: A Grande Convergência

O Antigravity Foundry não busca reinventar conceitos fundamentais que gênios da engenharia já consolidaram. Nossa inovação reside na **Grande Síntese**: conectar e harmonizar essas 60 disciplinas em um motor coeso, unificado e determinístico. 

Ao unir o rigor socrático de Matt Pocock, as leis comportamentais de Andrej Karpathy, o SDD de Addy Osmani, o modelo visual Single-Committer de Chaitanya Giri, a disciplina executável de Leonxlnx e a sofisticação instrumental dos servidores MCP, o **Antigravity Foundry entrega o estado da arte absoluto em desenvolvimento assistido por agentes autônomos no planeta.**
