# Opencode 对话日志

> 日期：2026-08-11

---

## 对话记录

### 1. 在"英语"结构下建立子板块

在英语板块下创建了 5 个大板块：词汇、语法、概要、翻译、作文。

**操作：**

- 创建目录：`docs/english/vocabulary/`、`grammar/`、`overview/`、`translation/`、`writing/`
- 为每个目录创建 `index.md`
- 更新 `mkdocs.yml` 导航，将英语改为多级菜单

**导航结构：**
```yaml
- 英语:
  - 英语首页: english/index.md
  - 词汇: english/vocabulary/index.md
  - 语法: english/grammar/index.md
  - 概要: english/overview/index.md
  - 翻译: english/translation/index.md
  - 作文: english/writing/index.md
```

---

### 2. 翻译页面格式设计

在 `docs/english/translation/index.md` 中设计了翻译练习的格式样式：

- 每组 4 句翻译练习
- 格式：**序号.** 中文句子。（英文词组）
- 英文翻译以引用块展示，关键部分加粗
- 使用 `!!! note` 提示框包裹每组，形成带边框的卡片效果

**示例格式：**

!!! note "第一组"

    **1.** 正是因为他的坚持不懈，他最终克服了所有困难。（perseverance）
    
    > It was **because of his perseverance** that he finally overcame all the difficulties.

---

### 3. 构建

- 使用 `mkdocs build` 构建静态站点
- 使用 `build.bat` 启动本地预览服务（http://127.0.0.1:8000）

---

### 4. 目录名全拼英文替换

将所有拼音目录名替换为正确的英文。

| 原名称 | 新名称 |
|--------|--------|
| `huaxue/` | `chemistry/` |
| `jianjie/` | `introduction/` |
| `shengwu/` | `biology/` |
| `shuxue/` | `math/` |
| `wuli/` | `physics/` |
| `yingyu/` | `english/` |
| `yuwen/` | `chinese/` |
| `yingyu/cihui/` | `english/vocabulary/` |
| `yingyu/yufa/` | `english/grammar/` |
| `yingyu/gaiyao/` | `english/overview/` |
| `yingyu/fanyi/` | `english/translation/` |
| `yingyu/zuowen/` | `english/writing/` |

同步更新了 `mkdocs.yml`、`README.md`、`Opencode.md` 和 `introduction/pdf-viewer/index.md` 中的引用路径。

---

### 5. 翻译页面补充与子页面创建

- 在 `english/translation/index.md` 顶部添加了 `!!! info` 格式样例提示
- 新建子页面 `english/translation/summerholiday/index.md`（暑假翻译60组）
- 更新 `mkdocs.yml` 导航添加该子页面

---

### 6. 便捷脚本

- 创建 `opencode_cmd.bat`，双击可在项目目录下打开 cmd 并执行 `opencode`

---

## 对话记录

> 日期：2026-08-28

### 1. 插入图片示例与像素画

- 在 `docs/introduction/images/index.md` 新增「插入图片」示例页面，演示基本插入、指定尺寸、居中、说明文字、提示框中插图、代码对照等用法
- 用 Python + Pillow 生成两张 16×16 像素画（16 倍放大）：
  - `docs/images/pixel-mushroom.png`（像素蘑菇）
  - `docs/images/pixel-heart.png`（像素爱心）
- 在 `stylesheets/extra.css` 添加 `.center` 样式（居中显示图片）
- 更新 `mkdocs.yml` 导航，在「功能展示」下添加「插入图片」
- `mkdocs build` 构建通过

---

### 2. 生物板块框架（按知识专题）

为生物板块建立框架，按知识专题组织，对应沪教版（上海科技教育出版社 2019 审核、2022 启用）教材体系。

**创建目录结构（6 个专题，33 个页面）：**

```
docs/biology/
├── index.md                     # 生物
├── cell/                        # 细胞生物学（大致对应必修1 第1-3、5章）
│   ├── index.md
│   ├── basics.md                # 细胞构成生物体（细胞学说/原核与真核）
│   ├── biomolecules.md          # 细胞中的分子组成
│   ├── organelles.md            # 细胞的结构与功能（质膜/细胞器/细胞核）
│   ├── transport.md             # 物质跨膜运输
│   ├── division.md              # 细胞增殖
│   └── differentiation.md       # 细胞分化、衰老与凋亡
├── metabolism/                  # 细胞的代谢（必修1 第4章）
│   ├── index.md
│   ├── enzymes-atp.md           # 酶与 ATP
│   ├── respiration.md           # 细胞呼吸
│   └── photosynthesis.md        # 光合作用
├── genetics/                    # 遗传与进化（必修2）
│   ├── index.md
│   ├── dna-discovery.md         # DNA 是主要的遗传物质
│   ├── dna.md                   # DNA 的结构与复制
│   ├── gene-expression.md       # 基因的表达（中心法则）
│   ├── meiosis.md               # 减数分裂
│   ├── segregation.md           # 基因的分离定律
│   ├── assortment.md            # 基因的自由组合定律
│   ├── sexlinkage.md            # 伴性遗传与人类遗传病
│   ├── variation.md             # 变异与育种
│   └── evolution.md             # 生物的进化
├── regulation/                  # 稳态与调节（选择性必修1）
│   ├── index.md
│   ├── internal-environment.md  # 内环境与稳态
│   ├── nervous.md               # 神经调节
│   ├── humoral.md               # 体液调节
│   ├── immune.md                # 免疫调节
│   └── phytohormones.md         # 植物激素调节
├── ecology/                     # 生物与环境（选择性必修2）
│   ├── index.md
│   ├── population.md            # 种群
│   ├── community.md             # 群落
│   ├── ecosystem.md             # 生态系统
│   └── environment.md           # 生态环境与保护
└── biotechnology/               # 生物技术（选择性必修3）
    ├── index.md
    ├── fermentation.md          # 发酵工程
    ├── culture.md               # 微生物的培养与应用
    ├── cell-engineering.md      # 细胞工程
    ├── gene-engineering.md      # 基因工程
    └── embryo-engineering.md    # 胚胎工程
```

**说明：**

- 所有页面均为标题占位，内容后续填写
- `genetics/` 顺序与沪教版必修2 一致：分子基础（DNA 发现→结构复制→表达）→ 遗传规律（减数分裂→分离→自由组合→伴性）→ 变异 → 进化
- 更新 `mkdocs.yml` 导航，将「生物」展开为 6 个专题的多级菜单
- `mkdocs build` 构建通过

---

## 对话记录

> 日期：2026-08-29

### 1. 英语词组栏目（A、B 词组）

- 新建 `docs/english/vocabulary/a-phrases.md`：A 词组 105 条，表格格式（序号 | 中文 | 英文），英文加粗
- 新建 `docs/english/vocabulary/b-phrases.md`：B 词组 117 条，同格式
- 更新 `mkdocs.yml` 导航：将「词汇」改为分组结构（词汇首页 + A 词组 + B 词组 子页面）
- `mkdocs build` 构建通过

### 2. 全站英文字体优化

- 在 `docs/stylesheets/extra.css` 覆盖 `--md-text-font`：英文/数字改用衬线体 Constantia（回退 Cambria、Palatino Linotype），中文回退苹方/微软雅黑（无衬线）
- 新增 `mjx-container` 规则：`$$` 数学公式保持 MathJax LaTeX 字体，不受影响
- `mkdocs build` 构建通过

### 3. 配置整理

- 删除误复制到 `docs/` 下的冗余 `mkdocs.yml`（本应只保留根目录 `mkdocs.yml` 作为唯一配置）
