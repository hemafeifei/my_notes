#控制面板ODBC添加BI_SERVER数据源。Oracle BI Server的端口号为http://172.20.10.178:9500/em/下。。BI实例下看到的BI Server的端口，9514
#上传离线rpd至BI SERVER,注意最后面的端口号。
datamodel.cmd uploadrpd -I F:\Oracle\Middleware\Oracle_Home\bi\bifoundation\server\BISAMPLE.rpd -W Admin123 -U weblogic -P Admin123 -SI ssi -S 172.20.10.178 -N 9502
datamodel.cmd downloadrpd -O liverpd.rpd -W Admin123 -U weblogic -P Admin123 -SI ssi -S 172.20.10.178 -N 9502
uploadrpd -I F:\software\Oracle_BI\VM_SampleAppv607\liverpd.rpd -W Admin123 -U weblogic -P Admin123 -SI ssi -S 172.20.10.151 -N 7780

#JDBC的链
(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.20.10.178)(PORT = 1521))(CONNECT_DATA =(SERVER = DEDICATED)(SERVICE_NAME = pdborcl)))

CREATE view View_tam_flux_ana_day as
select squad_date, line_id, station_id, card_main_code, card_sub_code, sum(in_num) as in_num, sum(out_num) as out_num
from tam_flux_analysis
group by SQUAD_DATE, LINE_ID, STATION_ID, CARD_MAIN_CODE, CARD_SUB_CODE
with read only;

# 服务器变量
STARTDATE(YESTERDAY-30)
ENDDATE (YESTERDAY)
LASTYEAR (LastYear)
TODAY

#BIEE结束日期
SELECT "DIM01 DATE"."Date_en_desc" FROM "Metro_Volume"
where  ("DIM01 DATE"."Date_en_desc" >'@{begin}' and
"DIM01 DATE"."Date_en_desc"<left(CAST(CAST('@{begin}{2017-09-02}' AS DATE)+30 AS VARCHAR(40)),10) ) or  "DIM01 DATE"."Date_en_desc"='@{begin}'
order by "DIM01 DATE"."Date_en_desc"

SELECT '@{begin}{2017-09-02}' FROM "Metro_Volume" where "Date_en_desc" > '2014-07-01' order by  "Date_en_desc"

#设置日期表示变量初值
SELECT "DIM01 DATE"."Date_en_desc" FROM "Metro_Volume" where "Date_en_desc" > '2014-07-01' order by  "Date_en_desc"

#聚合
AGGREGATE("Fact01 FLOW"."出站客流" AT  "DIM03 CARD"."H2 Card"."主票卡")

#组合字符
CONCAT(CONCAT("DIM06_OD_STATION"."起点站名", '----'), "DIM06_OD_STATION"."终点站名")

# 转换类型
cast(replace('@{begin_time}{00:00}',':',''), as int)

#表示变量引入过滤器
select "DIM02 TIME"."15分钟" FROM "Metro_Volume"  where cast( "DIM02 TIME"."15分钟" as int) >= cast(replace('@{begin_time}{0:00}',':','') as int) and
cast( "DIM02 TIME"."15分钟" as int) < cast(replace('@{end_time}{24:00}',':','') as int)

select "Fact01 FLOW"."TIME_SECTION" FROM "Metro_Volume"  where cast( "Fact01 FLOW"."TIME_SECTION" as int) >= cast(replace('@{time_begin}{0:00}',':','') as int) and
cast( "Fact01 FLOW"."TIME_SECTION" as int) < cast(replace('@{time_end}{24:00}',':','') as int)

select "Fact01 FLOW"."进站客流" FROM "Metro_Volume"  where cast( "DIM01 DATE"."Date_id" as int) >= cast(replace('@{date_period1_start}','-','') as int) and
cast( "DIM01 DATE"."Date_id" as int) <= cast(replace('@{date_period1_end}','-','') as int)

