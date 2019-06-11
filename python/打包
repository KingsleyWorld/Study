一、Python打包为EXE文件有不少方案，比较常用的有下面两种方式：
1.使用py2exe
  详细介绍：http://www.cnblogs.com/jans2002/archive/2006/09/30/519393.html
2.使用Pyinstaller
  本文重点介绍该方式打包。

二、Pyinstaller使用
简介：PyInstaller可以将Python程序打包成Windows（当然也包括Linux, Mac OS X, Solaris and AIX）下可执行的EXE文件，目前支持python2.2-2.7版本。
下载：http://www.pyinstaller.org/
    pip install pyinstaller
or upgrade to a newer version:
    pip install --upgrade pyinstaller
To install the current development version use:
    pip install https://github.com/pyinstaller/pyinstaller/tarball/develop


依赖条件：使用pyinstaller需要安装Pywin32.可到这里下载相应的版本。
使用：
下载对应已安装的Python版本的PyInstaller版本，解压到任意目录。如C:\pyinstaller2-1
①.编写测试脚本如：test.py，保存目录: c:\python2.7
②.在命令行中输入：cd C:\pyinstaller2-1
    python pyinstaller.py -F  c:\python2.7\test.py        //参数-F 表示生成单个exe文件
③ 执行后在C:\pyinstaller2-1目录下会生成一个test目录，test.exe文件存放在test\dist 目录下
 
常用参数：
-F　　　　制作独立的可执行程序
-D　　　　制作出的档案存放在同一个文件夹下（默认值）
-K　　　　包含TCL/TK（对于使用了TK的，最好加上这个选项，否则在未安装TK的电脑上无法运行）
-w           制作窗口程序
-c　　　　制作命令行程序（默认）
-X　　　　制作使用UPX压缩过的可执行程序（推荐使用这个选项，需要下载UPX包，解压后upx.exe放在Python(非PyInstaller)安装目录下，下载upx308w.zip）
-o DIR　　指定输出SPEC文件路径（这也决定了最后输出的exe文件路径）
--icon=[ICO文件路径] 指定程序图标
-v [指定文件] 指定程序版本信息
-n [指定程序名] 指定程序名称
 
如有存在多个py文件,之前存在调用关系，只需要将主文件，如Main.py打成exe文件。发布的时候就是一个文件夹了。
注：Pyinstaller对中文目录存在一定的兼容问题。故使用过程中，一般最好不要将exe文件放在带有中文的目录下，比如桌面。
