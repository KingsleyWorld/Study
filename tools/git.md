
1. Initials

    $ git config --global user.name "Kingsley Jiang"
    $ git config --global user.email kingsley_jiang@126.com
	
	
2. Submodule

	$ git clone --recurse-submodules <main_project_url>  # 获取主项目和所有子项目源码
	$ git submodule update --remote --merge

	$ git submodule add <submodule_url>  # 添加子项目
	$ git submodule init  # 初始化本地.gitmodules文件
	$ git submodule update  # 同步远端submodule源码