#dblink 创建表格
create table tam_flux_ana_mth as
select * from tam_flux_ana_mth@BIEE_DW_ORE_DBLINK;

# 上传下载Service Instance
listBIServiceInstances('/export/home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/bi/')

getBIServiceInstance('/export/home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/bi/', 'ssi')

exportServiceInstance('/export/home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/bi/', 'ssi', '/u01/workDir', '/u01/exportDir', applicationName=None,
applicationDesc=None, applicationVersion=None, includeCatalogRuntimeInfo=false,
includeCredentials=None)

exportServiceInstance('/export/home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/bi/', 'ssi', '/u01/workDir', '/u01/exportDir', applicationName=None,
applicationDesc=None, applicationVersion=None, includeCatalogRuntimeInfo=true,
includeCredentials='BISystemUser')  #includeCatalogRuntimeInfo包含一些文件夹信息

#
date_period1_start

cast(replace('@{date_period1_start}{2014-07-01}','-','') as int)
cast(replace('@{date_period1_end}{2014-07-08}','-','') as int)

select cast( "DIM01 DATE"."Date_id" as int) >= cast(replace('@{date_period1_start}','-','') as int) and
cast( "DIM01 DATE"."Date_id" as int) <= cast(replace('@{date_period1_end}','-','') as int)

cast(replace('@{date_period1_start}{2014-07-01}','-','') as int)

cast(replace('@{date_period2_start}','-','') as int)
cast(replace('@{date_period2_end}','-','') as int)

FILTER((case '@{index_type}{进站量}' when '进站量' then "Fact01 FLOW"."进站客流"  when '出站量' then "Fact01 FLOW"."出站客流" when '集散量' then "Fact01 FLOW"."集散量" when'换乘量' then "Fact01 FLOW"."换乘量" else "Fact01 FLOW"."客运量" end)
USING ("DIM01 DATE"."Date_id" BETWEEN cast(replace('@{date_period1_start}{2014-07-01}','-','') as int) AND cast(replace('@{date_period1_end}{2014-07-10}','-','') as int)))/(TIMESTAMPDIFF(SQL_TSI_DAY,TO_DATETIME('@{date_period1_start}{2014-07-01}', 'yyyy-mm-dd'),TO_DATETIME('@{date_period1_end}{2014-07-10}', 'yyyy-mm-dd'))+1)*-1
#票卡对比

#OD对比
# time_section 因数据库慢暂时不放
select "Fact04 OD"."TIME_SECTION" FROM "Metro_Volume"  where cast( "Fact04 OD"."TIME_SECTION" as int) >= cast(replace('@{time_begin}{0:00}',':','') as int) and
cast( "Fact04 OD"."TIME_SECTION" as int) < cast(replace('@{time_end}{24:00}',':','') as int)

# 返回月数、天数、小时
TIMESTAMPDIFF(interval, first_date, second_date)
interval can be SQL_TSI_SECOND, SQL_TSI_MINUTE, SQL_TSI_HOUR, SQL_TSI_DAY, SQL_TSI_WEEK, SQL_TSI_MONTH, SQL_TSI_QUARTER, SQL_TSI_YEAR
example: TimestampDiff(SQL_TSI_MONTH, TIMESTAMP'1999-07-31 00:00:00', TIMESTAMP'1999-12-31 00:00:00') will renturn 5

to_datetime(cast("Fact02 客运量分析(月)"."运营日期" as char),'yyyymm')
返回月度的天数：
TIMESTAMPDIFF(SQL_TSI_DAY, to_datetime(cast("Fact02 客运量分析(月)"."运营日期" as char),'yyyymm'), to_datetime(cast((cast("Fact02 客运量分析(月)"."运营日期" as int) +1) as char),'yyyymm'))

# case if语句
CASE WHEN "Sales Facts"."Amount Sold" > 600000  THEN 'Big'
     WHEN "Sales Facts"."Amount Sold" > 300000  THEN 'Middle'
     ELSE 'Small' END

