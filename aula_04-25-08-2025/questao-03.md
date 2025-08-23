# Exercícios Resolvidos
**Professor:** Felipe Heitmann
**Disciplina:** Pesquisa Operacional
**Data:** 23/08/2025
***
### Questão 03:
> Uma refinaria de petróleo produz gasolina e diesel. Cada barril de gasolina requer 3 horas de processamento na unidade de destilação e 1 hora na unidade de craqueamento. Cada barril de diesel requer 2 horas na unidade de destilação e 2 horas na unidade de craqueamento. A refinaria tem 12 horas disponíveis na unidade de destilação e 8 horas na unidade de craqueamento. O lucro por barril de gasolina é de R\$ 40,00 e por barril de diesel é de R\$ 30,00.
> a) Quantos barris de gasolina e diesel a refinaria deve produzir para maximizar o lucro?
> b) Quantos barris de gasolina e diesel a refinaria deve produzir para maximizar a produção?

---
### **a) Modelo para Maximização do Lucro**

#### **Análise do Problema**
O objetivo é determinar a quantidade de barris de gasolina e de diesel que devem ser produzidos para que o lucro total da refinaria seja o maior possível. As decisões são as quantidades a serem produzidas de cada combustível. Essas decisões estão limitadas pela disponibilidade de tempo de processamento nas unidades de destilação e de craqueamento.

#### **Variáveis de Decisão**
Para modelar o problema, definimos as seguintes variáveis:
* $x_g$: representa a quantidade de barris de gasolina a ser produzida.
* $x_d$: representa a quantidade de barris de diesel a ser produzida.

#### **Função Objetivo**
O objetivo principal é maximizar o lucro total. O lucro é a soma do lucro obtido com a venda de gasolina e do lucro obtido com a venda de diesel.

* **Objetivo:** Maximizar Lucro
* **Equação:**
    $$
    \text{Maximizar } Z = 40x_g + 30x_d
    $$
* **Lógica:** A função soma o lucro gerado pela produção de gasolina (R\$40 por barril, ou $40x_g$) e o lucro gerado pela produção de diesel (R\$30 por barril, ou $30x_d$).

#### **Restrições**
As decisões de produção estão sujeitas às seguintes limitações de capacidade:

* **Restrição 1: Disponibilidade na Unidade de Destilação**
    * **Propósito:** O tempo total utilizado para processar gasolina e diesel na unidade de destilação não pode exceder as 12 horas disponíveis.
    * **Equação:**
        $$
        3x_g + 2x_d \le 12
        $$

* **Restrição 2: Disponibilidade na Unidade de Craqueamento**
    * **Propósito:** O tempo total utilizado para processar os dois combustíveis na unidade de craqueamento não pode ultrapassar as 8 horas disponíveis.
    * **Equação:**
        $$
        1x_g + 2x_d \le 8
        $$

#### **Restrições de Não-Negatividade**
É impossível produzir uma quantidade negativa de barris. Portanto, as variáveis de decisão devem ser maiores ou iguais a zero.

* **Equação:**
    $$
    x_g, x_d \ge 0
    $$

#### **Modelo Matemático Completo (a)**
O modelo de programação linear para maximizar o lucro é:
$$
\begin{align*}
\text{Maximizar } Z &= 40x_g + 30x_d \\
\text{Sujeito a:} \\
3x_g + 2x_d &\le 12 \\
x_g + 2x_d &\le 8 \\
x_g, x_d &\ge 0
\end{align*}
$$

---
### **b) Modelo para Maximização da Produção**

#### **Análise do Problema**
Neste cenário, o objetivo muda. Em vez de focar no lucro, a refinaria deseja maximizar a quantidade total de barris produzidos (gasolina + diesel), mantendo as mesmas limitações de processo. As variáveis de decisão e as restrições de capacidade permanecem as mesmas.

#### **Variáveis de Decisão**
As variáveis de decisão são idênticas às da parte (a):
* $x_g$: representa a quantidade de barris de gasolina a ser produzida.
* $x_d$: representa a quantidade de barris de diesel a ser produzida.

#### **Função Objetivo**
O novo objetivo é maximizar a produção total, ou seja, a soma do número de barris de gasolina e diesel.

* **Objetivo:** Maximizar Produção Total
* **Equação:**
    $$
    \text{Maximizar } P = x_g + x_d
    $$
* **Lógica:** A função soma a quantidade total de barris de gasolina ($x_g$) e a quantidade total de barris de diesel ($x_d$) para obter a produção total.

#### **Restrições**
As restrições de capacidade das unidades de destilação e craqueamento, assim como as de não-negatividade, são as mesmas do problema anterior.

* **Disponibilidade na Unidade de Destilação:**
    $$
    3x_g + 2x_d \le 12
    $$
* **Disponibilidade na Unidade de Craqueamento:**
    $$
    1x_g + 2x_d \le 8
    $$
* **Não-Negatividade:**
    $$
    x_g, x_d \ge 0
    $$

#### **Modelo Matemático Completo (b)**
O modelo de programação linear para maximizar a produção total é:
$$
\begin{align*}
\text{Maximizar } P &= x_g + x_d \\
\text{Sujeito a:} \\
3x_g + 2x_d &\le 12 \\
x_g + 2x_d &\le 8 \\
x_g, x_d &\ge 0
\end{align*}
$$