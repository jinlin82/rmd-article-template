# 使用方法
1. 克隆项目'rmd-article-template'到worktools;
2. 将5个bat文件:'rmd-html.bat','rmd-doc.bat','rmd-pdf.bat','rmd-beamer.bat','bookdown-pdf.bat',5个R文件:'rmd-html.R','rmd-doc.R','rmd-pdf.R','rmd-beamer.R','bookdown-pdf.R',以及'rmdnew.bat'文件放入worktools下的bat文件夹中。
3. 首先通过'WIN+R'组合键，打开运行窗口，输入'shell:sendto'后回车，进入文件夹'C:\Users\电脑用户名\AppData\Roaming\Microsoft\Windows\SendTo',然后将5个bat文件:'rmd-html.bat','rmd-doc.bat','rmd-pdf.bat','rmd-beamer.bat','bookdown-pdf.bat'放到SendTo文件夹；然后找到项目的rmd文件，右键点击，选择发送到相应的bat文件,即可生成相应格式的文档。
   
**注**：以上步骤完成有两个确保，即Ｒ程序环境变量(C:\Worktools\R\R-3.5.1\bin\x64)和worktools的bat文件环境变量(C:\Worktools\bat)都要设置成功。