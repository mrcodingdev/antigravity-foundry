---
name: cybersecurity-audit
description: Framework completo de Defesa Cibernética, Anti-Fraude e Auditoria de Segurança para aplicações web corporativas (com casos didáticos de ERP), baseado no OWASP Top 10, MITRE ATT&CK v19.1, MITRE F3 v1.1, Sentry Security Review e Pre-Commit Secrets Shield.
---

# 🛡️ Skill: Cybersecurity Audit & Zero-Leak Defense (v2.2.0)

Esta skill incorpora os princípios e contramedidas absorvidos de referências globais de cibersegurança (`usestrix/strix`, `KeygraphHQ/shannon`, `mukul975/Anthropic-Cybersecurity-Skills` e `lissy93/personal-security-checklist`), estruturada em **6 Pilares Fundamentais de Segurança da Informação** para aplicações corporativas no Antigravity Foundry (usando sistemas ERP como referência didática de domínio):

---

## 1. Os 6 Pilares de Auditoria de Segurança

### ① Security Review & Hardening de Infraestrutura (Lissy93 & Sentry)
- **Secrets Scanner:** Procura ativa de senhas, tokens de API, chaves privadas e credenciais hardcoded.
- **Servidor Web Defensivo:** Desativação de listagem de diretórios (`Options -Indexes`), bloqueio estrito de extensões sensíveis (`.env`, `.git`, `.sql`, `.log`, `.md`) e supressão de assinaturas de servidor.
- **Cabeçalhos de Segurança (SecurityHeaders A+):** Validação compulsória de `Strict-Transport-Security`, `X-Frame-Options: SAMEORIGIN`, `X-Content-Type-Options: nosniff`, `Referrer-Policy: strict-origin-when-cross-origin` e `Permissions-Policy`.
- **Higiene de Sessão:** Cookies com flags `HttpOnly`, `Secure`, `SameSite=Strict` e timeout de inatividade para operadores.

### ② Dynamic Exploit & Validação Empírica (Strix & Shannon - "No Exploit, No Report")
- **Validação de Prova de Conceito (PoC-First):** Vulnerabilidades teóricas devem ser comprovadas por requisições locais reais no servidor de desenvolvimento (ex: localhost / XAMPP) antes de serem classificadas como falhas críticas.
- **Auditoria de IDOR (Insecure Direct Object Reference):** Em todas as consultas que recebem IDs via parâmetros de requisição (vendas, compras, produtos, clientes), validação rigorosa de permissão RBAC antes de executar a query.
- **Bypass de Autenticação:** Testes de requisição direta em endpoints internos sem sessão ativa de operador.


### ③ Mitigação de Fraude Financeira no Varejo (MITRE Fight Fraud Framework - F3 v1.1)
- **Tática de Posicionamento (`FA0001`):** Impedir manipulação de dados cadastrais, alteração indevida de chaves Pix ou elevação horizontal de privilégios de Caixa para Administrador.
- **Tática de Monetização (`FA0002`):**
  * Bloqueio de vendas com valor negativo ou centavos manipulados no PDV.
  * Validação gerencial compulsória para estornos, cancelamento de compras aprovadas e sangrias de caixa.
  * Trilha de auditoria transacional imutável em `relatorios/logs.php` com IP de origem, data/hora e operador responsável.

### ④ OWASP Top 10 Compliance
- **A01: Broken Access Control:** Separação estrita entre Administrador (irrestrito) e Caixa (bloqueio de custo, margem e relatórios gerenciais).
- **A02: Cryptographic Failures:** Criptografia de senhas com **BCrypt Cost 12** (`password_hash`), salting automático e proibição de senhas em texto puro.
- **A03: Injection (SQL & Command):** 100% das operações de banco DEVEM utilizar **PDO Prepared Statements** parametrizados com `?` ou `:named`. Concatenação de strings SQL é terminantemente proibida.
- **A07: Identification Failures:** Regeneração compulsória de ID de sessão pós-login (`session_regenerate_id(true)`), validação de senha anterior na troca e logout com destruição de sessão.
- **A08: Software & Data Integrity (CSRF):** Validação de tokens CSRF (`csrf_verify()`) em 100% das requisições POST que alteram estado.

### ⑤ Contramedidas Defensivas (MITRE D3FEND)
- **D3-SPP (Segmented Parameterized Processing):** Sanitização de saída HTML com `htmlspecialchars(..., ENT_QUOTES, 'UTF-8')`.
- **D3-NTA (Network Traffic & Origin Analysis):** Registro do endereço IPv4/IPv6 de origem de cada transação de PDV e acesso administrativo.

### ⑥ Secrets Audit & Pre-Commit Secrets Shield
- Execução compulsória do script `.agents/scripts/pre_commit_secrets_shield.py` antes de qualquer `git commit` ou `git push`.
- Varredura profunda com expressões regulares no diff e em todo o histórico do Git (`git log -S`).

---

## 2. Checklist Rápido de Pré-Commit de Segurança

Antes de qualquer `git commit` ou deploy:
- [ ] O arquivo `config.php` possui apenas chamadas `getenv()` / `$_ENV` e zero credenciais expostas?
- [ ] O arquivo `.env` está no `.gitignore` e protegido contra acesso HTTP no `.htaccess`?
- [ ] 100% das novas queries SQL utilizam PDO Prepared Statements com parâmetros vinculados?
- [ ] Todos os formulários POST possuem `csrf_input()` e são validados por `csrf_verify()`?
- [ ] 100% das saídas dinâmicas no HTML utilizam `htmlspecialchars(..., ENT_QUOTES, 'UTF-8')`?
- [ ] As rotas restritas a Administrador invocam `require_admin()` logo após a inclusão de `auth.php`?
- [ ] Nenhuma informação sensível (como senhas ou números de cartão) é gravada na tabela de logs de auditoria?
- [ ] As flags de cookies de sessão estão habilitadas com `HttpOnly` e `SameSite`?
