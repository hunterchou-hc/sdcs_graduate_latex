# SysuGraduateThesis

中山大学计算机学院研究生毕业论文 LaTeX 模板, 基于[ThuThesis](https://github.com/tuna/thuthesis)项目开发

关于开发模板的相关说明请参考 [https://github.com/tuna/thuthesis](https://github.com/tuna/thuthesis)

使用中有任何问题可以在issues中提出.

## 使用说明  

模板可以在个人电脑或Overleaf平台使用.

- 个人电脑: 安装最新版 TexLive, 配合文本编辑器 VS Code, Sublime Text使用, 也可以直接使用其他LaTeX IDE.  
- Overleaf: 注意选择编译器为 `xelatex`  

## 编辑文件
1. `sysusetup.tex`: 填写标题、作者、导师、学位名称等信息。
2. `data/abstract.tex`: 填写中英文摘要。
3. `data/denotation.tex`: 填写符号与缩略语,注意按音序排序。
4. `data/chapxx.tex`: 各章内容,如有章节增删请在`main.tex`中修改相关记录`。
5. `data/appendix.tex`: 附录。
6. `data/works.tex`: 学术成果。
7. `data/acknowledgements.tex`: 致谢。
8. `ref/refs.bib`: 引文数据库。
9. `main.tex`: 主文件,用于控制文档选项(字体,学位类别):  
    - 学术硕士: `\documentclass[degree=master]{sysuthesis}`;  
    - 专业硕士: `\documentclass[degree=master,degree­-type=professional]{sysuthesis}`;  
    - 博士: `\documentclass[degree=doctor]{sysuthesis}` 。
指定论文包括的部分,如摘要、目录、正文各章节、附录、引文数据库等等。
(注意插入每章内容之后要加 `\cleardoublepage` 以保证在打印版中各章都从右边开始):  
```
    \input{data/chap01}
    \cleardoublepage
    \input{data/chap02}
    \cleardoublepage
```
---
## 编译文件  

借助IDE或VS Code/Sublime Text插件编译的方法请查阅相关文档, 这里只介绍从命令行编译的方法.

```
latexmk main.tex
```
或
```
xelatex main.tex
bibtex main.aux
xelatex main.tex
xelatex main.tex
```
或
```
make all (仅在Linux命令行可用)
```
---
## 注意事项  

1. 缩略语列表  
请按照字母 (A-Z) 顺序排序, 中文按音序;

2. 图表
图例的 caption 在图的下方，表格的caption在图的上方;

3. 数学公式
- 数学公式结束时，若一句话结束就用句号，若未结束就用逗号。切忌漏标点符号;
- 数学公式中出现括号时，使用`\left(`和`\right)`（大括号、中括号、尖括号同理）;

4. 字体问题  
为确保字体符合学院要求, 最终版论文请在 Windows 平台编译, 或在Linux等平台安装Windows字体并指定字体集为 Windows: 
`\documentclass[degree=doctor, fontset=windows]{sysuthesis}`

