# 集合与逻辑

集合与常用逻辑用语是高中数学的起点：集合用统一的语言描述"对象的全体"，逻辑用语则用来刻画命题之间的推出关系。本页由《集合学案》与《常用逻辑用语》整合而成。

## 一、集合

### 基本概念

- 把一些确定的对象的全体叫做**集合**，简称**集**。
- 集合中的各个对象叫做这个集合的**元素**。
- 含有有限个元素的集合称为**有限集**；含有无限个元素的集合称为**无限集**；不含任何元素的集合称为**空集**，记为 $\varnothing$。
- 如集合 $A$ 中任一元素都是集合 $B$ 中元素，则集合 $A$ 称为集合 $B$ 的**子集**，记为 $A \subseteq B$。
- 如 $A \subseteq B$，又 $B \subseteq A$，则 $A$ 与 $B$ **相等**，记为 $A = B$。
- 如 $A \subseteq B$，而 $B$ 中至少有一个元素不是 $A$ 中元素，则称 $A$ 是 $B$ 的**真子集**。
- 空集 $\varnothing$ 是任何集合的子集，是任何非空集合的真子集。

### 集合的特性

| 特性 | 说明 |
|------|------|
| 确定性 | 对于给定的一个集合，集合中的元素是确定的：任一对象要么属于该集合，要么不属于。 |
| 互异性 | 对于给定的一个集合，集合中的元素是各不相同的，相同的对象只算一个元素。 |
| 无序性 | 集合中的元素没有先后顺序，如 $\{1, 2\}$ 与 $\{2, 1\}$ 是同一个集合。 |

### 集合的表示法

| 表示法 | 说明 |
|--------|------|
| 描述法 | 把集合中元素的公共属性描述出来，写在大括号内表示集合的一种方法，即 $\{M \mid M \text{ 具有的特征或 } M \text{ 所满足的条件}\}$。 |
| 列举法 | 把集合中的元素一一列举出来，写在大括号内表示集合的一种方法。 |
| 区间法 | 用区间表示数集，如 $(a, b)$、$[a, +\infty)$，常用于表示不等式的解集。 |

### 集合的运算

- **交集：** $A \cap B = \{x \mid x \in A \text{ 且 } x \in B\}$
- **并集：** $A \cup B = \{x \mid x \in A \text{ 或 } x \in B\}$
- **补集：** $\complement_U A = \{x \mid x \in U \text{ 且 } x \notin A\}$，其中 $U$ 为全集。

### 集合的性质

- 对于集合 $A$、$B$、$C$，如果 $A \subseteq B$，$B \subseteq C$，那么 $A \subseteq C$。
- 对于任何集合 $A$、$B$，有 $A \cup B = B \cup A$，$A \cap B = B \cap A$，$A \cup B \supseteq A$，$A \cup B \supseteq B$，$A \cap B \subseteq A$，$A \cap B \subseteq B$。
- 对于任何集合 $A$，有 $A \cup A = A$，$A \cap A = A$，$A \cup \varnothing = A$，$A \cup U = U$，$A \cap U = A$，$A \cap \varnothing = \varnothing$，$\complement_U A \cap A = \varnothing$，$\complement_U A \cup A = U$，$\complement_U(\complement_U A) = A$。
- 对于任何集合 $A$、$B$，有 $\complement_U(A \cup B) = \complement_U A \cap \complement_U B$，$\complement_U(A \cap B) = \complement_U A \cup \complement_U B$。
- 对于任何集合 $A$、$B$、$C$，有 $A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$，$A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$。

### 常见数集

- 自然数集 —— $\mathbb{N}$
- 整数集 —— $\mathbb{Z}$
- 有理数集 —— $\mathbb{Q}$
- 实数集 —— $\mathbb{R}$
- 复数集 —— $\mathbb{C}$

### 有限集的并集的元素个数

- 如果用 $n(X)$ 表示有限集 $X$ 所含的元素个数，则 $n(A \cup B) = n(A) + n(B) - n(A \cap B)$。
- 如果 $A \cap B = \varnothing$，则由于 $n(\varnothing) = 0$，所以 $n(A \cup B) = n(A) + n(B)$。

## 二、常用逻辑用语

### 命题

用自然语言、符号或式子表达，且可以判断其真假的语句称为**命题**。命题通常用陈述句表达，命题由条件和结论两部分组成，其含义判断为真的命题称为**真命题**，判断为假的命题称为**假命题**。

