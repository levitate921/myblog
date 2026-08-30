# whklearning

高中学习笔记博客，基于 [MkDocs](https://www.mkdocs.org/) + [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) 构建的静态网站。

涵盖语文、数学、英语、物理、化学、生物六个科目，支持数学公式（MathJax）和图表（Mermaid）。

## 目录结构

```
myblog/
├── mkdocs.yml              # MkDocs 配置文件（站点名称、主题、导航、插件等）
├── build.bat               # Windows 构建 + 启动脚本（mkdocs build + http server）
├── runmkdocs.bat           # Windows 开发辅助脚本（打开命令行，手动执行 mkdocs 命令）
├── stop.bat                # 停止端口 8000 上运行的服务
├── upd.bat                 # 一键推送到 GitHub，触发 Actions 自动构建部署
├── upd.cfg                 # upd.bat 的便携配置（仓库地址、git 身份等）
├── .github/workflows/      # GitHub Actions 自动构建部署配置
├── README.md
├── docs/                   # 源文件（Markdown）
│   ├── index.md            # 首页
│   ├── stylesheets/        # 自定义 CSS 样式
│   ├── javascripts/        # 自定义 JS（MathJax、Mermaid）
│   ├── chinese/            # 语文学科笔记
│   ├── math/               # 数学学科笔记
│   ├── english/            # 英语学科笔记
│   ├── physics/            # 物理学科笔记
│   ├── chemistry/          # 化学学科笔记
│   ├── biology/            # 生物学科笔记
│   └── introduction/       # 功能展示（提示框、代码高亮、内容标签、数学公式等示例）
├── site/                   # 构建输出（静态 HTML 网站，可直接部署）
└── past/                   # 历史版本备份（含 git 自动推送脚本）
```

## 环境要求

- Python 3.8+
- pip

## 搭建流程

### 1. 安装依赖

```bash
pip install mkdocs mkdocs-material
```

### 2. 启动开发服务器（推荐）

修改 `docs/` 下的 Markdown 文件后浏览器会自动刷新：

```bash
mkdocs serve
```

浏览器访问 `http://127.0.0.1:8000`

### 3. 构建静态网站

将 Markdown 源文件编译为 `site/` 目录下的静态 HTML：

```bash
mkdocs build
```

### 4. 本地预览已构建的站点

```bash
# 使用 Python 内置 HTTP 服务器
python -m http.server --directory site 8000

# 或使用 Node.js
npx serve site

# Windows 一键构建 + 预览
build.bat
```

浏览器访问 `http://127.0.0.1:8000`

### 5. 停止服务

```bash
# Windows
stop.bat
```

## 技术栈

- **MkDocs** — 静态站点生成
- **Material for MkDocs** — 主题（支持深色/浅色模式切换）
- **MathJax** — 数学公式渲染（LaTeX 语法）
- **Mermaid** — 图表绘制（流程图、时序图等）
- **pymdownx 扩展** — 代码高亮、提示框、标签页、任务列表等

## 部署

已配置 GitHub Actions：推送到 `main` 分支后自动构建 `site/` 并部署到 GitHub Pages。

- 网站地址：https://levitate921.github.io/myblog/
- 本地修改文档后，双击 `upd.bat` 即可一键更新（首次运行需在弹出的窗口登录 GitHub）
- `site/` 为构建产物，已加入 `.gitignore`，仅在云端由 Actions 构建
