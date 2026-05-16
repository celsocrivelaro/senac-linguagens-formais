# Transdutor: Conversor de números romanos

Implementar um **Transdutor Finito Determinístico** que recebe um número representado em algarismos **romanos** e o converte para um número **decimal** correspondente.

**Descrição**

Os numerais romanos seguem regras específicas de formação, onde os valores dos símbolos individuais podem ser somados ou subtraídos com base na sua posição relativa. O transdutor deve reconhecer a sequência de caracteres, validar a entrada e calcular corretamente o valor decimal correspondente.

**Regras dos Numerais Romanos**

Os números romanos utilizam os seguintes símbolos:

| Símbolo | Valor |
| --- | --- |
| I | 1 |
| V | 5 |
| X | 10 |
| L | 50 |
| C | 100 |
| D | 500 |
| M | 1000 |

•	Se um numeral menor vier **antes** de um maior, ele deve ser **subtraído** (ex: IV = 4, IX = 9).

•	Se um numeral menor vier **depois** de um maior ou igual, ele deve ser **somado** (ex: VI = 6, XII = 12).

Exemplos:

“III”	3
“IV”	4
“IX”	9
“XIV”	14
“XXIX”	29
“XLII”	42
“LXXXVIII”	88
“CXCIV”	194
“MCMXC”	1990
“MMXXIV”	2024

**Tarefas**

1.	**Definir um modelo de transdutor finito determinístico** capaz de reconhecer e processar os numerais romanos.

2.	**Implementar um algoritmo** que percorra a entrada e converta corretamente o valor.

3.	**Testar a implementação** com diferentes números romanos para garantir a conversão correta.

4.	Implementar um validador para rejeitar números romanos inválidos, como “IC” ou “VX”.

# A Entrega

Nosso desafio é fazer um tradutor de números romanos para números indo-arábicos (o que usamos hoje). Para isso, deve-se criar Autômato Finito Determinístico - Transdutor que faça o reconhecimento do Alfabeto = { I, V, X, L, C, D, M } 

Simplificações:

Por questões de simplificação, nosso tradutor deve reconhecer números até 3999

# O que será avaliado:

### Modelagem AFD - Transdutor 3.0

Explique usando uma definição formal e explique qual tipo de Transdutor está usando e porquê (Mealy ou Moore). Detalhe os alfabetos de entrada e saída.

Apresente algumas entradas e transições de estado que não têm alfabeto de saída e outras que emitem símbolos.

Faça o modelo de diagrama usando Mermaid. Quero o código fonte do mermaid usado no repositório dentro do diretório /docs na raíz do projeto

### Código fonte - Exibição e detalhamento 7.0

Deverá ser entregue o repositório no Github. O Código deve-se basear em: [https://github.com/celsocrivelaro/senac-linguagens-formais/tree/main/automato-finito](https://github.com/celsocrivelaro/senac-linguagens-formais/tree/main/automato-finito)

**Não será permitido** o uso de gems ou bibliotecas de estado de finito. 

Não usar tabelas ou hash, só transições de estado.

O usuário poderá entrar com os dados para a tradução

O que será avaliado:

- Se há todas as transições de estado
- Complexidade criada
- Apresentação das entradas e saídas.

Este trabalho deve seguir:

[Política de uso de ferramentas generativas de IA](00-politica-ia.md)

[Política antiplágio](00-politica-antiplagio.md)