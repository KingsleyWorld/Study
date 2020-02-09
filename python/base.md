
1. 导入模块
   $ import module_name
   $ from module_name import func_name, class_name, member_name
   $ from module_name import *

   # 指定别名: as
   $ import module_name as new_name
   $ from module_name import func_name as new_name

2. 设置Python模块的搜索路径
   a. 设置python模块的搜索路径的几种方式
      a.1 设置 PYTHONPATH 环境变量
          PyCharm: Edit Configurations=>Environment Variables=>Add PYTHONPATH
          Linux Cmd:
                   vi ~/.profile => Add PYTHONPATH => 永久设置
                   export PYTHONPATH=/ => 临时设置
          Windows Cmd:
                   set PYTHONPATH=/ => 临时设置

      a.2 添加 .pth 文件
          Add path into => lib/python3.x/site-packages/tmp.path => 名称可任意

      a.3 通过 sys.path 设置路径
          代码中添加: sys.path.apend('/path...')

      a.4 如果使用PyCharm，可以直接设置搜索路径
          右键目录 => MarkDirectory as => Sources Root

   b. 如何永久设置
      a.1; a.2; a.4

   c. 如何临时设置
      a.3

3.
