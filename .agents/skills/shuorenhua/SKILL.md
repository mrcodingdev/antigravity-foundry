---
name: shuorenhua
description: "说人话 (Falar como Gente): Purificação profunda de texto para erradicar AI Slop, chatgptês, clichês corporativos e frases ocas em PT-BR e EN. Preserva 100% dos fatos, dados, regras de negócio e termos técnicos, entregando prosa humana e direta. Inspirado em MrGeDiao/shuorenhua."
risk: safe
source: "https://github.com/MrGeDiao/shuorenhua"
date_added: "2026-09-18"
---

# 说人话 (Shuorenhua) — Falar como Gente (Purificador Anti-Slop de Texto)

Edita textos, documentações, relatórios e manuais para torná-los diretos, autênticos e humanos, eliminando a linguagem robótica de IA ("chatgptês", rodeios, falsas solenidades e paralelismos sintáticos forçados), sem nunca alterar fatos, métricas, códigos ou responsabilidades.

## O que é Erradicado (AI Slop & Chatgptês)

- **Aberturas e Fechamentos Ocos:** "Certamente! Vamos explorar...", "Espero que isso ajude!", "Sinta-se à vontade para perguntar...".
- **Transições Embaladas:** "Em suma,", "Vale destacar que,", "É imperativo salientar que,", "Nesse cenário dinâmico,", "Diante do exposto,", "Não obstante,".
- **Elogios Artificiais e Entusiasmo Forçado:** "Esta excelente solução inovadora...", "Uma rica tapeçaria de...".
- **Paralelismos Sintáticos Mecânicos:** Listas de 5 itens onde todas as frases começam exatamente com o mesmo verbo no infinitivo ou estrutura idêntica gerada por distribuição estatística de tokens.
- **Auto-Qualificações sem Base:** Afirmar que uma solução é "robusta", "perfeita", "otimizada ao extremo" sem prova empírica imediata.

## O que é Intocável (Preservação Estrita)

1. **Fatos, Regras e Valores:** Números, porcentagens, prazos, preços, nomes de tabelas, rotas, colunas SQL e regras contábeis/fiscais.
2. **Pessoas e Papéis Reais:** Douglas (Direção Técnica), Nikolas (Banco de Dados/Manuais), Enzo (Documentação ABNT), Sugahara (Apresentação na Banca) e Cesar (Requisitos Papelaria Real).
3. **Termos Técnicos Legítimos:** RBAC, BCrypt, DANFE NFC-e, EAN-13, Markup, Shrinkage Contábil, PDO. Não trocar termos técnicos precisos por explicações vagas.
4. **Código e Comandos:** Blocos de código, scripts, comandos Git e caminhos de arquivo nunca são alterados durante a limpeza de texto.

## Escopos de Edição

- **`in-place` (Cirúrgico):** Não apaga parágrafos nem altera a ordem das frases. Apenas remove palavras de preenchimento, clichês e amaciadores de frases dentro da própria oração.
- **`bounded` (Limitado):** Ajusta o fluxo no nível do parágrafo, mantendo a estrutura original sem deletar blocos inteiros.
- **`structural` (Livre):** Reescreve a seção para que soe como um artigo técnico de alta qualidade ou um manual profissional de balcão.
- **`annotation` (Auditoria):** Apenas aponta os vícios de IA e passagens artificiais, explicando por que soam falsas, sem alterar o texto original.
