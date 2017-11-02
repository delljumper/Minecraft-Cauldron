#！/bin/sh
# @Author: ke zhang
# @Date:   2017-11-02 09:37:39
# @Last Modified by:   ke zhang
# @Last Modified time: 2017-11-02 09:43:46
cd /home/Ghost/MinecraftCauldron/
\cp -rf config Git
\cp -rf plugins Git
\cp -rf world Git
#数据存在data目录下，备份到backup目录下，所以先将数据拷过来
tar -zcvf /world$(date +%Y%m%d).tar.gz backups
#将数据所在文件夹bak打包

#删除临时文件内容
find ./ -mtime +30 -name "*.tar.gz" -exec rm -rf {} \;
#删除改文件夹下超过30天的文件
