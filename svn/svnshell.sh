#!/bin/sh
##svn启动命令##
svnserve -d -r /data0/svndata/ --listen-host 182.92.105.47
##svn创建版本库的命令##
svnadmin create /data0/svndata/test

##svn导入版本库的命令##
svn import fenghaikuan svn://118.244.206.91/fenghaikuan -m '注释'
##svn导出版本库的命令##
svn co svn://118.244.206.91/
##添加svn##
svn st | awk '{if($1="?"){print $2}}' | xargs svn add 
