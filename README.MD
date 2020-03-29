<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [RMD-ARTICLE-TEMPLATE介绍](#rmd-article-template介绍)
    - [项目文件结构](#项目文件结构)
- [使用方法](#使用方法)
    - [克隆项目及设置](#克隆项目及设置)
    - [RMD文件在 Vscode 中编译步骤](#rmd文件在-vscode-中编译步骤)
        - [软件要求](#软件要求)
        - [操作步骤](#操作步骤)
        - [常见错误的原因及解决方法](#常见错误的原因及解决方法)
        - [如何运行 Rmarkdown 中的 python 代码](#如何运行-rmarkdown-中的-python-代码)
- [rmd-template.rmd相关说明](#rmd-templatermd相关说明)
- [rmd生成幻灯片beamer内容相关说明](#rmd生成幻灯片beamer内容相关说明)

<!-- markdown-toc end -->


# RMD-ARTICLE-TEMPLATE介绍
## 项目文件结构

该项目是一个论文模板,其主要文件结构为

```
\---rmd-article-template
    |   beamer-header.tex
    |   Bibfile.bib
    |   rmd-template.Rmd
    |   znufelogo.jpg
    |   _bookdown.yml
    |   _output.yml
    +---codes
    +---data
    +---results
    \---style
            beamer-template.tex
            bookdown-pdf-template.tex
            chinese-gb7714-2005-numeric.csl
            default-1.17.0.2.tex
            gbt7714-plain-zuel.bst
            markdown.css
            word-styles-01.docx
            word-styles-02.docx
```

共包含4个子文件夹,分别是`codes`,`data`,`results`,`style`和
其余6个文档,分别是
`_bookdown.yml`,`_outout.yml`,`bermer-header.tex`,`Bibfile.bib`,`rmd-template.Rmd`,`znufelogo.jpg`。
这10个部分是必不可少的,具体使用时视情况增加所需文件。下面对这10个部分逐一做简单介绍。

1. `codes`是用来放置论文中用来处理模型计算的代码;
2. `data`用来放置论文写作所需的原始数据;
3. `results`用来放置论文写作过程所生成的图和表;
4. `style`部分还包括几个用来控制论文生成格式的子文件,如参考文献格式,word文档生成格式等;
5. `_bookdown.yml`是`bookdown`文档中相关字符的说明;
6. `_outout.yml`是文档转换格式`html`,`doc`,`pdf`,`bookdown`,`beamer幻灯片` 时涉及pandoc和tex的具体设置,是配置文件;
7. `bermer-header.tex`是生成幻灯片时,对作者,邮箱以及logo的设置;
8. `Bibfile.bib`文件放置了用`Jabref`整理的固定格式的参考文献文本文档;
9. `rmd-template.Rmd`是论文正文部分;
10. `znufelogo.jpg`即生成幻灯片时的Logo。

# 使用方法

## 克隆项目及设置

1. 克隆项目`rmd-article-template`到worktools;
2. 将5个bat文件:`rmd-html.bat`,`rmd-doc.bat`,`rmd-pdf.bat`,`rmd-beamer.bat`,`bookdown-pdf.bat`,5个R文件:`rmd-html.R`,`rmd-doc.R`,`rmd-pdf.R`,`rmd-beamer.R`,`bookdown-pdf.R`,以及`rmdnew.bat`文件放入worktools下的bat文件夹中。
3. 首先在bat文件夹中复制5个bat文件:`rmd-html.bat`,`rmd-doc.bat`,`rmd-pdf.bat`,`rmd-beamer.bat`,`bookdown-pdf.bat`。
然后通过`WIN+R`组合键,打开运行窗口，输入`shell:sendto`后回车,进入文件夹`C:\Users\电脑用户名\AppData\Roaming\Microsoft\Windows\SendTo`;
右键点击Sendto文件夹空白处，选择'粘贴快捷方式',将复制好的5个bat文件以快捷方式的方式放到SendTo文件夹。
最后找到项目的rmd文件，点击右键后选择发送到相应的bat文件,即可生成相应格式的文档。
   
**注**：以上步骤完成有两个确保，即Ｒ程序环境变量
(`C:\Worktools\R\R-3.5.1\bin\x64`)和worktools的bat文件环境变量
(`C:\Worktools\bat`)都要设置成功。

## RMD文件在 Vscode 中编译步骤

**注意**: 下面操作要频繁修改增加环境变量，关于环境变量的操作可以参考[这里](https://github.com/jinlin82/Rmarkdown-writing/blob/master/README.md#windows%E7%B3%BB%E7%BB%9F%E4%B8%AD%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F%E5%8F%8A%E5%85%B6%E4%BF%AE%E6%94%B9%E6%96%B9%E6%B3%95)

### 软件要求
1. `pandoc`:下载并安装 `anaconda`，安装时勾选那两个添加环境变量的选项，并且添加
   环境变量 `C:\Anaconda3\Scripts`，如果 `anaconda`装在其他盘将 `C` 改成相应盘；
   在`cmd` 中运行 `pandoc -v` ，如果没有出现错误则说明安装成功。
2. R：在
   `https://mirrors.tuna.tsinghua.edu.cn/CRAN/bin/windows/base/old/3.5.3/R-3.5.3-win.exe`
   下载 `R` ，安装之后设置环境变量如 `C:\Worktools\R\R-3.5.3\bin\x64` ，具体路径
   根据自己安装位置确定，必须要添加 `R` 安装文件的 `\bin\x64` ，然后在`cmd` 中运
   行 `r` ，若不出错则安装成功。
3. R packages: 在 cmd 中分别运行 `install.packages('knitr')` ，
   `install.packages('rmarkdown')` ，`install.packages('bookdown')` ，
   `install.packages('reticulate')` 四条代码，运行成功之后再分别运行
   `library(knitr)` ， `library(rmarkdown)` ，`library(bookdown)`，
   `library(reticulate)` ，如果都加载成功说明已安装好。
4. 在生成 `html` 文件时，要把自己写的 `rmd` 文件与 `rmd-html.bat` ，`rmd-html.R`
   两个文件放在同一个文件夹。

### 操作步骤
1. 右键点击需要的文件夹，选择 `Open Folder as VS Code Project` 来打开，没有配置
   好的，可以直接打开Vscode，点击左上角的`文件(F)`，然后选择`打开文件夹`，找到需
   要的文件夹，点击`选择文件夹`即可打开为VSCode项目。可以根据vscode底部颜色来判
   断打开的是不是文件夹，若底部为浅蓝色，则表明打开的是文件夹，若底部为紫色，则
   打开的是单个文件，不能生成html，需要按照上面的步骤打开文件夹才能生成html。

2. 在打开的rmd文件中按下快捷键`Ctrl+Shift+P`，输入 `run task`，选择第1条`Tasks：
   Run Task`，然后点击`rmd-html`即可生成html文件。选择`rmd-pdf`生成pdf文件，选择
   `rmd-beamer`和`rmd-pdf`生成pdf文件，选择`rmd-doc`生成word文档。
   
### 常见错误的原因及解决方法

**注意：** 

- **以下解决方法必须先设置好环境变量修改方法一：使用命令行，具体可以参考**[这里](https://github.com/jinlin82/Rmarkdown-writing/blob/master/README.md#windows%E7%B3%BB%E7%BB%9F%E4%B8%AD%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F%E5%8F%8A%E5%85%B6%E4%BF%AE%E6%94%B9%E6%96%B9%E6%B3%95).
- 以下解决方法必须**重启vscode**才能发挥作用; 
- 文件路径必须**改成自己的文件路径**; 

1. Vscode 中 run task 没有出现下拉任务
2. 找不到 bat 文件
3. 找不到 Rscript 程序
4. 找不到 knitr 等包
5. 找不到 pandoc 程序
6. 找不到 pandoc crossref 程序
7. 找不到 python 或其 package
8. 出现 QT 错误， python 图形出不来
   - 在 `CMD` 中运行 `setenv -ua QT_QPA_PLATFORM_PLUGIN_PATH C:\Anaconda3\Library\plugins\platforms`
9. 不能生成 pdf 和 beamer
10. pdf 文件中中文字符乱码

### 如何运行 Rmarkdown 中的 python 代码
1. 按`ctrl+K M`,在上方弹出的框中输入`python`,然后回车或者点击下方出现的`python`
   栏，就切换到了python语言模式，光标放在python代码块所在的行，按`shift+enter`,
   即可运行该行python代码。
2. 运行完python代码后，想要回到Rmarkdown语言模式，同样是按`ctrl+K M`，在上方弹出
   的框中输入`Rmarkdown`,然后回车或者点击下方出现的`R Markdown`栏，就切换回了
   Rmarkdown语言模式。 


# rmd-template.rmd相关说明

1. rmd-template.rmd文档名称`rmd-template`可自行修改
2. 在rmd-template.rmd中,`title`,`author`,`date`,`institute`冒号后的内容可自行修改。
3. 从`TODO`到`## 使用方法`可删除，使用rmd格式编辑文档内容。
4. 文中其他内容均为格式设计不要随意更改。
5. 文末如下的最后两行不要更改，始终放在文末，通过编辑文件夹中`Bibfile.bib`插入参考文献。
   ```
   # 参考文献
   [//]: # (\bibliography{Bibfile})
   ```

# rmd生成幻灯片beamer内容相关说明

1. 选择`rmd-beamer`生成了5个文件，分别是`rmd-template_beamer.pdf`、`rmd-template_beamer.log`、`rmd-template_beamer.tex`、`rmd-template.py`、`rmd-template.R`,其中`rmd-template_beamer.pdf`是我们所需要的幻灯片内容。
2. 在rmd-template.rmd中,`institute: 中南财经政法大学统计与数学学院`只在幻灯片中显示。`classoption: "aspectratio=1610"`，1610 是幻灯片的长宽比例，有1610,169,43等选择，调整幻灯片长宽。
3. 关于幻灯片中邮箱和右下角图标logo的修改：
   - 修改图标：`znufelogo.jpg`是幻灯片右下角的图标，可更换为其他jpg图片。打开`beamer-header.tex`,将第二行最后`{./znufelogo.jpg}`中的`znufelogo`改为需要替换的jpg图片名称,需替换的jpg图片要放在当前文件夹中。
   - 修改邮箱：打开`beamer-header.tex`,第一行将两个`某某`修改为文章作者名,将`xxxx@zuel.edu.cn`修改为自己的邮箱
   - 打开`_output.yml`,第47行取消注释`in_header: ./beamer-header.tex`。
   - 做出以上修改后，运行`rmd-beamer`,生成的幻灯片中邮箱和图标logo已经修改。
