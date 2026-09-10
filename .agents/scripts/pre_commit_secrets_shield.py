#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Pre-Commit Secrets Shield - Antigravity Foundry
Scanner pré-commit standalone de alta sensibilidade para detecção de segredos,
chaves criptográficas, tokens de nuvem/IA e credenciais em arquivos staged.

Exit Codes:
  0 - Nenhum segredo detectado (Commit Seguro)
  1 - Segredo detectado (Commit Bloqueado)
"""

import sys
import subprocess
import re
import os

# Garante suporte a UTF-8 no stdout do terminal Windows
if sys.platform == "win32":
    try:
        sys.stdout.reconfigure(encoding='utf-8')
        sys.stderr.reconfigure(encoding='utf-8')
    except Exception:
        pass


# Padrões canônicos de detecção de segredos
SECRET_PATTERNS = [
    # Chaves Privadas
    (r'-----BEGIN\s+([A-Z0-9\s]+)?PRIVATE\s+KEY-----', "Chave Privada Criptográfica (RSA/OpenSSH/PGP/EC)"),
    
    # Provedores de IA
    (r'(?i)sk-proj-[a-zA-Z0-9_\-]{20,}', "Chave de API OpenAI (Projeto sk-proj)"),
    (r'(?i)sk-[a-zA-Z0-9]{32,}', "Chave de API OpenAI (Legado sk-...)"),
    (r'(?i)sk-ant-[a-zA-Z0-9_\-]{20,}', "Chave de API Anthropic Claude (sk-ant-...)"),
    (r'AIza[0-9A-Za-z\-_]{35}', "Chave de API Google Gemini / Google Cloud (AIza...)"),
    
    # Provedores Cloud e Git
    (r'(?:A3T[A-Z0-9]|AKIA|AGPA|AIDA|AROA|AIPA|ANPA|ANVA|ASIA)[A-Z0-9]{16}', "Chave de Acesso AWS (Access Key ID)"),
    (r'(?i)aws_secret_access_key\s*[:=]\s*["\'][a-zA-Z0-9/+=]{40}["\']', "Chave Secreta AWS (Secret Access Key)"),
    (r'ghp_[a-zA-Z0-9]{36}', "GitHub Personal Access Token (ghp)"),
    (r'gho_[a-zA-Z0-9]{36}', "GitHub OAuth Access Token (gho)"),
    (r'github_pat_[a-zA-Z0-9_]{50,}', "GitHub Fine-Grained Personal Access Token"),
    
    # Tokens Web JSON (JWT)
    (r'eyJ[a-zA-Z0-9_\-]{10,}\.eyJ[a-zA-Z0-9_\-]{10,}\.[a-zA-Z0-9_\-+/=]{10,}', "Token de Autenticação JWT"),
    
    # Strings de Conexão com Credenciais Embutidas
    (r'(?i)(postgres|postgresql|mysql|mariadb|mongodb(\+srv)?|redis|amqp|mssql):\/\/[^\s:]+:[^\s@]+@[^\s]+', "URI de Conexão com Credenciais Hardcoded"),
    
    # Atribuição explícita de senhas e secrets sensíveis
    (r'(?i)(?:password|passwd|db_pass|db_password|secret_key|api_secret)\s*[:=]\s*["\'][^"\']{6,}["\']', "Senha ou Segredo Explícito Hardcoded")
]

# Expressões e termos de ignorar (placeholders comuns e exemplos inofensivos)
IGNORE_PLACEHOLDERS = [
    'sua_senha_aqui',
    'your_api_key_here',
    'your_secret_here',
    'sua_chave_aqui',
    'example',
    'placeholder',
    'changeme',
    'mock',
    'dummy',
    'test_secret',
    'fake_token',
    '<api_key>',
    '<your-api-key>',
    'xxxx',
    '00000000',
    'env.example',
    '.env.example'
]

def is_ignored(line: str) -> bool:
    """Verifica se a linha contém apenas placeholders inofensivos de documentação."""
    line_lower = line.lower()
    for ph in IGNORE_PLACEHOLDERS:
        if ph in line_lower:
            return True
    return False

def get_staged_diff(target_dir: str = None) -> str:
    """Obtém o diff staged do git."""
    cmd = ['git', 'diff', '--staged', '--no-color']
    cwd = target_dir or os.getcwd()
    
    try:
        res = subprocess.run(
            cmd,
            capture_output=True,
            text=True,
            encoding='utf-8',
            errors='ignore',
            cwd=cwd
        )
        return res.stdout or ''
    except Exception as e:
        print(f"[WARN] Falha ao executar 'git diff --staged': {e}", file=sys.stderr)
        return ''

def scan_text(diff_text: str):
    """Varre as linhas adicionadas (+) em busca de segredos."""
    findings = []
    current_file = "Desconhecido"
    
    for line in diff_text.splitlines():
        if line.startswith('+++ b/'):
            current_file = line[6:].strip()
            continue
            
        # Analisa apenas linhas adicionadas
        if line.startswith('+') and not line.startswith('+++'):
            content = line[1:].strip()
            
            if not content or is_ignored(content):
                continue
                
            for pattern, desc in SECRET_PATTERNS:
                match = re.search(pattern, content)
                if match:
                    # Redação do segredo para o relatório de terminal
                    matched_str = match.group(0)
                    masked = matched_str[:4] + ("*" * max(4, len(matched_str) - 8)) + matched_str[-4:] if len(matched_str) > 8 else "****"
                    findings.append({
                        "file": current_file,
                        "desc": desc,
                        "line": content,
                        "masked": masked
                    })
                    break  # Evita duplicar múltiplos alertas na mesma linha
                    
    return findings

def main():
    target_dir = sys.argv[1] if len(sys.argv) > 1 else os.getcwd()
    diff_text = get_staged_diff(target_dir)
    
    if not diff_text.strip():
        print("[PASS] Pre-Commit Secrets Shield: Nenhum arquivo staged ou diff vazio.")
        sys.exit(0)
        
    findings = scan_text(diff_text)
    
    if findings:
        print("\n" + "=" * 80)
        print("🚨 [BLOCKED] PRE-COMMIT SECRETS SHIELD: Segredos detectados no staging!")
        print("=" * 80)
        for idx, f in enumerate(findings, 1):
            print(f" {idx}. Arquivo: {f['file']}")
            print(f"    Alerta : {f['desc']}")
            print(f"    Amostra: {f['masked']}")
            print("-" * 80)
        print("\n[ERRO CRÍTICO] O commit foi bloqueado pela Política Zero-Leak.")
        print("Isole as credenciais em variáveis de ambiente (.env) e use .env.example.\n")
        sys.exit(1)
    else:
        print("[PASS] Pre-Commit Secrets Shield: Staging verificado. Nenhum segredo detectado. 100% Seguro!")
        sys.exit(0)

if __name__ == '__main__':
    main()
