
#1 install git
yum install git
git config --global user.name "kingsley jiang"
git config --global user.email "kingsley_jiang@126.com"

#2 install samba
yum install samba -y
# edit /etc/samba/smb.conf
#[kingsley]
#        comment = kingsley share     #共享描述
#        path = /home/kingsley        #共享目录
#        public = no                  #不允许guest用户访问
#        writable = yes               #允许在kingsley目录下写入
#        directory mask = 0775        #默认创建目录权限 rwxrwxr_x
#        create mask = 0775           #默认创建文件权限 rwxrwxr_x
#        valid users = kingsley,root  #允许访问该共享的用户
#        write list = kingsley,root   #可写入共享的用户列表
#        browseable = yes             #该指定共享目录可浏览
#        available = yes              #该指定共享资源可使用
#
# common:
# 	service smb reload
# 	service smb restart
# centos:
# 	systemctl restart smb.service 
#
# smbpasswd -a kingsley
# service smb start
# chkconfig --level 35 smb on


#3 install python
# install lib
#yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite sqlite-devel readline-devel tk tk-devel gdbm gdbm-devel db4-devel libpcap-devel lzma xz xz-devel libuuid-devel libffi-devel
yum install python3

#4 install cpulimit
yum install cpulimit

#5 install code build env
yum install cmake
yum install autoconf # to generate configure file, use ' aclocal & autoconf '
yum install automake
yum install libtool
yum install shtool

#6 install lighttpd
yum install lighttpd # install lighttpd1.4
# install lighttpd2.0
# yum install ragel
# yum install glib2-devel
# 

 
