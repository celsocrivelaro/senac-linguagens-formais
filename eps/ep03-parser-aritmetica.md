# Reconhecedor de Expressões Aritméticas

O objetivo deste EP é um fazer um reconhecer sintático (parser) de expressões matemáticas simples, com as operações básicas.

Operações para ser reconhecidas:

| Name | Tipo | Exemplo |
| --- | --- | --- |
| Número | Unária | 56 |
| Negativação | Unária | -1 |
| Parênteses | Unária | ( 3 ) |
| Potência | Binária | 6^2 |
| Soma | Binária | 5 + 3 |
| Diferença | Binária | 3 - 1 |
| Multiplicação | Binária | 6 * 1 |
| Divisão | Binária | 8 / 4 |

## Parte 1 - Entrega da Gramática (3.0)

O EP deve implementar um autômato de pilha determinístico que reconheça expressões matemáticas com as operações citadas acima.

Para isso, deve-se desenvolver uma gramática livre de contexto que gera expressões matemáticas.

Ponto de atenção com a Gramática:

- Seguir a regra de precedência de operações
- Seguir a regra de associatividade (ou a direita ou a à esquerda)
- Não há limite para o tamanho do número

Deve-se entregar as regras da gramática e um documento  no Blackboard. Fazer a árvore com a expansão da seguinte expressão:

9^(1 * -2 + 3) - 3 / ( 6 + 3 )

Deve-se entregar 2 gramáticas:

- Gramática sem forma normal para ser usado no parser de Earley
- Gramática na forma normal de Chomsky para ser usado no parser CYK

O texto deverá estar dentro do repositório no diretório /docs na raíz do projeto

## Parte 2 - Reconhecedor (6.0)

NÃO É PRECISO RESOLVER A EXPRESSÃO. Só necessário verificar se ela é válida. A resolução é assunto da disciplina de Compiladores.

Usar o parser de Earley ([https://github.com/celsocrivelaro/senac-linguagens-formais/tree/main/parser-early](https://github.com/celsocrivelaro/senac-linguagens-formais/tree/main/parser-early)) e CYK ([https://github.com/celsocrivelaro/senac-linguagens-formais/tree/main/parser-cyk](https://github.com/celsocrivelaro/senac-linguagens-formais/tree/main/parser-cyk)).

O reconhecedor deve emitir as seguintes avisos quando fizer uma reconhecimento conforme tabela abaixo:

| Name | Tipo | Exemplo |
| --- | --- | --- |
| Número | Unária | 56 |
| Negativação | Unária | -1 |
| Parênteses | Unária | ( 3 ) |
| Potência | Binária | 6^2 |
| Soma | Binária | 5 + 3 |
| Diferença | Binária | 3 - 1 |
| Multiplicação | Binária | 6 * 1 |
| Divisão | Binária | 8 / 4 |

Assim, 4+5*2 deve emitir:

["soma", [ "multiplicacao", 5, 2], 4]

Exemplos de expressões válidas (deve mostrar que foi aceita):

(1 + 4) * 2^4

7 / ( 1 - 3 )

9^(1 * 6 / 2 + 4)

2 + 4 ^ -4 / 4

Exemplos de expressões inválidas (deve mostrar que não foi aceita):

^ 2 + 4

9 * 2 +

9 + + 3

( ) * 3

( 3 + 3

Este trabalho deve seguir:

[Política antiplágio](00-politica-antiplagio.md)

[Política de uso de ferramentas generativas de IA](00-politica-ia.md)