命题"若 $\alpha$，则 $\beta$"是真命题，是指所有满足条件 $\alpha$ 的对象都满足结论 $\beta$，即 $\{x \mid \text{满足 } \alpha\} \subseteq \{x \mid \text{满足 } \beta\}$；命题"若 $\alpha$，则 $\beta$"是假命题，是指存在满足条件 $\alpha$ 的对象，它不满足结论 $\beta$。

如果命题"若 $\alpha$，则 $\beta$"是真命题，那么就称 $\alpha$ 推出 $\beta$，记作 $\alpha \Rightarrow \beta$（或 $\beta \Leftarrow \alpha$）。

### 充分条件与必要条件

对于两个陈述句 $\alpha$ 与 $\beta$，如果 $\alpha \Rightarrow \beta$，就称 $\alpha$ 是 $\beta$ 的**充分条件**，亦称 $\beta$ 是 $\alpha$ 的**必要条件**。

对于两个陈述句 $\alpha$ 与 $\beta$，如果既有 $\alpha \Rightarrow \beta$，又有 $\beta \Rightarrow \alpha$，就称 $\alpha$ 是 $\beta$ 的**充分必要条件**，简称**充要条件**，记作 $\alpha \Leftrightarrow \beta$，读作"$\alpha$ 与 $\beta$ 等价"或"$\alpha$ 成立当且仅当 $\beta$ 成立"。

| 条件类型 | 符号表示 |
|:---------|:---------|
| 若 $\alpha \Rightarrow \beta$，则 $\alpha$ 是 $\beta$ 的充分条件，$\beta$ 是 $\alpha$ 的必要条件 | $\alpha \Rightarrow \beta$ |
| $\alpha$ 是 $\beta$ 的充分不必要条件 | $\alpha \Rightarrow \beta$ 且 $\beta \nRightarrow \alpha$ |
| $\alpha$ 是 $\beta$ 的必要不充分条件 | $\alpha \Leftarrow \beta$ 且 $\beta \nRightarrow \alpha$ |
| $\alpha$ 是 $\beta$ 的充要条件 | $\alpha \Leftrightarrow \beta$ |
| $\alpha$ 是 $\beta$ 的既不充分也不必要条件 | $\alpha \nRightarrow \beta$ 且 $\beta \nRightarrow \alpha$ |

!!! tip "判断充要条件的常用方法"

    1. **定义法：** 直接判断 $\alpha \Rightarrow \beta$ 与 $\beta \Rightarrow \alpha$ 是否成立。
    2. **集合法：** 记 $A = \{x \mid \text{满足 } \alpha\}$，$B = \{x \mid \text{满足 } \beta\}$。若 $A \subseteq B$，则 $\alpha$ 是 $\beta$ 的充分条件；若 $A \supseteq B$，则 $\alpha$ 是 $\beta$ 的必要条件；$A = B$ 时二者互为充要条件。
    3. **等价转化法：** 把命题转化为与之等价的、更易判断的命题。

### 反证法

**定义：** 在假定命题结论的反面成立的前提下，经过推理，若推出的结果与定义、公理、定理矛盾，或与命题中的已知条件矛盾，或与假定矛盾，从而说明命题结论的反面不可能成立，由此判定命题结论成立的方法叫**反证法**。

**证题步骤：**

1. 作出否定结论的假设；
2. 进行推理，导出矛盾；
3. 否定假设，肯定结论。

**常用的否定形式：**

| 原结论 | 否定 |
|:---|:---|
| 是 | 不是 |
| 都是 | 不都是（至少有一个不是） |
| 大于 | 不大于（小于或等于） |
| 小于 | 不小于（大于或等于） |
| 至少有一个 | 一个也没有 |
| 至多有一个 | 至少有两个 |
| 至少有 $n$ 个 | 至多有 $n-1$ 个 |
| 至多有 $n$ 个 | 至少有 $n+1$ 个 |
| 对任意 $x \in A$，$p(x)$ 成立 | 存在 $x \in A$，$p(x)$ 不成立 |
| 存在 $x \in A$，$p(x)$ 成立 | 对任意 $x \in A$，$p(x)$ 不成立 |
| $p$ 且 $q$ | $\lnot p$ 或 $\lnot q$ |
| $p$ 或 $q$ | $\lnot p$ 且 $\lnot q$ |
