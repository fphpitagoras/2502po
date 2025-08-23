# Exercícios Resolvidos
**Professor:** Felipe Heitmann
**Disciplina:** Pesquisa Operacional
**Data:** 23/08/2025
***
### Questão 02:
> Uma fábrica de móveis produz cadeiras e mesas. Cada cadeira requer 2 horas de trabalho na máquina de corte e 1 hora na máquina de montagem. Cada mesa requer 1 hora de trabalho na máquina de corte e 3 horas na máquina de montagem. A fábrica tem 8 horas disponíveis na máquina de corte e 9 horas na máquina de montagem. O lucro por cadeira é de R\$ 50,00 e por mesa é de R\$ 80,00.
> a) Quantas cadeiras e mesas a fábrica deve produzir para maximizar o lucro?
> b) Quantas cadeiras e mesas a fábrica deve produzir para maximizar a produção?

---
### a) Modelo para Maximização do Lucro

#### **Análise do Problema**
O objetivo principal é determinar a quantidade de cadeiras e mesas a serem produzidas para que o lucro total seja o maior possível. As decisões a serem tomadas são quantas unidades de cada produto fabricar. Essas decisões estão limitadas pela disponibilidade de horas em duas máquinas: a de corte e a de montagem.

#### **Variáveis de Decisão**
Para construir o modelo, definimos as seguintes variáveis:
* $x_1$: Representa a quantidade de cadeiras a serem produzidas.
* $x_2$: Representa a quantidade de mesas a serem produzidas.

#### **Função Objetivo**
O objetivo é maximizar o lucro total. O lucro é a soma do lucro obtido com a venda de cadeiras e o lucro obtido com a venda de mesas.

* **Objetivo:** Maximizar Lucro
* **Equação:**
$$\text{Maximizar } Z = 50x_1 + 80x_2$$
* **Lógica:** O lucro total ($Z$) é calculado somando o lucro de cada cadeira (R\$50 multiplicado pela quantidade de cadeiras, $x_1$) com o lucro de cada mesa (R\$80 multiplicado pela quantidade de mesas, $x_2$).

#### **Restrições**
As restrições do problema são os limites de tempo de produção em cada máquina.

1.  **Restrição de Horas da Máquina de Corte:**
    * **Propósito:** O total de horas utilizadas na máquina de corte para produzir todas as cadeiras e mesas não pode exceder as 8 horas disponíveis.
    * **Equação:**
    $$2x_1 + 1x_2 \le 8$$
    * **Lógica:** Cada cadeira ($x_1$) consome 2 horas de corte e cada mesa ($x_2$) consome 1 hora. A soma total do tempo de uso não pode ultrapassar o limite de 8 horas.

2.  **Restrição de Horas da Máquina de Montagem:**
    * **Propósito:** O total de horas utilizadas na máquina de montagem não pode exceder as 9 horas disponíveis.
    * **Equação:**
    $$1x_1 + 3x_2 \le 9$$
    * **Lógica:** Cada cadeira ($x_1$) consome 1 hora de montagem e cada mesa ($x_2$) consome 3 horas. A soma total do tempo de uso não pode ultrapassar o limite de 9 horas.

#### **Restrições de Não-Negatividade**
É impossível produzir uma quantidade negativa de móveis. Portanto, as variáveis de decisão devem ser maiores ou iguais a zero.
* **Equação:**
$$x_1, x_2 \ge 0$$

#### **Modelo Matemático Completo (Lucro)**
O modelo matemático consolidado para a maximização do lucro é:
$$\text{Maximizar } Z = 50x_1 + 80x_2$$
**Sujeito a:**
$$2x_1 + x_2 \le 8$$
$$x_1 + 3x_2 \le 9$$
$$x_1, x_2 \ge 0$$

---
### b) Modelo para Maximização da Produção

#### **Análise do Problema**
Neste cenário, o objetivo muda. Em vez de maximizar o lucro, queremos maximizar o número total de itens produzidos (a soma de cadeiras e mesas), mantendo as mesmas limitações de recursos (horas de máquina).

#### **Variáveis de Decisão**
As variáveis de decisão permanecem as mesmas:
* $x_1$: Quantidade de cadeiras a serem produzidas.
* $x_2$: Quantidade de mesas a serem produzidas.

#### **Função Objetivo**
O objetivo agora é maximizar a quantidade total de produtos.

* **Objetivo:** Maximizar Produção Total
* **Equação:**
$$\text{Maximizar } P = x_1 + x_2$$
* **Lógica:** A produção total ($P$) é simplesmente a soma da quantidade de cadeiras ($x_1$) e da quantidade de mesas ($x_2$).

#### **Restrições**
As restrições de tempo de máquina e de não-negatividade são idênticas às do modelo anterior, pois os recursos disponíveis e os processos de fabricação não mudaram.

1.  **Restrição de Horas da Máquina de Corte:**
    $$2x_1 + 1x_2 \le 8$$
2.  **Restrição de Horas da Máquina de Montagem:**
    $$1x_1 + 3x_2 \le 9$$
3.  **Restrições de Não-Negatividade:**
    $$x_1, x_2 \ge 0$$

#### **Modelo Matemático Completo (Produção)**
O modelo matemático consolidado para a maximização da produção é:
$$\text{Maximizar } P = x_1 + x_2$$
**Sujeito a:**
$$2x_1 + x_2 \le 8$$
$$x_1 + 3x_2 \le 9$$
$$x_1, x_2 \ge 0$$