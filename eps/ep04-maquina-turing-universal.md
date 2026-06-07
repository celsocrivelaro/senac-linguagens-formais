# Máquina de Turing Universal

A Máquina de Turing Universal é um tipo especial de Máquina de Turing que pode simular qualquer outra Máquina de Turing. Ela foi criada pelo matemático Alan Turing em 1936 como prova de que qualquer problema que possa ser resolvido por uma Máquina de Turing pode ser resolvido por uma única máquina.

Uma Máquina de Turing Universal tem uma estrutura semelhante a outras Máquinas de Turing: uma fita infinita dividida em células, um cursor que pode ler e escrever em cada célula e uma tabela de regras que determina ações a serem tomadas em cada estado.

No entanto, a tabela de regras de uma Máquina de Turing Universal é especial, pois contém instruções para simular qualquer outra Máquina de Turing. Isso significa que, em teoria, uma única Máquina de Turing Universal pode resolver qualquer problema que possa ser resolvido por uma Máquina de Turing.

Em resumo, a Máquina de Turing Universal é uma poderosa ferramenta teórica que demonstra a capacidade de uma única máquina em resolver qualquer problema que possa ser resolvido por outras Máquinas de Turing.

Assim, a definição da linguagem da MTU é:

$$
L = \{C(M)w \in \Sigma^*| w \in L(M)\} 
$$

Tal que C(M) é codificação de uma MT com fita limitada com alfabeto de entrada $\Sigma$, como cadeia sobre o próprio alfabeto $\Sigma$. $w \in \Sigma^*$ é uma cadeia de entrada qualquer para M.

Encoding da máquina:

Estados internos, não-aceitação: “fa”, “faa”, “faaa”,… 

Estados de aceitação: “fb”, “fbb", “fbbb”, …

Símbolo da fita:  “sc”, “scc”, “sccc”, …

Movimentos: “d” direita, “e” esquerda

Símbolo branco: “_”

Assim, a entrada da MTU é a combinação da Máquina de Turing que será lida mais a sua cadeia de entrada. Exemplo:

Para reconhecer  $a^*b^+$ teríamos que codificar desta maneira:

Estados 

- inicial “a”
- final de aceitação “b”

Símbolos:

- a: sc
- b: scc

Regras de transição

- (fa,sc) → (fa,sc,d)
- (fa,scc) → (fb,scc,d)
- (fb,scc) → (fb,scc,d)

E quero testar sobre a cadeia: “aabbb” ⇒ scscsccscc

Assim, a cadeia de entrada w da máquina de Turing Universal será:

w = fascfascdfasccfbsccdfbsccfbsccd#scscsccscc

## Objetivo

Fazer uma máquina de MTU que reconheça uma linguagem que contenha outra MT M + código de entrada.

Usar a máquina [https://github.com/celsocrivelaro/senac-linguagens-formais/tree/main/maquina-turing-universal ](https://github.com/celsocrivelaro/senac-linguagens-formais/tree/main/maquina-turing-universal ) como referência.

A MTU deve ler como uma máquina de Turing: lê fita e tem uma transição de estado com um movimento de fita para esquerda ou direta. Não será aceito uma codificação que não esteja neste formato.

Código de Teste:

1) MT que reconhece uma Linguagem Regular $a^\*b^\*$ 

2) MT que reconhece uma Linguagem Livre de Contexto $a^nb^n$ 

3) MT que reconhece uma Linguagem Sensível ao Contexto $a^nb^nc^n$ 

### Slides

Deverá ter slides explicando o problema e mostrando 

- A modelagem
- A teoria envolvida e as escolhas
- Explicação básica do código e funções

A não entrega resultará em redução de 3 pontos.

Este trabalho deve seguir:

[Política de uso de ferramentas generativas de IA](00-politica-ia.md)

[Política antiplágio](00-politica-antiplagio.md)