## case switch
CASE  Promotions."Promo Subcategory"
WHEN  'TV commercial'          THEN 'Commercial'
WHEN  'TV program sponsorship' THEN 'Sponsor'
ELSE  'Default'
END

年度日均客运量分析
#起始年
SELECT "DIM01 DATE"."Year_id" FROM "Metro_Volume"  order by   "DIM01 DATE"."Year_id"
SELECT "DIM01 DATE"."Year_id" FROM "Metro_Volume" where cast( "DIM01 DATE"."Year_id" as int)
<= cast('@{END_YEAR}' as int) and cast( "DIM01 DATE"."Year_id" as int)  >= cast('@{END_YEAR}' as int) -10  order by "DIM01 DATE"."Year_id"

SELECT "DIM01 DATE"."Year_id" FROM "Metro_Volume" where cast( "DIM01 DATE"."Year_id" as int)  >= 2011  order by "DIM01 DATE"."Year_id"
SELECT "DIM01 DATE"."Year_id" FROM "Metro_Volume" where  cast("DIM01 DATE"."Year_id" as int)=cast('@STARTYEAR{2005}' as int)

# 按照15分钟、30分钟聚合变形
select trunc(dt,'hh24') + (trunc(to_char(dt,'mi')/:n)*:n)/24/60, avg(value)
from t
group by trunc(dt,'hh24') + (trunc(to_char(dt,'mi')/:n)*:n)/24/60;

# 日期
TO_DATETIME(("DIM01 DATE"."日期" || ' ' ||"Fact01 FLOW"."TIME_SECTION"), 'yyyy-mm-dd HH24MI')

# 分时客流分析
(cast(SUBSTRING("Fact01 FLOW"."TIME_SECTION" FROM 3) as int) / 30)*30
# 解决尾数为零
case (cast(SUBSTRING("Fact01 FLOW"."TIME_SECTION" FROM 3) as int) / @{frequency}{30}) when  0 THEN
LEFT("Fact01 FLOW"."TIME_SECTION", 2)||':'|| '00'
else
LEFT("Fact01 FLOW"."TIME_SECTION", 2)||':'||cast((cast(SUBSTRING("Fact01 FLOW"."TIME_SECTION" FROM 3) as int) / @{frequency}{30})*@{frequency}{30} as char)
end
# 指定日期区间站点分时客流
仪表盘日期
cast("DIM01 DATE"."日期" as date)
介于

分析-指标
(case '@{indicator}{进站量}' when '进站量' then "Fact01 FLOW_DAY"."进站量" when '出站量' then "Fact01 FLOW_DAY"."出站量" when '换乘量' then "Fact01 FLOW_DAY"."换乘量" when '集散量' then "Fact01 FLOW_DAY"."集散量" else "Fact01 FLOW_DAY"."客运量" end)

#指定日期指定时段全网客流查询
select "DIM02 TIME"."15分钟" FROM "Metro_Volume"  where cast( "DIM02 TIME"."15分钟" as int) >= cast(replace('@{begin_time}{0:00}',':','') as int) and cast( "DIM02 TIME"."15分钟" as int) < cast(replace('@{end_time}{24:00}',':','') as int)

