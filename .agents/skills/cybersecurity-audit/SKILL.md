---
name: cybersecurity-audit
description: Framework completo de Defesa Cibernética, Anti-Fraude e Auditoria de Segurança para aplicações corporativas, APIs e sistemas web, baseado no OWASP Top 10, MITRE ATT&CK v19.1, MITRE F3 v1.1, Sentry Security Review e Pre-Commit Secrets Shield.
---

# 🛡️ Skill: Cybersecurity Audit & Zero-Leak Defense (v2.2.0)

Esta skill incorpora os princípios e contramedidas absorvidos de referências globais de cibersegurança (`usestrix/strix`, `KeygraphHQ/shannon`, `mukul975/Anthropic-Cybersecurity-Skills` e `lissy93/personal-security-checklist`), estruturada em **6 Pilares Fundamentais de Segurança da Informação** para qualquer stack corporativa (Node/TypeScript, Python, Go, PHP, Rust, Java, C#):

---

## 1. Os 6 Pilares de Auditoria de Segurança

### ① Security Review & Hardening de Infraestrutura (Lissy93 & Sentry)
- **Secrets Scanner:** Procura ativa de senhas, tokens de API, chaves privadas e credenciais hardcoded.
- **Servidor Web & Proxy Defensivo:** Desativação de listagem de diretórios (`Options -Indexes` ou autoindex off), bloqueio estrito de extensões sensíveis (`.env`, `.git`, `.sql`, `.log`, `.md`) e supressão de assinaturas de servidor (`ServerTokens Prod`, `X-Powered-By`).
- **Cabeçalhos de Segurança (SecurityHeaders A+):** Validação compulsória de `Strict-Transport-Security`, `X-Frame-Options: SAMEORIGIN`, `X-Content-Type-Options: nosniff`, `Referrer-Policy: strict-origin-when-cross-origin` e `Permissions-Policy`.
- **Higiene de Sessão:** Cookies de sessão com flags `HttpOnly`, `Secure`, `SameSite=Strict` e timeout de inatividade configurado.

### ② Dynamic Exploit & Validação Empírica (Strix & Shannon - "No Exploit, No Report")
- **Validação de Prova de Conceito (PoC-First):** Vulnerabilidades teóricas devem ser comprovadas por requisições locais reais no servidor de desenvolvimento (ex: localhost / ambiente de staging / container local) antes de serem classificadas como falhas críticas.
- **Auditoria de IDOR (Insecure Direct Object Reference):** Em todas as consultas que recebem IDs via parâmetros de requisição (pedidos, contas, dados de usuários, transações), validação rigorosa de permissão RBAC antes de executar a query.
- **Bypass de Autenticação:** Testes de requisição direta em endpoints internos sem sessão ativa ou token Bearer válido.

### ③ Mitigação de Fraude Financeira e Transacional (MITRE Fight Fraud Framework - F3 v1.1)
- **Tática de Posicionamento (`FA0001`):** Impedir manipulação de dados cadastrais, alteração indevida de chaves de recebimento ou elevação horizontal de privilégios de usuário comum para Administrador.
- **Tática de Monetização (`FA0002`):**
  * Bloqueio de transações com valor negativo, centavos manipulados ou inconsistências de saldo.
  * Validação de dupla autorização gerencial para estornos, cancelamentos e operações financeiras de alto risco.
  * Trilha de auditoria transacional imutável em logs estruturados ou tabela de auditoria com IP de origem, timestamp ISO-8601 e identidade do operador responsável.

### ④ OWASP Top 10 Compliance
- **A01: Broken Access Control:** Separação estrita entre Administrador (irrestrito) e Usuário Operacional (bloqueio de dados confidenciais, custos internos, margens e relatórios restritos).
- **A02: Cryptographic Failures:** Criptografia de senhas com algoritmos robustos (**Argon2id** ou **BCrypt Cost 12**), salting automático e proibição de senhas em texto puro.
- **A03: Injection (SQL & Command):** 100% das operações de banco DEVEM utilizar **Prepared Statements / Queries Parametrizadas** (ex: PDO, psycopg2, TypeORM, Prisma, pgx, EF Core) com parâmetros vinculados (`?`, `:named` ou `$1`). Concatenação de strings SQL é terminantemente proibida.
- **A07: Identification Failures:** Regeneração compulsória de identificador de sessão pós-login, validação de credencial anterior na troca e encerramento com destruição completa de sessão/token.
- **A08: Software & Data Integrity (CSRF):** Validação de tokens anti-CSRF ou verificação de cabeçalhos de proteção em 100% das requisições mutáveis de estado (`POST`, `PUT`, `DELETE`).

### ⑤ Contramedidas Defensivas (MITRE D3FEND)
- **D3-SPP (Segmented Parameterized Processing):** Sanitização e escape de saída de acordo com o contexto (escape automático de templates JSX/Vue/Blade/Jinja2 ou funções nativas de encode de entidades HTML).
- **D3-NTA (Network Traffic & Origin Analysis):** Registro do endereço IP de origem em cada transação financeira e acesso administrativo.

### ⑥ Secrets Audit & Pre-Commit Secrets Shield
- Execução compulsória do script `.agents/scripts/pre_commit_secrets_shield.py` antes de qualquer `git commit` ou `git push`.
- Varredura profunda com expressões regulares no diff e em todo o histórico do Git (`git log -S`).

---

## 2. Checklist Rápido de Pré-Commit de Segurança

Antes de qualquer `git commit` ou deploy:
- [ ] Arquivos de configuração obtêm credenciais via variáveis de ambiente (`process.env`, `os.environ`, `getenv()`) com zero chaves hardcoded?
- [ ] O arquivo `.env` está no `.gitignore` e protegido contra acesso externo?
- [ ] 100% das novas queries SQL utilizam Prepared Statements parametrizados com bind variables?
- [ ] Todos os formulários e rotas mutáveis possuem proteção ativa contra CSRF?
- [ ] 100% das saídas dinâmicas no HTML utilizam escape de caracteres contra XSS?
- [ ] As rotas restritas a Administrador invocam middlewares ou guards de autorização RBAC antes da execução da lógica?
- [ ] Nenhuma informação sensível (como senhas, segredos ou cartões) é gravada na trilha de auditoria/logs?
- [ ] As flags de cookies de sessão estão habilitadas com `HttpOnly`, `Secure` e `SameSite`?
