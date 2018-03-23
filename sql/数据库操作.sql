#connect sys /* as sysdba;
sqlplus / as sysdba;

create user myuser identified by mypass;

grant sysdba to myuser;



ALTER SESSION set container = pdborcl; #更改container为pdborcl
ALTER pluggable database open;  #打开pdb
SELECT name, open_mode FROM v$pdbs; 查看pdborcl的权限情况
ALTER USER hr IDENTIFIED BY hr ACCOUNT UNLOCK;
Conn hr/hr@pdborcl

SHOW USER;

# create table as 
CREATE TABLE new_table
  AS (SELECT * FROM old_table)

#sqlplus登陆数据库
sqlplus metro/metro@172.20.10.178:1521/orclpdb
###sqlplus dw/Admin123@DWPDB (TNS)

#sqlloader 导入数据
sqlldr userid=metro/metro@172.20.10.178:1521/orclpdb control=load.ctl log=load.log
sqlldr userid=METRO/METRO@DWPDB control=load_test.ctl log=load.log

load.ctl中的语句
	APPEND 给表添加行
	INSERT 给空表添加行（如果表中有记录则退出）
	REPLACE 先清空表再加载数据
	RECLEN 用于两种情况，1sqlldr不能自动记录长度；2用户想看坏文件的完整记录。

#oracle导入dmp数据
create  or replace directory dir_dump as '/data/oradata/scora/';
Grant read,write on directory dir_dump to METRO;
create  directory dir_dump as '/export/home/oracle/Downloads/';
impdp metro/metro@172.20.10.178:1521/orclpdb directory = dir_dump dumpfile=BISAMPLE.DMP logfile=BISAMPLE.log
impdp METRO/METRO@dwpdb directory = dir_dump dumpfile=data201607.dmp logfile=201607.log

imp SZDTCLC/SZDTCLC@dwpdb  file=/data/oradata/scora/line5.dmp
imp SZDTCLC/SZDTCLC@dwpdb tables = td_common  file=/data/oradata/scora/line5.dmp log=/data/oradata/scora/impline1.log DATA_ONLY=y
fromuser = <from_user_name> touser= xpower
#
imp system/Admin123 FULL=y file=201606.dmp log=201606.log

#数据泵工具导出dmp的步骤：
1、创建DIRECTORY
create directory dir_dp as 'D:\oracle\dir_dp';
2、授权
Grant read,write on directory dir_dp to lttfm;
--查看目录及权限
SELECT privilege, directory_name, DIRECTORY_PATH FROM user_tab_privs t, all_directories d
 WHERE t.table_name(+) = d.directory_name ORDER BY 2, 1;
3、执行导出
expdp lttfm/lttfm@fgisdb schemas=lttfm directory=dir_dp dumpfile =expdp_test1.dmp logfile=expdp_test1.log;
expdp METRO/METRO@dwpdb directory=dir_dump dumpfile =expdp_tai_his.dmp logfile=expdp_test1.log tables = TAI_ENTRY_HIS; #导出一个表格

#导出View
SQL> create view cnt as select count(*) c1 from MACLEAN_PRESS1;
View created.
oracle@localhost:~$ expdp SZDTCLC/SZDTCLC@dwpdb dumpfile=dir_dump:view.dmp views_as_tables=SZDTCLC.view_shenzhen7911.new_tabl


#oracle delete user with all tables
drop user BISAMPLE cascade;

#查询OD数据
select end_line_id, end_station_id, sum(num) as ctn from tam_flux_od
where (SQUAD_DATE = 20140701) and(start_line_id = '01') and (START_STATION_ID='13')
group by END_LINE_ID, END_STATION_ID
order by ctn desc;

#查询随机20:08:40
SELECT SQUAD_DATE, START_LINE_ID,START_STATION_ID, end_line_id, end_station_id, NUM
   FROM (SELECT ROW_NUMBER() OVER(PARTITION BY SQUAD_DATE ORDER BY NUM DESC) rn,
                    tam_flux_od.*
                    FROM tam_flux_od)
                    WHERE rn < 10000;
                    
# 时间处理
SELECT to_date('Jan-1-1972','Mon-dd-yyyy','NLS_DATE_LANGUAGE=American') FROM dual;
select to_timestamp('2017 Jan 1 5:20:11:000AM','yyyy mon dd hh:mi:ss:ffPM','NLS_DATE_LANGUAGE=American') from dual;