# 指定日期指定时段断面客流
# 上下行
case "DIM05 SECTION_SEQ"."Direction_flag" when '0' then '上行' else '下行' end
使用变量 begin_time, frequency, load_rate_down, load_rate_up
# time_section
(1) 起始时间timestamp
to_datetime("DIM01 DATE"."日期" || ' ' || "DIM02 TIME"."15分钟" , 'yyyy-mm-dd HH24MI')
(2) 截止时间timestamp
TIMESTAMPADD(SQL_TSI_MINUTE, @{frequency}{30}, to_datetime("DIM01 DATE"."日期" || ' ' || "DIM02 TIME"."15分钟" , 'yyyy-mm-dd HH24MI'))
(3) 在15分钟里使用sql语句筛选
select "DIM02 TIME"."15分钟" FROM "Metro_Volume"
where
to_datetime("DIM01 DATE"."日期" || ' ' || "DIM02 TIME"."15分钟" , 'yyyy-mm-dd HH24MI') >= to_datetime("DIM01 DATE"."日期" || ' ' || '@{begin_time}{0800}' , 'yyyy-mm-dd HH24MI')
and
to_datetime("DIM01 DATE"."日期" || ' ' || "DIM02 TIME"."15分钟" , 'yyyy-mm-dd HH24MI') < TIMESTAMPADD(SQL_TSI_MINUTE, @{frequency}{30}, to_datetime("DIM01 DATE"."日期" || ' ' || '@{begin_time}{0800}' , 'yyyy-mm-dd HH24MI'))


# 尝试在15分钟筛选 (该方法更好！！)
select "DIM02 TIME"."15分钟" FROM "Metro_Volume"
where  (CAST ("DIM02 TIME"."15分钟" AS int ))
between
(cast('@{begin_time}{0800}' as int))
and
(case when (cast(right('@{begin_time}{0800}',2) AS int)+@{frequency}{30})>59 then (cast('@{begin_time}{0800}' as int)+@{frequency}{30})-60+100 else cast('@{begin_time}{0800}' as int)+@{frequency}{30} end -1)

# 伊曼
select "DIM02 TIME"."15分钟" FROM "Metro_Volume"
where (CAST ("DIM02 TIME"."15分钟" AS int ))
between
(cast(replace('@{start_time}{08:45}',':','') AS int))
and
((case when (cast(right(replace('@{start_time}{08:45}',':',''),2) AS int)+@{time_dw}{30})>59 then (cast(replace('@{start_time}{08:45}',':','') AS int)+@{time_dw}{30})-60+100 else cast(replace('@{start_time}{08:45}',':','') AS int)+@{time_dw}{30} end)-1)

# 指定日期分区段最大断面所在时段
case @{frequency}{30} when 30 then "DIM02 TIME"."半小时"
when 15 then "DIM02 TIME"."15分钟"
else "DIM02 TIME"."小时"
end
# rank 函数
rank("Fact03 SECTION"."断面客流" by "DIM05 SECTION_SEQ"."START_LINE_DESC",("DIM05 SECTION_SEQ"."Direction_flag"))

# 全网分时段最大断面
# 列提示
cast("DIM01 DATE"."日期" as date)
"DIM05 SECTION_SEQ"."START_LINE_DESC"
case "DIM05 SECTION_SEQ"."Direction_flag" when '0' then '上行' else '下行' end
"DIM05 SECTION_SEQ"."DMBS"
# 时间区间详细描述
(case '@{time_level}{小时}' when '小时' then "DIM02 TIME"."Hour_en_desc" when '15分钟' then "DIM02 TIME"."Time_section_en_desc"   else "DIM02 TIME"."Half_en_desc" end)
# 时间区间简述
(case '@{time_level}{小时}' when '小时' then "DIM02 TIME"."小时" when '15分钟' then "DIM02 TIME"."15分钟"   else "DIM02 TIME"."半小时" end)


select "DIM02 TIME"."15分钟" FROM "Metro_Volume" where  (CAST ("DIM02 TIME"."15分钟" AS int )) between (cast('@{begin_time}{0800}' as int)) and (case when (cast(right('@{begin_time}{0800}',2) AS int)+@{time_level}{30})>59 then (cast('@{begin_time}{0800}' as int)+@{time_level}{30})-60+100 else cast('@{begin_time}{0800}' as int)+@{time_level}{30} end -1)
select "DIM02 TIME"."15分钟" FROM "Metro_Volume" where  (CAST ("DIM02 TIME"."15分钟" AS int )) between (cast(replace('@{start_time}{08:45}',':','') AS int)) and ((case when (cast(right(replace('@{start_time}{08:45}',':',''),2) AS int)+@{time_dw}{30})>59 then (cast(replace('@{start_time}{08:45}',':','') AS int)+@{time_dw}{30})-60+100 else cast(replace('@{start_time}{08:45}',':','') AS int)+@{time_dw}{30} end)-1)

