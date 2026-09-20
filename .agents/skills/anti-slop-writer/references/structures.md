# Catálogo de Estruturas Sintáticas Tóxicas (Structures to Avoid)

Este catálogo identifica os tiques estruturais que denunciam geração mecânica de texto por LLMs.

---

## 1. Contrastes Binários e Pivôs Falsos (Binary Contrasts)
A estrutura mais batida de modelos generativos: criar uma falsa antítese para fabricar relevância dramática.

| Padrão de IA Proibido | O Problema | Como Substituir (Direto ao Ponto) |
| :--- | :--- | :--- |
| *"Não é sobre X, mas sim sobre Y"* | Falsa dicotomia previsível | *"O objetivo central é Y."* |
| *"O segredo não é a ferramenta. É o processo."* | Pivô cafona de LinkedIn | *"O processo define o resultado."* |
| *"O problema não está no código. Está na arquitetura."* | Telegrafia retórica | *"A arquitetura apresenta falhas estruturais."* |
| *"Não se trata de trabalhar mais, mas de trabalhar melhor."* | Clichê vazio | *"Aumentar a eficiência operacional."* |
| *"Isso não é apenas um recurso; é uma revolução."* | Inflação de valor artificial | Corte o adjetivo e descreva a funcionalidade exata. |
| *"Deixa de ser uma tarefa simples e passa a ser crítica."* | Arco narrativo forçado | *"A tarefa é crítica."* |

---

## 2. Listagem Negativa (Negative Listing / Striptease Retórico)
Fazer o leitor passar por uma lista do que a coisa **não é** antes de finalmente dizer o que ela **é**.

- **Exemplo proibido:** *"Não é um banco de dados relacional. Não é um cache em memória. Não é uma planilha. É um motor de sincronização de estado."*
- **Substituição:** *"O componente é um motor de sincronização de estado."*

---

## 3. Fragmentação Dramática e Ritmo Staccato
Frases de uma ou duas palavras isoladas com ponto final para simular impacto emocional ou sabedoria profunda.

| Frase de IA Proibida | Por que Soam Artificiais | Ação Corretiva |
| :--- | :--- | :--- |
| *"Simples assim."* | Presunção desnecessária | Deletar. |
| *"Ponto final." / "Full stop."* | Crutch de ênfase vazia | Deletar. |
| *"E isso muda tudo."* | Melodrama barato | Deletar ou explicar o impacto com métricas. |
| *"Deixe isso assentar." / "Let that sink in."* | Tom condescendente de autoajuda | Deletar sumariamente. |
| *"Isso. É. Engenharia."* | Ênfase teatral robótica | Deletar. Use frases completas. |

---

## 4. Agência Falsa (False Agency)
Atribuir vontades, ações biológicas ou intencionalidade humana a coisas inanimadas ou conceitos abstratos.

- **Proibido:** *"O software entende que o usuário quer sair."*
- **Correto:** *"O software detecta o evento de encerramento de sessão."*
- **Proibido:** *"A regra de negócio decidiu bloquear a venda."*
- **Correto:** *"O sistema bloqueia a venda caso o estoque seja insuficiente."*

---

## 5. Menus Condicionais e Empurrão de Decisão
Terminar o texto empurrando uma lista de opções de volta para o usuário em vez de executar ou concluir a tarefa.

- **Proibido:** *"Caso você queira, posso também: 1) Fazer X; 2) Explicar Y; 3) Criar Z. O que prefere?"*
- **Correto:** Conclua a resposta. Se houver um próximo passo evidente, apresente-o diretamente como recomendação objetiva, sem fazer pose de assistente indeciso.

---

## 6. Carimbos Falsos de Encerramento (Summary Stamps)
- **Proibido:** *"Em suma,"*, *"Diante do exposto,"*, *"Em conclusão,"*, *"Podemos concluir que,"*, *"Espero que esta explicação tenha sido útil!"*.
- **Correto:** Termine a resposta assim que a última informação essencial for entregue. O silêncio após o fato é sinal de maturidade técnica.
