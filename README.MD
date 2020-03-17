# RMD-ARTICLE-TEMPLATE介绍
该项目是一个论文模板,共包含4个子文件夹,分别是`codes`,`data`,`results`,`style`和
其余6个文档,分别是
`_bookdown.yml`,`_outout.yml`,`bermer-header.tex`,`Bibfile.bib`,`rmd-template.Rmd`,`znufelogo.jpg`。
这10个部分是必不可少的,具体使用时视情况增加所需文件。下面对这10个部分逐一做简单介绍。

1. `codes`是用来放置论文中用来处理模型计算的代码;
2. `data`用来放置论文写作所需的原始数据;
3. `results`用来放置论文写作过程所生成的图和表;
4. `style`部分还包括几个用来控制论文生成格式的子文件,如参考文献格式,word文档生成格式等,这些格式都是按照中南财经政法大学论文格式要求设置的;
5. `_bookdown.yml`是`bookdown`文档中相关字符的说明;
6. `_outout.yml`是文档转换格式`html`,`doc`,`pdf`,`bookdown`,`beamer幻灯片` 时涉及pandoc和tex的具体设置,是配置文件;
7. `bermer-header.tex`是生成幻灯片时,对作者,邮箱以及logo的设置;
8. `Bibfile.bib`文件放置了用`Jabref`整理的固定格式的参考文献文本文档;
9. `rmd-template.Rmd`是论文正文部分;
10. `znufelogo.jpg`即生成幻灯片时的Logo。

# 使用方法

1. 克隆项目`rmd-article-template`到worktools;
2. 将5个bat文件:`rmd-html.bat`,`rmd-doc.bat`,`rmd-pdf.bat`,`rmd-beamer.bat`,`bookdown-pdf.bat`,5个R文件:`rmd-html.R`,`rmd-doc.R`,`rmd-pdf.R`,`rmd-beamer.R`,`bookdown-pdf.R`,以及`rmdnew.bat`文件放入worktools下的bat文件夹中。
3. 首先在bat文件夹中复制5个bat文件:`rmd-html.bat`,`rmd-doc.bat`,`rmd-pdf.bat`,`rmd-beamer.bat`,`bookdown-pdf.bat`。
然后通过`WIN+R`组合键,打开运行窗口，输入`shell:sendto`后回车,进入文件夹`C:\Users\电脑用户名\AppData\Roaming\Microsoft\Windows\SendTo`;
右键点击Sendto文件夹空白处，选择'粘贴快捷方式',将复制好的5个bat文件以快捷方式的方式放到SendTo文件夹。
最后找到项目的rmd文件，点击右键后选择发送到相应的bat文件,即可生成相应格式的文档。
   
**注**：以上步骤完成有两个确保，即Ｒ程序环境变量(`C:\Worktools\R\R-3.5.1\bin\x64`)和worktools的bat文件环境变量(`C:\Worktools\bat`)都要设置成功。

# vscode生成文档步骤

1. 在vscode中打开项目;
2. 打开项目的rmd文件，按下快捷键`ctrl+p`,在弹出的窗口中输入`task rmd`,可以选择rmd-html生成html文件，
选择`rmd-pdf`生成pdf文件，选择`rmd-beamer`和`rmd-pdf`生成pdf文件，选择`rmd-doc`生成word文档。

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