# 数学与图表

MkDocs Material 支持数学表达式和图表。

## 数学表达式

### 行内公式

爱因斯坦著名方程：$E = mc^2$

### 块级公式

$
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
$

### 复杂公式

$
\frac{\partial u}{\partial t} = \alpha \nabla^2 u
$

$
\mathcal{L} = \frac{1}{2} \partial_\mu \phi \partial^\mu \phi - \frac{1}{2} m^2 \phi^2
$

## Mermaid 图表

!!! note "图表加载说明"
    图表可能需要一些时间来渲染。如果没有立即显示，请刷新页面。

### 流程图

``` mermaid
flowchart TD
    A[开始] --> B{能正常工作吗？}
    B -->|能| C[太棒了！]
    B -->|不能| D[调试]
    D --> B
    C --> E[结束]
```

### 时序图

``` mermaid
sequenceDiagram
    participant 用户
    participant API
    participant 数据库
    
    用户->>API: 登录请求
    API->>数据库: 验证凭据
    数据库-->>API: 用户数据
    API-->>用户: JWT 令牌
    
    用户->>API: 获取资料
    API->>数据库: 查询用户
    数据库-->>API: 资料数据
    API-->>用户: 资料应答
```

### 类图

``` mermaid
classDiagram
    class 动物 {
        +String 名称
        +int 年龄
        +void 进食()
        +void 睡觉()
    }
    
    class 狗 {
        +String 品种
        +void 吠叫()
    }
    
    class 猫 {
        +String 毛色
        +void 喵叫()
    }
    
    动物 <|-- 狗
    动物 <|-- 猫
```

### 甘特图

``` mermaid
gantt
    title 项目时间线
    dateFormat  YYYY-MM-DD
    section 计划
    需求分析     :done,    req1, 2024-01-01, 30d
    设计方案      :active,  des1, after req1, 20d
    section 开发
    编码实现      :         imp1, after des1, 45d
    测试          :         test1, after imp1, 30d
```

### 状态图

``` mermaid
stateDiagram-v2
    [*] --> 空闲
    空闲 --> 处理中 : 开始
    处理中 --> 成功 : 完成
    处理中 --> 错误 : 失败
    错误 --> 处理中 : 重试
    成功 --> [*]
    错误 --> [*]
```

## 数学证明

### 勾股定理

$
a^2 + b^2 = c^2
$

其中：
- $a$ 和 $b$ 为两条直角边的长度
- $c$ 为斜边长度

### 求根公式

$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$

### 欧拉恒等式

$
e^{i\pi} + 1 = 0
$

此方程被认为是数学中最优美的公式之一，它将五个基本数学常数联系在一起。

## Mermaid.js 初始化

```html
<script>
  mermaid.initialize({ startOnLoad: true });
</script>
```
