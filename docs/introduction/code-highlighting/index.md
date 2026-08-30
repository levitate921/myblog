# 代码高亮

MkDocs Material 为多种编程语言提供了出色的语法高亮功能。

## Python 示例

```python
import math

def calculate_area(radius):
    """计算圆的面积"""
    return math.pi * radius ** 2

def fibonacci(n):
    """生成斐波那契数列"""
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

# 使用示例
if __name__ == "__main__":
    print(f"半径为 5 的圆面积: {calculate_area(5):.2f}")
    print(f"前 10 个斐波那契数: {list(fibonacci(10))}")
```

## JavaScript 示例

```javascript
class Calculator {
    constructor() {
        this.result = 0;
    }

    add(x) {
        this.result += x;
        return this;
    }

    multiply(x) {
        this.result *= x;
        return this;
    }

    getResult() {
        return this.result;
    }
}

// 使用
const calc = new Calculator();
console.log(calc.add(5).multiply(3).getResult()); // 15
```

## HTML/CSS 示例

```html
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>示例页面</title>
    <style>
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        
        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h1>你好世界</h1>
            <p>这是一个示例页面。</p>
        </div>
    </div>
</body>
</html>
```

## SQL 示例

```sql
-- 创建用户表
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 插入示例数据
INSERT INTO users (username, email) VALUES
('alice', 'alice@example.com'),
('bob', 'bob@example.com'),
('charlie', 'charlie@example.com');

-- 使用 JOIN 查询
SELECT 
    u.username,
    p.title,
    p.created_at
FROM users u
JOIN posts p ON u.id = p.user_id
WHERE p.created_at > '2024-01-01'
ORDER BY p.created_at DESC;
```

## 复制代码功能

代码块右上角的复制按钮可以方便地将代码复制到剪贴板。