# 每日客流查询
select  line_id,station_id , round(avg(in_num)) as in_station, round(avg(out_num)) as out_station from tam_flux_ana_day
where (SQUAD_DATE BETWEEN 20171020 and 20171020)
group by line_id,station_id
order by line_id;


# 时间段内日均客流查询
select line_id, station_id, round(avg(IN_STATION)) as in_station, round(avg(OUT_STATION)) as out_station from 
(select  line_id,station_id , sum(in_num) as in_station, sum(out_num) as out_station from tam_flux_ana_day
where (SQUAD_DATE BETWEEN 20170910 and 20171013)
group by line_id,station_id, SQUAD_DATE) 
group by line_id, station_id
order by line_id;

#某天时间段的客流
select line_id, station_id, sum(in_num) , sum(out_num), sum(change_num), sum(adv_num), sum(passenger_num) from tam_flux_ana_min 
where squad_date = 20140701 
and (time_section >='0800' and time_section <'0820')
and line_id != 68
group by line_id, station_id
order by line_id, station_id;


# 深圳地铁数据emp and imp
(1) 深圳1235号线导出
exp user/passwd@tns tables=td_common file=path log=path query = \" where trade_date >= to_date('2017-01-01','yyyy-mm-dd') \"
(2) 广州本地导入， 先建表
create table TD_COMMON
(
  CARDID        VARCHAR2(9) not null,
  CARDTYPE      VARCHAR2(2),
  TRADETYPE     VARCHAR2(2),
  TRADEADDRESS  VARCHAR2(10) default '0000000000',
  TRADEDATE     DATE not null,
  TERMINALID    VARCHAR2(9) not null,
  OPERATOR      VARCHAR2(6),
  TRADEMONEY    NUMBER(10) default 0,
  TRADEVALUE    NUMBER(10) default 0,
  CURRENTVALUE  NUMBER(10) default 0,
  FOREGIFT      NUMBER(10) default 0,
  CHARGE        NUMBER(10) default 0,
  CARDSN        NUMBER(10) default 0 not null,
  TERMINALSN    NUMBER(10) default 0,
  TERMINALSUM   NUMBER(10) default 0,
  TAC           VARCHAR2(8) default '00000000',
  RECEIVEDATE   DATE default sysdate not null,
  TRADESN       NUMBER(10) default 0,
  RECEIVESN     NUMBER(10) default 0,
  STARTDATE     DATE,
  STARTADDRESS  VARCHAR2(10),
  STARTTERMINAL VARCHAR2(9),
  DATARESOURCE  VARCHAR2(1) default '0' not null,
  TRADETYPEEX   VARCHAR2(4),
  DESTINATION   VARCHAR2(10),
  SAMID         VARCHAR2(20),
  SAMSN         NUMBER(10),
  APPTYPE       CHAR(1),
  CARDIDM       VARCHAR2(16),
  CHECKER       VARCHAR2(6),
  CHECKSTATUS   VARCHAR2(1),
  CHECKTIME     DATE,
  CHECKADDRESS  VARCHAR2(10),
  PAYTYPE       VARCHAR2(1)
)
#再导入数据
imp SZDTCLC/SZDTCLC@dwpdb tables = td_common1  file=/data/oradata/scora/line1.dmp log=/data/oradata/scora/impline1.log DATA_ONLY=y buffer=536870912
TABLES=(emp:p1,emp:p3)
imp SZDTCLC/SZDTCLC@dwpdb TABLES=\(td_common:P201701,td_common:P201702,td_common:P201703,td_common:P201704,td_common:P201705\) file=/data/oradata/scora/line1.dmp log=/data/oradata/scora/impline1.log DATA_ONLY=y buffer=536870912

create tablespace AFC_DATA datafile '/data/oradata/scora/AFC_DATA.dbf' size 1024m AUTOEXTEND ON NEXT 64K MAXSIZE  UNLIMITED,
'/data/oradata/scora/AFC_DATA2.dbf' size 1024m AUTOEXTEND ON NEXT 64K MAXSIZE UNLIMITED  EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO;

alter tablespace AFC_DATA add datafile '/data/oradata/scora/AFC_DATA4.dbf' size 1024m AUTOEXTEND ON NEXT 64K MAXSIZE  UNLIMITED;


CREATE USER SZDTCLC IDENTIFIED BY SZDTCLC
DEFAULT TABLESPACE AFC_DATA
TEMPORARY TABLESPACE temp;