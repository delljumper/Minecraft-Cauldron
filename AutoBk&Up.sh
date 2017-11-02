#！/bin/sh
# @Author: ke zhang
# @Date:   2017-11-02 09:37:39
# @Last Modified by:   ke zhang
# @Last Modified time: 2017-11-02 09:43:46
#Backup
cd ../
echo "进入MinecraftCauldron文件夹"
\cp -rf config Git
echo "复制目录config 完成!"
\cp -rf plugins Git
echo "复制目录plugins 完成!"
\cp -rf mods Git
echo "复制目录mods 完成!"
\cp -rf world Git
echo "复制目录world 完成!"
#数据存在根目录下，备份到backups目录下，所以先将数据拷过来
cd backups/
tar -zcvf world$(date +%Y%m%d%H%M).tar.gz ../world
echo "打包world 完成！存放在backups目录里"
#将数据所在文件夹world打包

#删除临时文件内容
find ./ -mtime +30 -name "*.tar.gz" -exec rm -rf {} \;
#删除改文件夹下超过30天的文件
#Upload
cd ../Git
git add *
git commit -p "Modfiy something..."
git push origin master
echo "上传完成!"
