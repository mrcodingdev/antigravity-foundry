# Diretrizes de Cibersegurança, Proteção de Segredos e Conformidade OWASP/CWE
# 03_cybersecurity_and_secrets.md

Este documento estabelece as políticas mandatórias de segurança cibernética, gestão de segredos e prevenção de vulnerabilidades do ecossistema Antigravity Foundry.

---

## 🔒 1. Política Zero-Leak (Zero Vazamento de Credenciais)

### 1.1. Proibição Estrita de Segredos Hardcoded
É **terminantemente proibido** versionar ou manter em código-fonte aberto ou versionado:
- Senhas de banco de dados, chaves mestras e salts criptográficos.
- API Keys de serviços de IA (OpenAI, Anthropic Claude, Google Gemini, Groq, Mistral, HuggingFace, etc.).
- Tokens de acesso a provedores cloud (AWS Access Key / Secret Key, Azure, GCP, Cloudflare).
- Personal Access Tokens (PAT) de GitHub, GitLab ou Bitbucket.
- Chaves privadas (RSA, ECDSA, OpenSSH, PGP, certificados `.pem`, `.key`, `.p12`).
- Tokens JWT de autenticação com segredos embutidos ou hardcoded.
- Strings de conexão JDBC, DSN PDO ou MongoDB com usuário/senha expostos.

### 1.2. Isolamento em Variáveis de Ambiente (`.env`)
1. Todo segredo ou configuração de infraestrutura deve ser injetado **exclusivamente** via variáveis de ambiente (`.env`, `.env.local`).
2. O arquivo `.env` **deve constar obrigatoriamente no `.gitignore`** e nunca ser rastreado pelo Git.
3. Deve ser fornecido um arquivo `.env.example` versionado contendo apenas chaves com valores genéricos fictícios (`db_pass="sua_senha_aqui"`, `gemini_api_key="your_api_key_here"`).

---

## 🛡️ 2. Scanner Pré-Commit Automatizado (`pre_commit_secrets_shield.py`)

1. Todo commit no ecossistema Antigravity Foundry deve ser verificado pelo script de proteção de segredos:
   ```bash
   python .agents/scripts/pre_commit_secrets_shield.py
   ```
2. O script analisa o `git diff --staged` utilizando expressões regulares e heurísticas de entropia para detectar:
   - Chaves privadas (exemplo placeholder: `-----BEGIN PRIVATE KEY-----`).
   - Tokens de API e secrets (AWS, OpenAI `sk-...`, Anthropic `sk-ant-...`, Gemini `AIza...`, GitHub `ghp_...`, `gho_...`).
   - Senhas em atribuições explícitas (exemplo: `password = "dummy_pass"`, `db_pass = "dummy_pass"`).
   - URIs de conexão completas com credenciais (exemplo placeholder: `postgres://user:pass@host/db`, `mysql://...`).
3. **Comportamento de Execução:**
   - **Exit Code 0:** Nenhum segredo detectado. O commit é autorizado.
   - **Exit Code 1:** Segredo detectado. O commit é bloqueado sumariamente com listagem das linhas infratoras.

---

## 🏛️ 3. Conformidade com OWASP Top 10 e CWE

### 3.1. Prevenção Contra Injeção de SQL (OWASP A03:2021 / CWE-89)
- **Regra Absoluta:** É expressamente proibida a concatenação direta ou interpolação de variáveis do usuário dentro de consultas SQL.
- **Padrão Obrigatório:** Utilização de Prepared Statements parametrizados (PDO, ORMs com queries parametrizadas ou Prepared Statements de drivers nativos).
  ```sql
  -- CORRETO (Prepared Statement):
  SELECT id, nome, email FROM usuarios WHERE email = :email AND status = :status
  ```
  ```sql
  -- PROIBIDO (Vulnerável a SQL Injection):
  "SELECT id, nome FROM usuarios WHERE email = '" . $_POST['email'] . "'"
  ```

### 3.2. Prevenção Contra Cross-Site Scripting (OWASP A03:2021 / CWE-79 - XSS)
- Todo dado proveniente de entrada do usuário ou banco de dados que seja refletido no DOM deve ser devidamente sanitizado e encodado de acordo com o contexto:
  * **HTML Body:** Codificação de entidades HTML (`htmlspecialchars($var, ENT_QUOTES, 'UTF-8')` ou escape automático de template engines modernas).
  * **Atributos HTML:** Escape estrito de aspas simples e duplas.
  * **JavaScript In-line:** Proibido injetar variáveis diretamente em blocos `<script>`. Use atributos `data-*` com encode adequado ou payloads JSON serializados com segurança.

### 3.3. Prevenção Contra Cross-Site Request Forgery (OWASP A01:2021 / CWE-352 - CSRF)
- Todas as requisições que alteram estado (métodos `POST`, `PUT`, `DELETE`, `PATCH`) devem ser protegidas por tokens anti-CSRF criptograficamente seguros associados à sessão do usuário.
- O token deve ser validado no servidor antes do processamento de qualquer ação de negócio.

### 3.4. Supressão de Mensagens Técnicas de Erro em Produção (CWE-209 / CWE-200)
- Stack traces detalhados, erros de banco de dados, caminhos do sistema operacional e versões de software expõem superfície de ataque valiosa para invasores.
- **Diretriz de Tratamento de Erros:**
  * Em ambiente de desenvolvimento: Logs legíveis e informativos salvos localmente.
  * Em ambiente de produção: Exibir mensagens genéricas e amigáveis ao usuário final ("Ocorreu um erro ao processar sua solicitação. Código de referência: [UUID]"). O stack trace completo deve ser gravado exclusivamente em arquivos de log protegidos no servidor, nunca enviado na resposta HTTP ao cliente.

### 3.5. Controle de Acesso Baseado em Perfis (RBAC - CWE-284 / CWE-285)
- A autorização deve ser verificada no **backend**, no início de cada rota ou endpoint de API.
- Nunca confie no frontend para ocultar funcionalidades sensíveis. O bloqueio na camada de apresentação é apenas usabilidade; a autorização na camada de servidor é a barreira real de segurança.
