# Extrator de endereços

Implementar um **Extrator** baseado em **Expressões Regulares** capaz de identificar e estruturar endereços presentes em um texto qualquer, separando-os em seus componentes (tipo, nome, número, complemento, bairro, cidade, estado e CEP).

**Descrição**

Dado um texto qualquer — como uma página web — o programa deve extrair endereços utilizando expressões regulares em Ruby e apresentar a saída de forma estruturada com os seguintes campos:

- **Tipo:** Av, Rua, Travessa, ...
- **Nome:** Eng. Eusébio Stevaux
- **Número:** 823
- **Complemento:** Sala 13
- **Bairro:** Santo Amaro
- **Cidade:** São Paulo
- **Estado:** SP
- **CEP:** 04696-000

Os campos não são todos obrigatórios, mas devem ser preenchidos quando estiverem presentes no texto.

**Padrão dos Correios**

O padrão mais comum de endereço é o definido pelos Correios:

```
Tipo + Nome + número + complemento (se houver) + Bairro (se houver)
Nome da Localidade + Sigla do Estado
CEP
```

Exemplo:

```
Av. Eng. Eusébio Stevaux, 823 - Santo Amaro, São Paulo - SP, 04696-000
```

Referência de tipos de logradouros: https://pt.wikipedia.org/wiki/Logradouro

Referência do padrão dos Correios: http://www.buscacep.correios.com.br/sistemas/buscacep/cepFormas.cfm

**Tarefas**

1. **Definir as expressões regulares** que reconheçam cada um dos componentes de um endereço.
2. **Implementar um algoritmo** que receba um texto e extraia os endereços identificados.
3. **Testar a implementação** com diferentes textos e formatos de endereço.
4. **Documentar a modelagem** das expressões regulares utilizadas, indicando qual trecho de cada expressão é responsável por extrair cada componente.

# A Entrega

O trabalho deve ser entregue por meio de **repositório no GitHub** contendo o código-fonte da implementação e a documentação da modelagem.

# O que será avaliado:

### Modelagem das Expressões Regulares e Documentação (3.5)

Explique as expressões regulares utilizadas para reconhecer cada componente do endereço:

- Tipo
- Nome
- Número
- Complemento
- Bairro
- Cidade
- Estado
- CEP

Explicite quais partes da expressão regular extraem cada componente e detalhe os critérios escolhidos.

A documentação da modelagem deve ser colocada no diretório `/docs` na raíz do projeto.

O repositório deve conter também um `README.md` explicando:

- O problema resolvido
- A modelagem e a teoria envolvida nas escolhas
- Explicação básica do código e funções

A não entrega da documentação resultará em redução de pontos.

### Código fonte - Execução (6.5)

Deverá ser entregue o repositório no GitHub.

**Não será permitido** o uso de gems ou bibliotecas que reconheçam endereços.

**O que é obrigatório**
- O usuário deverá entrar com o texto pelo teclado ou via arquivo.
- A implementação deve utilizar **expressões regulares** em Ruby — não é permitido o uso de combinação de substrings.
- Deve exibir os endereços extraídos de forma estruturada.

O que será avaliado:
- Entrada de dados
- Expressões regulares geradas em Ruby
- Exibição de dados

Este trabalho deve seguir:

[Política de uso de ferramentas generativas de IA](00-politica-ia.md)

[Política antiplágio](00-politica-antiplagio.md)

Referências:

- http://g1.globo.com/distrito-federal/noticia/2014/04/nao-entende-enderecos-em-brasilia-g1-decifra-sopa-de-letrinhas-veja.html
- https://pt.wikipedia.org/wiki/Logradouro
- **Mastering Ruby Regular Expressions:** https://www.rubyguides.com/2015/06/ruby-regex/
