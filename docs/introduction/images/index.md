# 插入图片

在 Markdown 中插入图片非常简单，语法如下：

```
![替代文本](图片路径)
```

## 基本图片

这是一只像素风小蘑菇：

![像素蘑菇](../../images/pixel-mushroom.png)

## 指定尺寸

使用属性列表（`attr_list`）可以设置图片大小，例如宽 128px 或 192px：

![像素蘑菇，宽度 128](../../images/pixel-mushroom.png){ width="128" }

![像素蘑菇，宽度 192](../../images/pixel-mushroom.png){ width="192" }

## 居中显示

给图片添加 `.center` 类即可居中（样式见 `stylesheets/extra.css`）：

![像素爱心，居中](../../images/pixel-heart.png){ .center width="192" }

## 带说明文字

在图片下方添加一段说明：

![像素爱心](../../images/pixel-heart.png){ width="128" }

*图 1：16×16 像素风爱心*

## 在提示框中使用

!!! note "图片也可以放进提示框"
    这样就能给图片配上简洁的说明框。

    ![像素爱心](../../images/pixel-heart.png){ width="96" }

## 代码与效果对照

=== "Markdown 源码"

    ```markdown
    ![像素蘑菇](../../images/pixel-mushroom.png){ width="192" }
    ```

=== "渲染效果"

    ![像素蘑菇](../../images/pixel-mushroom.png){ width="192" }
