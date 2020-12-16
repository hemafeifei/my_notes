# 1 yum安装https://www.postgresql.org/download/linux/redhat/
yum install https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-oraclelinux10-10-1.noarch.rpm

yum install postgresql10

yum install postgresql10-server # install the server packages

yum install postgis2_10 # postgis mustbe installed

# 初始化db以及开机启动
/usr/pgsql-10/bin/postgresql10-setup initdb
systemctl enable postgresql-10
systemctl start postgresql-10

# 2 数据库账户http://www.jianshu.com/p/7e95fd0bc91a
su - postgres #
psql -U postgres # 登录pg数据库
ALTER USER postgres WITH PASSOWRD 'postgres123';

# 3 linux系统postgres账户(root权限下)
passwd -d poatgres #
passwd postgres # postgres123

# 4 配置
/var/lib/pgsql/10/data/�� postgressql.conf
修改#listen_addresses = 'localhost'  Ϊ  listen_addresses='*'

# 5 远程配置
/var/lib/pgsql/10/data/�� pg_hba.conf
# IPv4 local connections:
host    all             all             127.0.0.1/32            trust
host    all             all             10.90.2.181/32             trust

# 6 create db with postgis
create database mydb;
create extension postgis;


# tips
\l  # 查询所有database
\dt public.* # 查询所有tables
\d tablename # 查询table细节
\du # 查询所有用户
\dv # 查询所有views
\c dbname  #切换database
\s # 显示所有命令history
\s filename # 将查询历史保存为文件
\? # get help
\q # quit

***********************************************
http://www.postgres.cn/docs/9.3/functions.html
***********************************************
# DDL数据定义语言 CREATE ALTER DROP
修改表
（1）增加字段
ALTER TABLE products ADD COLUMN description text;
可以在字段上定义约束
ALTER TABLE products ADD COLUMN description text CHECK(description <> '');
(2) 删除字段
ALTER TABLE products DROP COLUMN description;
如果字段有相关约束：
ALTER TABLE products DROP COLUMN description CASCADE;
(3) 增加约束
ALTER TABLE products ADD CONSTRAINT some_name UNIQUE (product_no);
ALTER TABLE products ADD FOREIGN KEY (product_group_id) REFERENCES product_groups;
ALTER TABLE products ALTER COLUMN product_no SET NOT NULL;
(4) 删除约束
ALTER TABLE products ALTER COLUMN product_no DROP NOT NULL;
(5) 改变字段的缺省值
ALTER TABLE products ALTER COLUMN price SET DEFAULT 7.77; #设置缺省，只影响将来insert进来的数据
ALTER TABLE products ALTER COLUMN price DROP DEFAULT; #删除缺省值
(6) 修改字段的数据类型
ALTER TABLE products ALTER COLUMN price TYPE numeric(10,2);
(7) 重命名字段
ALTER TABLE products RENAME COLUMN product_no TP product_number;
(8) 重命名一个表
ALTER TABLE products RENAME TO items;

# DML数据查询语言 数据库增删改查
CREATE TABLE products (
    product_no integer,
    name text,
    price numeric
);
（1）插入数据
INSERT INTO products VALUES (1, 'cheese', 9.99);
也可以再插入语句中输入列字段的顺序
(2) 更新数据
UPDATE products SET price = 10 WHERE price = 5;
(3) 删除数据
DELETE FROM products WHERE price=10; # 需小心，容易删掉整个表！！

***********************************************************
http://www.postgresqltutorial.com/postgresql-copy-database/
***********************************************************
数据库管理
(1) 复制本地数据库
CREATE DATABASE targetdb
WITH TEMPLATE sourcedb;
(2) 从一个server复制到另一个
a) 导出数据库文件并复制到新服务器
pg_dump -U postgres -O sourcedb sourcedb_name.sql
b) 在新服务器上创建DB
CREATE DATABASE targetdb;
c) 恢复dump出的数据库文件
psql -U postgres -d targetdb -f sourcedb_name.sql
# 如果两个服务器之间的连接较快
pg_dump -C -h localhost -U postgres sourcedb_name | psql -h 10.90.2.52 -U postgres sourcedb_name (两地的dbname一样)
（3）查询表、数据库、索引、表空间大小
SELECT
    pg_size_pretty(pg_relation_size('tablename'));
    #pg_relation_size不包含索引，如果需要查询全表，pg_total_relation_size

SELECT
    pg_size_pretty(pg_database_size('spatial_db'));#查询一个db

SELECT
    pg_database.datname,
    pg_size_pretty(pg_database_size(pg_database.datname)) AS size
    FROM pg_database;#查询所有db

SELECT
    pg_size_pretty(
      pg_tablespace_size('pg_default')
    ); #查询表空间大小