CASE Workday_flag WHEN '0' THEN ((case when Nw_busy_flag= '0' then '非高峰' when Nw_busy_flag>'0' and cast(15分钟 as int)>1200 then '晚高峰' else '早高峰' end)) WHEN '1' THEN ( (case when Wd_busy_flag= '0' then '非高峰' when Wd_busy_flag>'0' and cast(15分钟 as int)>1200 then '晚高峰' else '早高峰' end)) ELSE ((case when Hd_busy_flag= '0' then '非高峰' when Hd_busy_flag>'0' and cast(15分钟 as int)>1200 then '晚高峰' else '早高峰' end)) END 等于 早高峰,晚高峰
或	CASE Workday_flag WHEN '0' THEN ((case when Nw_busy_flag= '0' then '非高峰' when Nw_busy_flag>'0' and cast(15分钟 as int)>1200 then '晚高峰' else '早高峰' end)) WHEN '1' THEN ( (case when Wd_busy_flag= '0' then '非高峰' when Wd_busy_flag>'0' and cast(15分钟 as int)>1200 then '晚高峰' else '早高峰' end)) ELSE ((case when Hd_busy_flag= '0' then '非高峰' when Hd_busy_flag>'0' and cast(15分钟 as int)>1200 then '晚高峰' else '早高峰' end)) END 等于 早高峰,晚高峰

CASE "DIM01 DATE"."Workday_flag"
WHEN '0' THEN ((case when "DIM02 TIME"."Nw_busy_flag"= '0' then '非高峰' when "DIM02 TIME"."Nw_busy_flag">'0' and cast("DIM02 TIME"."15分钟" as int)>1200 then '晚高峰' else '早高峰' end))
WHEN '1' THEN ( (case when "DIM02 TIME"."Wd_busy_flag"= '0' then '非高峰' when "DIM02 TIME"."Wd_busy_flag">'0' and cast("DIM02 TIME"."15分钟" as int)>1200 then '晚高峰' else '早高峰' end))
ELSE ((case when "DIM02 TIME"."Hd_busy_flag"= '0' then '非高峰' when "DIM02 TIME"."Hd_busy_flag">'0' and cast("DIM02 TIME"."15分钟" as int)>1200 then '晚高峰' else '早高峰' end)) END


filter("Fact03 SECTION"."断面客流" using  (cast("DIM01 DATE"."日期" as date) IN (@{tar_daterange}{date '2017-09-02'})))
# 正解
filter("Fact03 SECTION"."断面客流" using  (cast("DIM01 DATE"."日期" as date) BETWEEN CAST(left('@{tar_daterange}{2017-09-02,2017-09-05}',10) AS DATE) and CAST(RIGHT('@{tar_daterange}{2017-09-02,2017-09-05}',10) AS DATE)))
TIMESTAMPDIFF(SQL_TSI_DAY, CAST(left('@{tar_daterange}',10) AS DATE), CAST(RIGHT('@{tar_daterange}',10) AS DATE))
filter("Fact03 SECTION"."断面客流" using  (cast("DIM00 日期"."日期" as date) BETWEEN CAST(left('@{com_daterange}',10) AS DATE) and CAST(RIGHT('@{com_daterange}',10) AS DATE)))

select "DIM02 TIME"."15分钟" FROM "Metro_Volume"
where  (CAST ("DIM02 TIME"."15分钟" AS int ))
between
(cast('@{begin_time}{0800}' as int))
and
(cast('@{end_time}{1000}' as int) -1)
