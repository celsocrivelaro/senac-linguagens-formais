# Reconhecedor: Sistema de gestão de listas de afazeres

Implementar um **Reconhecedor** baseado em **Expressões Regulares** capaz de detectar padrões de texto em listas de afazeres, extraindo informações estruturadas como horários, datas, pessoas, tags e ações.

**Descrição**

O sistema deve receber como entrada uma linha de texto descrevendo um afazer e reconhecer, por meio de expressões regulares, os elementos relevantes presentes na entrada. A saída deve apresentar de forma estruturada cada elemento identificado.

**Padrões a serem reconhecidos**

- **Horários:** `10:30`, `10 30`, `10 horas`, `1 hora`, `às 10`
- **Datas e dias:** `28 de Fevereiro`, `13 de agosto de 2021`, `30/01`, `20/04/2022`, `hoje`, `amanhã`, `depois de amanhã`
  - Considerar também pequenas variações: `18 agosto`, `18 de agosto 2023`
- **Tags:** `#casa`, `#trabalho`, ...
- **URLs:** `https://sp.senac.br/pag1#teste?aula=1&teste=4`
- **Emails:** `jose.da-silva@sp.senac.br`
- **Ações e pessoas:** verbos e conectores escolhidos pelos alunos para identificar pessoas. Sugestões: `agendar`, `marcar`, `ligar`, ...
  - Exemplos: `agendar com Pedro`, `marcar com José`, `reunião com Maria`, `reunião com Pedro e João`

**Exemplo**

Entrada:

```
Agendar com José reunião às 10:00 amanhã #trabalho
```

Saída esperada:

```
Dia: 22/03/2022
Horário: 10:00
Pessoa: José
Ação: agendar
Tag: #trabalho
```

**Tarefas**

1. **Definir as expressões regulares** que reconheçam cada um dos padrões descritos acima.
2. **Implementar um algoritmo** que receba uma linha de texto e extraia os elementos identificados.
3. **Testar a implementação** com diferentes entradas para validar a cobertura dos padrões.
4. **Documentar a modelagem** das expressões regulares utilizadas e a justificativa dos critérios escolhidos.

# A Entrega

O trabalho deve ser entregue por meio de **repositório no GitHub** contendo o código-fonte da implementação e a documentação da modelagem.

# O que será avaliado:

### Modelagem das Expressões Regulares - Documentação (4.0)

Explique as expressões regulares utilizadas para reconhecer:

- Horários
- Datas
- Pessoas
- Tags
- Ações

Detalhe a escolha dos critérios e os casos cobertos por cada expressão.

A documentação da modelagem deve ser colocada no diretório `/docs` na raíz do projeto.

### Código fonte - Execução (5.0)

Deverá ser entregue o repositório no GitHub.

**Não será permitido** o uso de gems ou bibliotecas que reconheçam datas.

**O que é obrigatório**
- O usuário deverá entrar com os valores pelo teclado.
- A implementação deve utilizar **expressões regulares** em Ruby — não é permitido o uso de combinação de substrings.
- Deve exibir os elementos reconhecidos de forma estruturada.

O que será avaliado:
- Entrada de dados
- Expressões regulares geradas em Ruby
- Exibição de dados

### Documentação no repositório (1.0)

O repositório deve conter um `README.md` explicando:

- O problema resolvido
- A modelagem e a teoria envolvida nas escolhas
- Explicação básica do código e funções

A não entrega da documentação resultará em redução de pontos.

Este trabalho deve seguir:

[Política de uso de ferramentas generativas de IA](00-politica-ia.md)

[Política antiplágio](00-politica-antiplagio.md)

Referências:

- https://www.rememberthemilk.com/
- https://todoist.com/
- **Mastering Ruby Regular Expressions:** https://www.rubyguides.com/2015/06/ruby-regex/
