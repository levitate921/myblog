# 内容标签页

MkDocs Material 支持标签页式的内容组织方式。

## 基础标签页

=== "Python"
    ```python
    def hello_world():
        print("来自 Python 的问候！")
    ```

=== "JavaScript"
    ```javascript
    function helloWorld() {
        console.log("来自 JavaScript 的问候！");
    }
    ```

=== "Java"
    ```java
    public class HelloWorld {
        public static void main(String[] args) {
            System.out.println("来自 Java 的问候！");
        }
    }
    ```

## 不同内容类型的标签页

=== "代码示例"
    ```python
    import requests
    
    response = requests.get('https://api.example.com/data')
    data = response.json()
    print(data)
    ```

=== "说明"
    这段代码演示了如何使用 Python 的 `requests` 库发起 HTTP GET 请求并解析 JSON 响应。

=== "输出"
    ```
    {'status': 'success', 'data': {...}}
    ```

## 嵌套标签页

=== "前端"
    ??? note "React"
        ```jsx
        function App() {
            return <h1>你好 React！</h1>;
        }
        ```

    ??? note "Vue"
        ```vue
        <template>
            <h1>你好 Vue！</h1>
        </template>
        ```

=== "后端"
    ??? note "Python"
        ```python
        from flask import Flask
        app = Flask(__name__)
        
        @app.route('/')
        def hello():
            return '你好 Flask！'
        ```

    ??? note "Node.js"
        ```javascript
        const express = require('express');
        const app = express();
        
        app.get('/', (req, res) => {
            res.send('你好 Express！');
        });
        ```

## 标签页与提示框

=== "安装"
    !!! success "快速安装"
        ```bash
        pip install mkdocs-material
        ```

=== "配置"
    !!! info "基础配置"
        ```yaml
        theme:
          name: material
        ```

=== "使用"
    !!! tip "本地运行"
        ```bash
        mkdocs serve
        ```

## 关联标签页

你可以使用 `content.tabs.link` 功能在不同页面的标签页之间建立关联。

=== "标签 1"
    标签 1 的内容

=== "标签 2"
    标签 2 的内容

=== "标签 3"
    标签 3 的内容
