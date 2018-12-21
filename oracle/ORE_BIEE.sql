#来源：https://docs.oracle.com/cd/E83411_01/OREAD/toc.htm # 1.5.1
（1）3.3Installing Oracle R Distribution on Oracle Solaris
在https://oss.oracle.com/ORD/下载2个文件：
ord-Rversion-sol10-x86-64-sunstudio12u3.tar.gz
ord-Rversion-supporting-sol10-x86-64-sunstudio12u3.tar.gz
解压第一个文件，运行install.sh安装程序；
tar -zxf ./ord-3.1.1-sol10-x86-64-sunstudio12u3.tar.gz
将第二个文件解压到$ORACLE_HOME/lib，并将该路径传入LD_LIBRARY_PATH如下
在环境变量文件中添加export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/u01/app/oracle/product/12.2.0.1/db_1/lib,并且source一下
执行ldd -r /usr/lib/64/R/lib/libR.so 测试是否OK
    ldd -r /usr/lib/sparcv9/R/lib/libR.so # 如果系统是solaris sparc

# 如果是sparc系统需要另外修改环境变量
export R_HOME=/usr/lib/sparcv9/R
export PATH=$R_HOME/bin:$PATH
export LD_LIBRARY_PATH=$R_HOME/lib:$LD_LIBRARY_PATH
执行 R看是否可以执行R(当前路径为$ORACLE_HOME/lib)
#如果要卸载，可以到第一个解压文件下面执行uninstall.sh

(2) 4.4安装Oracle R Enterprise Server
ORE安装的前提：$LD_LIBRARY_PATH 必须包括 $ORACLE_HOME/lib，$PATH 必须包括$ORACLE_HOME/bin
账户的需求： 属于dba group;可以读写$ORACLE_HOME/lib
在http://www.oracle.com/technetwork/database/options/advanced-analytics/r-enterprise/ore-downloads-1502823.html下载2个文件：
ore-server-platform-arch-1.4.1.zip
ore-supporting-platform-arch-1.4.1.zip
将2个文件解压到一个文件夹中：  unzip /export/home/oracle/Downloads/ore-suppris-x86-64-1.4.1.zip
运行./server.sh  # sparc平台上需要将命令中的unset去掉
过程中会要求表空间，需要在数据库创建：
/data/oradata/scora/
create tablespace R_TABLESPACE datafile '/data/oradata/scora/ore_R.dbf' size 10000M autoextend on next 500M maxsize unlimited;
create tablespace R_TABLESPACE datafile '/u01/app/oracle/oradata/ORCL12C/53032B6FDF7311C1E054000C29DFA6E4/datafile/ore_R.dbf' size 10000M autoextend on next 500M maxsize unlimited;
会要求可使用ORE的用户，需要在数据库创建：
CReate user ore identified by admin123 default tablespace r_tablespace temporary tablespace temp account unlock;
grant resource,connect,dba to ore;
成功以后路径下会生成几个log文件，可通过ls *.log 查看

（3）连接数据库
运行ORE
library(ORE)
ore.connect(user="ore", service_name="orclpdb", host="172.20.10.178", password="admin123",port=1521, all=TRUE)

#查看是否连接
ore.is.connected()
#断开连接
ore.disconnect()
#查看可用的数据库和表
ore.ls()
# ORE安装一些第三方packages
ORE CMD INSTALL R_package_name

call NQSRegisterScript("/export/home/oracle/Oracle/Middleware/Oracle_Home/bi/bifoundation/advanced_analytics/script_repository/obiee.Clustering.xml")

（4）安装客户端ORE
-1)安装ORD客户端
在https://oss.oracle.com/ORD/下载ORD-3.1.1-win.zip,解压并安装到C:\Program Files\R\
-2）安装Oracle Instant client
新建路径C:\Program Files\R\myoreclient
在http://www.oracle.com/technetwork/database/features/instant-client/下载2个文件
Instant Client Package - Basic：instantclient-basic-windows.x64-12.2.0.1.0.zip
Instant Client Package - SDK：instantclient-sdk-windows.x64-12.2.0.1.0.zip
解压到C:\Program Files\R\myoreclient
-3)下载Oracle R Enterprise packages: （client)
http://www.oracle.com/technetwork/database/options/advanced-analytics/r-enterprise/ore-downloads-1502823.html
ore-client-win-x86_64-1.4.1.zip
解压到C:/Program Files/R/myoreclient/client
在本机运行R3.1.1
install.packages("C:/Program Files/R/myoreclient/client/ORE_1.4.1.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/OREbase_1.4.1.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/OREcommon_1.4.1.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/OREdm_1.4.1.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/OREeda_1.4.1.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/OREembed_1.4.1.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/OREgraphics_1.4.1.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/OREmodels_1.4.1.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/OREpredict_1.4.1.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/OREstats_1.4.1.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/ORExml_1.4.1.zip", repos=NULL)
-4)下载Oracle R Enterprise packages: （supporting)
ore-supporting-win-x86_64-1.4.1.zip
加压到C:/Program Files/R/myoreclient/client/supporting
在本机运行R3.1.1
install.packages("C:/Program Files/R/myoreclient/client/supporting/ROracle_1.1-12.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/supporting/DBI_0.2-7.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/supporting/png_0.1-7.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/supporting/Cairo_1.5-5.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/supporting/arules_1.1-3.zip", repos=NULL)
install.packages("C:/Program Files/R/myoreclient/client/supporting/statmod_1.4.20.zip", repos=NULL)
-5）测试连接
library(ORE)
ore.connect(user="ore", service_name="orclpdb", host="172.20.10.178", password="admin123",port=1521, all=TRUE)
#成功连接即可
