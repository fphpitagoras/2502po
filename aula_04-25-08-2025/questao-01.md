# Exercícios Resolvidos
**Professor:** Felipe Heitmann
**Disciplina:** Pesquisa Operacional
**Data:** 23/08/2025
***
### Questão 01:
> Um agricultor possui 10 hectares de terra para plantar dois tipos de culturas: milho e soja. O milho requer 1 hora de trabalho por hectare e 2 unidades de fertilizante, enquanto a soja requer 2 horas de trabalho por hectare e 1 unidade de fertilizante. O agricultor tem 16 horas de trabalho disponíveis e 12 unidades de fertilizante. O lucro por hectare de milho é de R$ 300,00 e por hectare de soja é de R$ 200,00.
> a) Quantos hectares de cada cultura o agricultor deve plantar para maximizar o lucro?
> b) Quantos hectares de cada cultura o agricultor deve plantar para maximizar a produção, ou seja, desconsiderando o lucro por hectare de cada cultura?

---
### **Solução (a): Maximização do Lucro**

#### **Análise do Problema**
O objetivo do agricultor é determinar a quantidade de hectares de milho e de soja a serem plantados para que seu lucro total seja o maior possível. As decisões sobre o plantio estão limitadas pela área total de terra, pela quantidade de horas de trabalho e pela quantidade de fertilizante disponíveis.

#### **Variáveis de Decisão**
Para construir o modelo, precisamos definir as variáveis que representarão as decisões a serem tomadas.
* $x_1$: Representa a quantidade, em hectares, de milho a ser plantada.
* $x_2$: Representa a quantidade, em hectares, de soja a ser plantada.

#### **Função Objetivo**
O objetivo principal é maximizar o lucro total. O lucro é a soma do lucro obtido com a plantação de milho e o lucro obtido com a plantação de soja.

* **Objetivo:** Maximizar o Lucro Total ($Z$)
* **Equação:**
    $$
    \text{Maximizar } Z = 300x_1 + 200x_2
    $$
* **Lógica:** O lucro total $Z$ é calculado multiplicando-se a quantidade de hectares de cada cultura ($x_1$ e $x_2$) pelo seu respectivo lucro por hectare (R\$300,00 para o milho e R\$200,00 para a soja).

#### **Restrições**
As decisões do agricultor estão sujeitas a três limitações físicas (recursos).

1.  **Restrição de Terra:** O agricultor possui um total de 10 hectares. A soma da área plantada com milho e soja não pode ultrapassar esse limite.
    * **Propósito:** Limitar a área total de plantio.
    * **Equação:**
        $$
        x_1 + x_2 \le 10
        $$

2.  **Restrição de Trabalho:** O agricultor tem um limite de 16 horas de trabalho. Cada hectare de milho consome 1 hora e cada hectare de soja consome 2 horas.
    * **Propósito:** Garantir que o tempo total de trabalho não exceda o disponível.
    * **Equação:**
        $$
        1x_1 + 2x_2 \le 16
        $$

3.  **Restrição de Fertilizante:** Há 12 unidades de fertilizante disponíveis. O milho requer 2 unidades por hectare e a soja requer 1 unidade por hectare.
    * **Propósito:** Limitar o consumo total de fertilizante.
    * **Equação:**
        $$
        2x_1 + 1x_2 \le 12
        $$

#### **Restrições de Não-Negatividade**
As variáveis de decisão representam uma quantidade física (área de terra), portanto, não podem assumir valores negativos.

* **Equação:**
    $$
    x_1, x_2 \ge 0
    $$

#### **Modelo Matemático Completo (a)**
Juntando todos os componentes, o modelo matemático final para a maximização do lucro é:
$$
\begin{align*}
\text{Maximizar } Z = 300x_1 + 200x_2 \\
\text{Sujeito a:} \\
x_1 + x_2 &\le 10 \quad \text{(Terra)} \\
x_1 + 2x_2 &\le 16 \quad \text{(Trabalho)} \\
2x_1 + x_2 &\le 12 \quad \text{(Fertilizante)} \\
x_1, x_2 &\ge 0
\end{align*}
$$

---
### **Solução (b): Maximização da Produção**

#### **Análise do Problema**
Neste cenário, o objetivo muda. Em vez de maximizar o lucro, o agricultor deseja maximizar a área total cultivada, ou seja, a produção total em hectares. As restrições de terra, trabalho e fertilizante permanecem as mesmas.

#### **Função Objetivo**
O novo objetivo é maximizar a quantidade total de hectares plantados.

* **Objetivo:** Maximizar a Produção Total ($P$)
* **Equação:**
    $$
    \text{Maximizar } P = x_1 + x_2
    $$
* **Lógica:** A produção total, medida em hectares, é simplesmente a soma dos hectares de milho ($x_1$) e dos hectares de soja ($x_2$).

#### **Modelo Matemático Completo (b)**
As restrições não se alteram. Apenas a função objetivo é modificada.
$$
\begin{align*}
\text{Maximizar } P = x_1 + x_2 \\
\text{Sujeito a:} \\
x_1 + x_2 &\le 10 \quad \text{(Terra)} \\
x_1 + 2x_2 &\le 16 \quad \text{(Trabalho)} \\
2x_1 + x_2 &\le 12 \quad \text{(Fertilizante)} \\
x_1, x_2 &\ge 0
\end{align*}
$$