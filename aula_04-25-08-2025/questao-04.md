# Exercícios Resolvidos
**Professor:** Felipe Heitmann
**Disciplina:** Pesquisa Operacional
**Data:** 23/08/2025
***
### Questão 04:
> Uma indústria de alimentos produz dois tipos de biscoitos: chocolate e aveia. Cada pacote de biscoito de chocolate requer 2 kg de farinha e 1 kg de açúcar. Cada pacote de biscoito de aveia requer 1 kg de farinha e 2 kg de açúcar. A indústria tem 10 kg de farinha e 8 kg de açúcar disponíveis. O lucro por pacote de biscoito de chocolate é de R\$ 2,00 e por pacote de biscoito de aveia é de R\$ 3,00.
> a) Quantos pacotes de cada tipo de biscoito a indústria deve produzir para maximizar o lucro?
> b) Quantos pacotes de cada tipo de biscoito a indústria deve produzir para maximizar a produção?

---

### a) Modelo para Maximização do Lucro

#### Análise do Problema
O objetivo é determinar a quantidade de pacotes de biscoitos de chocolate e de aveia a serem produzidos para que o lucro total seja o maior possível. As decisões são as quantidades de cada tipo de biscoito. As limitações são as quantidades de farinha e açúcar disponíveis no estoque.

#### Variáveis de Decisão
Para construir o modelo, vamos definir as seguintes variáveis:
* $x_1$: quantidade de pacotes de biscoito de chocolate a serem produzidos.
* $x_2$: quantidade de pacotes de biscoito de aveia a serem produzidos.

#### Função Objetivo
O objetivo é maximizar o lucro total. O lucro é a soma do lucro obtido com a venda de cada tipo de biscoito.
* **Objetivo:** Maximizar
* **Equação:**
$$\text{Maximizar } Z = 2x_1 + 3x_2$$
* **Lógica:** A função calcula o lucro total. O coeficiente 2 representa o lucro de R\$2,00 por pacote de biscoito de chocolate ($x_1$), e o coeficiente 3 representa o lucro de R\$3,00 por pacote de biscoito de aveia ($x_2$).

#### Restrições
As restrições do problema são baseadas nos recursos limitados de matéria-prima.

1.  **Restrição de Farinha:** A quantidade total de farinha utilizada na produção dos dois tipos de biscoito não pode exceder a quantidade disponível (10 kg).
    * **Explicação:** Cada pacote de biscoito de chocolate ($x_1$) consome 2 kg de farinha e cada pacote de aveia ($x_2$) consome 1 kg.
    * **Equação:**
    $$2x_1 + 1x_2 \leq 10$$

2.  **Restrição de Açúcar:** O consumo total de açúcar na produção não pode ultrapassar o estoque disponível (8 kg).
    * **Explicação:** Cada pacote de biscoito de chocolate ($x_1$) consome 1 kg de açúcar e cada pacote de aveia ($x_2$) consome 2 kg.
    * **Equação:**
    $$1x_1 + 2x_2 \leq 8$$

#### Restrições de Não-Negatividade
As quantidades de pacotes produzidos não podem ser negativas.
* **Equação:**
$$x_1, x_2 \geq 0$$

#### Modelo Matemático Completo (Lucro)
O modelo matemático final para a maximização do lucro é:
$$\text{Maximizar } Z = 2x_1 + 3x_2$$
**Sujeito a:**
$$2x_1 + x_2 \leq 10$$
$$x_1 + 2x_2 \leq 8$$
$$x_1, x_2 \geq 0$$

---

### b) Modelo para Maximização da Produção

#### Análise do Problema
Neste cenário, o objetivo muda. Em vez de maximizar o lucro, a indústria quer produzir a maior quantidade total de pacotes de biscoitos, independentemente do lucro de cada um. As decisões (quantidades) e as limitações (recursos) permanecem as mesmas.

#### Variáveis de Decisão
As variáveis de decisão são as mesmas do modelo anterior:
* $x_1$: quantidade de pacotes de biscoito de chocolate a serem produzidos.
* $x_2$: quantidade de pacotes de biscoito de aveia a serem produzidos.

#### Função Objetivo
O objetivo é maximizar a produção total, ou seja, o número total de pacotes fabricados.
* **Objetivo:** Maximizar
* **Equação:**
$$\text{Maximizar } P = x_1 + x_2$$
* **Lógica:** A função soma a quantidade de pacotes de biscoito de chocolate ($x_1$) com a quantidade de pacotes de biscoito de aveia ($x_2$) para obter a produção total.

#### Restrições
As restrições de recursos são idênticas às do problema de maximização de lucro, pois a disponibilidade de farinha e açúcar não mudou.

1.  **Restrição de Farinha:**
    $$2x_1 + x_2 \leq 10$$

2.  **Restrição de Açúcar:**
    $$x_1 + 2x_2 \leq 8$$

#### Restrições de Não-Negatividade
As quantidades produzidas devem ser não-negativas.
* **Equação:**
$$x_1, x_2 \geq 0$$

#### Modelo Matemático Completo (Produção)
O modelo matemático final para a maximização da produção é:
$$\text{Maximizar } P = x_1 + x_2$$
**Sujeito a:**
$$2x_1 + x_2 \leq 10$$
$$x_1 + 2x_2 \leq 8$$
$$x_1, x_2 \geq 0$$