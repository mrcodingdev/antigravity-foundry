# Tabela de Compressão & Diretrizes do Caveman

## Comparativo Direto de Respostas

| Situação | Resposta de IA Prolixa (100% tokens) | Resposta no Padrão Caveman (~35% tokens) |
| :--- | :--- | :--- |
| **Status de Teste** | *"Analisei cuidadosamente o arquivo de teste e posso confirmar que todos os 12 testes unitários foram executados com pleno êxito, garantindo que a funcionalidade está estável."* | `testes: 12/12 aprovados. zero falhas. código estável.` |
| **Correção de Bug** | *"Identifiquei o problema na linha 45. Havia uma variável nula sendo passada para a função. Já fiz a correção adicionando uma verificação prévia."* | `bug: nulo na L45. correção: adicionado guard clause. corrigido.` |
| **Commit Git** | *"Realizei a adição dos arquivos modificados ao repositório git e criei uma mensagem de commit detalhando as mudanças realizadas no módulo de produtos."* | `git: arquivos staged. commit semântico realizado.` |

---

## Gatilho de Descompressão de Segurança (Safety Drop)
Quando a operação contiver:
- Comandos destrutivos de banco (`DROP`, `TRUNCATE`, `DELETE` sem `WHERE`).
- Remoção recursiva de diretórios (`rm -rf`, `Remove-Item -Recurse`).
- Alterações em chaves de criptografia ou tokens de autenticação.

**Ação:** Desativar a brevidade Caveman e emitir um alerta formal com GitHub Alerts (`> [!CAUTION]`) solicitando confirmação explícita.
