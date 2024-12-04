# Algoritmos de *Machine Learning* de Regras de Associação no R

## Descrição

Este projeto implementa vários algoritmos (Apriori, ECLAT) de *machine learning* de regras de associação na linguagem R em dois *datasets* sobre compras em mercado, tentando criar regras de associação para os produtos adquiridos pelos clientes.

## *Dataset*

Foram utilizados dois *datasets* Mercado I = "mercado1.csv" e Mercado II = "mercado2.csv", anexados a esse projeto. O Mercado I possui 4 atributos (itens de compra) e 10 entradas (clientes), o Mercado II possui 119 atributos (itens de compra) e 7501 entradas (clientes). Os atributos são os diferentes tipos de produtos de supermercado comprados pelos clientes no *dataset*, cada entrada possui a compra realizada pelo cliente e seus itens (produtos).

## Pré-processamento

A base de dados estava livre de dados faltantes e inconsistentes, portanto não foi necessário pré-processamento.

## Resultados

A seguir são exibidos os resultados obtidos para o algoritmo *Apriori* para ambos os *datasets*. O algoritmo ECLAT foi implementado para o Mercado II, mas como apenas busca os itens que ocorrem frequentemente juntos, não traz regras diretamente para discussão.

### Mercado I

Utilizando *support* = 0.3 e *confidence* = 0.8 no algoritmo *Apriori* foram obtidas as seguintes 5 principais regras:

| Item 1         | Item 2   | Suporte (%) | Confiança (%) | Lift |
|----------------|----------|-------------|---------------|------|
| café           | manteiga | 30%         | 66.7%         | 1.5  |
| café           | pão      | 30%         | 66.7%         | 1.5  |
| café, manteiga | pão      | 30%         | 66.7%         | 1.5  |
| café, pão      | manteiga | 30%         | 66.7%         | 1.5  |
| manteiga       | pão      | 50%         | 80%           | 2    |

-   **Suporte:** Porcentagem de transações que contêm ambos os itens.
-   **Confiança:** Probabilidade de encontrar o Item 2 dado que o Item 1 já está presente.
-   **Lift:** Indica o quanto a ocorrência de um item influencia a ocorrência do outro.

Interpretando as respostas obtidas:

| Se comprar      | Então tem X vezes mais chances de comprar |
|-----------------|-------------------------------------------|
| Café            | 2 vezes mais chances de comprar manteiga. |
| Café            | 2 vezes mais chances de comprar pão.      |
| Café e manteiga | 2 vezes mais chances de comprar pão.      |
| Café e pão      | 2 vezes mais chances de comprar manteiga. |
| Manteiga        | 1.6 vezes mais chances de comprar pão.    |

**Análise:** A regra "Se comprar café, então tem 2 vezes mais chances de comprar manteiga" indica uma forte associação entre o café e a manteiga. Isso sugere que os clientes que compram café também tendem a comprar manteiga com frequência.

### Mercado II

Utilizando *support* = 0.003 e *confidence* = 0.2 no algoritmo *Apriori* foram obtidas as seguintes 5 principais regras:

| Item 1 | Item 2 | Suporte (%) | Confiança (%) | Lift |
|----|----|----|----|----|
| *Mineral Water, Whole Wheat Pasta* | *Olive Oil* | 0.39% | 40.28% | 6.12 |
| *Frozen Vegetables, Milk, Mineral Water* | *Soup* | 0.31% | 27.71% | 5.48 |
| *Fromage Blanc* | *Honey* | 0.33% | 24.51% | 5.16 |
| *Spaghetti, Tomato Sauce* | *Ground Beef* | 0.31% | 48.94% | 4.98 |
| *Light Cream* | *Chicken* | 0.45% | 29.06% | 4.84 |

-   **Suporte:** Porcentagem de transações que contêm ambos os itens.
-   **Confiança:** Probabilidade de encontrar o Item 2 dado que o Item 1 já está presente.
-   **Lift:** Indica o quanto a ocorrência de um item influencia a ocorrência do outro.

Interpretando as respostas obtidas:

| Se comprar... | ...então tem X vezes mais chances de comprar... |
|----|----|
| Água mineral e macarrão integral | ...6,12 vezes mais...óleo de oliva. |
| Vegetais congelados, leite e água mineral | ...5,48 vezes mais...sopa. |
| Queijo Branco | ...5,16 vezes mais...mel. |
| Espaguete e molho de tomate | ...4,98 vezes mais...carne moída. |
| Creme de leite | ...4,84 vezes mais...frango. |

**Análise:** A regra "Se comprar Água mineral e macarrão integral, então tem 6,12 vezes mais chances de comprar óleo de oliva" indica uma forte associação entre Água mineral e macarrão integral e óleo de oliva. Isso sugere que os clientes que compram água mineral e macarrão integral também tendem a comprar óleo de oliva com frequência.

## Código

-   **Linguagem:** R
-   **Bibliotecas:** arules

## Referência do R

R Core Team (2024). *R: A Language and Environment for Statistical Computing*. R Foundation for Statistical Computing, Vienna, Austria. <https://www.R-project.org/>.
