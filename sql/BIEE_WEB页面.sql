# 服务器pdb信息
10.90.2.52:1521/pdbpub
账号密码iccs_pub/iccs_pub

# 管理菜单的表
select * from PUB_MENU_TREE t


# 客流分析页面
http://10.90.2.52:7003/analytics/saw.dll?Portalpages&PortalPath=%2Fshared%2FMetro_volume%2F_portal%2F客流主题&page=总览
# 对比分析页面
http://10.90.2.52:7003/analytics/saw.dll?dashboard&PortalPath=%2Fshared%2FMetro_volume%2F_portal%2F客流对比分析
# 票卡主题页面
http://10.90.2.52:7003/analytics/saw.dll?dashboard&PortalPath=%2Fshared%2FMetro_volume%2F_portal%2F票卡主题
# 收益主题页面
http://10.90.2.52:7003/analytics/saw.dll?dashboard&PortalPath=%2Fshared%2FMetro_volume%2F_portal%2F收益主题


# 数仓大屏阿里ECS服务器域名
ip:120.79.176.55（公有）/172.18.231.214（私有）
使用tomcat6部署web应用
web: 120.79.176.55:8080/iccs/screen/20170904/pc/index.html?skin=1
测试页面：120.79.176.55:8080/examples/index.html
# 查看tomcat日志
1、先切换到：cd /root/Downloads/apache-tomcat-6.0.30/logs/
2、tail -200f catalina.out

sqlplus bdata/Ty297Qw^I@120.79.176.55:1521/bigdatademo
sqlplus bdata/Ty297Qw^I@localhost:1521/bigdatademo
