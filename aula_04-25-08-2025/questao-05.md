# Exercícios Resolvidos
**Professor:** Felipe Heitmann
**Disciplina:** Pesquisa Operacional
**Data:** 23/08/2025
***
### Questão 05:
> Uma confecção de roupas produz calças e camisas. Cada calça requer 2 metros de tecido e 1 hora de costura. Cada camisa requer 1 metro de tecido e 2 horas de costura. A confecção tem 10 metros de tecido e 12 horas de costura disponíveis. O lucro por calça é de R\$ 20,00 e por camisa é de R\$ 15,00.
> a) Quantas calças e camisas a confecção deve produzir para maximizar o lucro?
> b) Quantas calças e camisas a confecção deve produzir para maximizar a produção?

***

### Parte A: Maximização do Lucro

#### Análise do Problema
O objetivo principal aqui é determinar a quantidade ideal de calças e camisas a serem produzidas para que o lucro total seja o maior possível. As decisões a serem tomadas são quantas unidades de cada peça produzir. Essas decisões são limitadas pela quantidade de recursos disponíveis, que são o tecido e o tempo de costura.

#### Variáveis de Decisão
Para construir o modelo, precisamos definir as variáveis que representarão as quantidades que queremos descobrir.

* $x_1$: Representa a quantidade de **calças** a serem produzidas.
* $x_2$: Representa a quantidade de **camisas** a serem produzidas.

#### Função Objetivo
A função objetivo representa a meta que queremos alcançar. Neste caso, queremos maximizar o lucro total.

* **Objetivo:** Maximizar Lucro
* **Equação:** $$\text{Maximizar } Z = 20x_1 + 15x_2$$
* **Explicação:** O lucro total ($Z$) é a soma do lucro obtido com as calças e do lucro obtido com as camisas. Como cada calça ($x_1$) gera um lucro de R\$ 20,00 e cada camisa ($x_2$) gera um lucro de R\$ 15,00, a fórmula representa o lucro total em função das quantidades produzidas.

#### Restrições
As restrições representam as limitações de recursos ou outras regras que devemos seguir.

1.  **Restrição de Tecido:**
    * **Propósito:** Garante que a quantidade total de tecido utilizada na produção não exceda o total disponível.
    * **Equação:** $$2x_1 + 1x_2 \leq 10$$
    * **Explicação:** Cada calça ($x_1$) consome 2 metros de tecido e cada camisa ($x_2$) consome 1 metro. A soma do tecido utilizado em todas as peças não pode ultrapassar os 10 metros disponíveis no estoque.

2.  **Restrição de Costura:**
    * **Propósito:** Garante que o tempo total de costura utilizado não exceda as horas de trabalho disponíveis.
    * **Equação:** $$1x_1 + 2x_2 \leq 12$$
    * **Explicação:** Cada calça ($x_1$) requer 1 hora de costura e cada camisa ($x_2$) requer 2 horas. O tempo total dedicado à costura não pode ser maior que as 12 horas disponíveis.

#### Restrições de Não-Negatividade
É fundamental garantir que as quantidades produzidas não sejam negativas, pois não é possível fabricar um número negativo de peças.

* **Equação:** $$x_1, x_2 \geq 0$$

#### Modelo Matemático Completo (Parte A)
Juntando todos os componentes, o modelo matemático final para a maximização do lucro é:

**Maximizar:**
$$Z = 20x_1 + 15x_2$$

**Sujeito a:**
$$2x_1 + x_2 \leq 10 \quad \text{(Tecido)}$$
$$x_1 + 2x_2 \leq 12 \quad \text{(Costura)}$$
$$x_1, x_2 \geq 0$$

***

### Parte B: Maximização da Produção

#### Análise do Problema
Nesta segunda parte, o objetivo muda. Não estamos mais focados no lucro, mas sim em produzir o maior número total de peças (calças e camisas somadas), respeitando as mesmas limitações de tecido e tempo de costura.

#### Variáveis de Decisão
As variáveis de decisão permanecem as mesmas da parte anterior.

* $x_1$: Representa a quantidade de **calças** a serem produzidas.
* $x_2$: Representa a quantidade de **camisas** a serem produzidas.

#### Função Objetivo
A meta agora é maximizar a quantidade total de itens fabricados.

* **Objetivo:** Maximizar Produção
* **Equação:** $$\text{Maximizar } P = x_1 + x_2$$
* **Explicação:** A produção total ($P$) é simplesmente a soma do número de calças ($x_1$) com o número de camisas ($x_2$). Cada item contribui com 1 unidade para o total de peças produzidas.

#### Restrições
As limitações de recursos não mudaram. Portanto, as restrições de tecido, costura e não-negatividade são exatamente as mesmas da Parte A.

1.  **Restrição de Tecido:** $$2x_1 + 1x_2 \leq 10$$
2.  **Restrição de Costura:** $$1x_1 + 2x_2 \leq 12$$
3.  **Restrições de Não-Negatividade:** $$x_1, x_2 \geq 0$$

#### Modelo Matemático Completo (Parte B)
O modelo matemático final para a maximização da produção é:

**Maximizar:**
$$P = x_1 + x_2$$

**Sujeito a:**
$$2x_1 + x_2 \leq 10 \quad \text{(Tecido)}$$
$$x_1 + 2x_2 \leq 12 \quad \text{(Costura)}$$
$$x_1, x_2 \geq 0$$