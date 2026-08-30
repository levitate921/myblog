# PDF 查看

MkDocs Material 支持在页面中直接内嵌 PDF 文件。

## 如何使用

### 第一步：放置 PDF

将 PDF 文件放入 `docs` 目录下的任意位置，例如：

```
docs/
└── files/
    └── example.pdf
```

!!! tip "文件命名建议"
    为避免中文路径兼容问题，建议使用英文命名，如 `inequality.pdf`。

### 第二步：嵌入页面

在 `.md` 文件中使用 HTML `<embed>` 标签：

```html
<embed src="../files/example.pdf" width="100%" height="700px" type="application/pdf">
```

`src` 路径相对于当前 `.md` 文件所在位置。例如当前页面在 `docs/introduction/pdf-viewer/index.md`，PDF 在 `docs/introduction/files/inequality.pdf`，所以写 `../files/inequality.pdf`。

### 参数说明

| 参数 | 说明 |
|------|------|
| `width="100%"` | 宽度占满页面 |
| `height="700px"` | 高度，可根据需要调整 |
| `type="application/pdf"` | 声明文件类型，浏览器据此启用内置 PDF 预览 |

!!! note "浏览器要求"
    此方式依赖浏览器内置 PDF 渲染（Chrome、Edge、Firefox 均支持）。如果浏览器不支持，会自动提供下载入口。

### 第三步：构建

运行 `build.bat`（或 `mkdocs build`），PDF 会随站点文件一起生成到 `site/` 目录。

---

## 示例：不等式速查表

<embed src="../files/inequality.pdf" width="100%" height="700px" type="application/pdf">
