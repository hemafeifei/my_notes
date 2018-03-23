#�������ODBC���BI_SERVER����Դ��Oracle BI Server�Ķ˿ں�Ϊhttp://172.20.10.178:9500/em/�¡���BIʵ���¿�����BI Server�Ķ˿ڣ�9514
#�ϴ�����rpd��BI SERVER,ע�������Ķ˿ںš�
datamodel.cmd uploadrpd -I F:\Oracle\Middleware\Oracle_Home\bi\bifoundation\server\BISAMPLE.rpd -W Admin123 -U weblogic -P Admin123 -SI ssi -S 172.20.10.178 -N 9502
datamodel.cmd downloadrpd -O liverpd.rpd -W Admin123 -U weblogic -P Admin123 -SI ssi -S 172.20.10.178 -N 9502
uploadrpd -I F:\software\Oracle_BI\VM_SampleAppv607\liverpd.rpd -W Admin123 -U weblogic -P Admin123 -SI ssi -S 172.20.10.151 -N 7780

#JDBC����
(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = 172.20.10.178)(PORT = 1521))(CONNECT_DATA =(SERVER = DEDICATED)(SERVICE_NAME = pdborcl)))

CREATE view View_tam_flux_ana_day as
select squad_date, line_id, station_id, card_main_code, card_sub_code, sum(in_num) as in_num, sum(out_num) as out_num
from tam_flux_analysis
group by SQUAD_DATE, LINE_ID, STATION_ID, CARD_MAIN_CODE, CARD_SUB_CODE
with read only;

# ����������
STARTDATE(YESTERDAY-30)
ENDDATE (YESTERDAY)
LASTYEAR (LastYear)
TODAY

#BIEE��������
SELECT "DIM01 DATE"."Date_en_desc" FROM "Metro_Volume"
where  ("DIM01 DATE"."Date_en_desc" >'@{begin}' and
"DIM01 DATE"."Date_en_desc"<left(CAST(CAST('@{begin}{2017-09-02}' AS DATE)+30 AS VARCHAR(40)),10) ) or  "DIM01 DATE"."Date_en_desc"='@{begin}'
order by "DIM01 DATE"."Date_en_desc"

SELECT '@{begin}{2017-09-02}' FROM "Metro_Volume" where "Date_en_desc" > '2014-07-01' order by  "Date_en_desc"

#�������ڱ�ʾ������ֵ
SELECT "DIM01 DATE"."Date_en_desc" FROM "Metro_Volume" where "Date_en_desc" > '2014-07-01' order by  "Date_en_desc"

#�ۺ�
AGGREGATE("Fact01 FLOW"."��վ����" AT  "DIM03 CARD"."H2 Card"."��Ʊ��")

#����ַ�
CONCAT(CONCAT("DIM06_OD_STATION"."���վ��", '----'), "DIM06_OD_STATION"."�յ�վ��")

# ת������
cast(replace('@{begin_time}{00:00}',':',''), as int)

#��ʾ�������������
select "DIM02 TIME"."15����" FROM "Metro_Volume"  where cast( "DIM02 TIME"."15����" as int) >= cast(replace('@{begin_time}{0:00}',':','') as int) and
cast( "DIM02 TIME"."15����" as int) < cast(replace('@{end_time}{24:00}',':','') as int)

select "Fact01 FLOW"."TIME_SECTION" FROM "Metro_Volume"  where cast( "Fact01 FLOW"."TIME_SECTION" as int) >= cast(replace('@{time_begin}{0:00}',':','') as int) and
cast( "Fact01 FLOW"."TIME_SECTION" as int) < cast(replace('@{time_end}{24:00}',':','') as int)

select "Fact01 FLOW"."��վ����" FROM "Metro_Volume"  where cast( "DIM01 DATE"."Date_id" as int) >= cast(replace('@{date_period1_start}','-','') as int) and
cast( "DIM01 DATE"."Date_id" as int) <= cast(replace('@{date_period1_end}','-','') as int)

#dblink �������
create table tam_flux_ana_mth as
select * from tam_flux_ana_mth@BIEE_DW_ORE_DBLINK;

# �ϴ�����Service Instance
listBIServiceInstances('/export/home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/bi/')

getBIServiceInstance('/export/home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/bi/', 'ssi')

exportServiceInstance('/export/home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/bi/', 'ssi', '/u01/workDir', '/u01/exportDir', applicationName=None,
applicationDesc=None, applicationVersion=None, includeCatalogRuntimeInfo=false,
includeCredentials=None)

exportServiceInstance('/export/home/oracle/Oracle/Middleware/Oracle_Home/user_projects/domains/bi/', 'ssi', '/u01/workDir', '/u01/exportDir', applicationName=None,
applicationDesc=None, applicationVersion=None, includeCatalogRuntimeInfo=true,
includeCredentials='BISystemUser')  #includeCatalogRuntimeInfo����һЩ�ļ�����Ϣ

#
date_period1_start

cast(replace('@{date_period1_start}{2014-07-01}','-','') as int)
cast(replace('@{date_period1_end}{2014-07-08}','-','') as int)

select cast( "DIM01 DATE"."Date_id" as int) >= cast(replace('@{date_period1_start}','-','') as int) and
cast( "DIM01 DATE"."Date_id" as int) <= cast(replace('@{date_period1_end}','-','') as int)

cast(replace('@{date_period1_start}{2014-07-01}','-','') as int)

cast(replace('@{date_period2_start}','-','') as int)
cast(replace('@{date_period2_end}','-','') as int)

FILTER((case '@{index_type}{��վ��}' when '��վ��' then "Fact01 FLOW"."��վ����"  when '��վ��' then "Fact01 FLOW"."��վ����" when '��ɢ��' then "Fact01 FLOW"."��ɢ��" when'������' then "Fact01 FLOW"."������" else "Fact01 FLOW"."������" end)
USING ("DIM01 DATE"."Date_id" BETWEEN cast(replace('@{date_period1_start}{2014-07-01}','-','') as int) AND cast(replace('@{date_period1_end}{2014-07-10}','-','') as int)))/(TIMESTAMPDIFF(SQL_TSI_DAY,TO_DATETIME('@{date_period1_start}{2014-07-01}', 'yyyy-mm-dd'),TO_DATETIME('@{date_period1_end}{2014-07-10}', 'yyyy-mm-dd'))+1)*-1
#Ʊ���Ա�

#OD�Ա�
# time_section �����ݿ�����ʱ����
select "Fact04 OD"."TIME_SECTION" FROM "Metro_Volume"  where cast( "Fact04 OD"."TIME_SECTION" as int) >= cast(replace('@{time_begin}{0:00}',':','') as int) and
cast( "Fact04 OD"."TIME_SECTION" as int) < cast(replace('@{time_end}{24:00}',':','') as int)

# ����������������Сʱ
TIMESTAMPDIFF(interval, first_date, second_date)
interval can be SQL_TSI_SECOND, SQL_TSI_MINUTE, SQL_TSI_HOUR, SQL_TSI_DAY, SQL_TSI_WEEK, SQL_TSI_MONTH, SQL_TSI_QUARTER, SQL_TSI_YEAR
example: TimestampDiff(SQL_TSI_MONTH, TIMESTAMP'1999-07-31 00:00:00', TIMESTAMP'1999-12-31 00:00:00') will renturn 5

to_datetime(cast("Fact02 ����������(��)"."��Ӫ����" as char),'yyyymm')
�����¶ȵ�������
TIMESTAMPDIFF(SQL_TSI_DAY, to_datetime(cast("Fact02 ����������(��)"."��Ӫ����" as char),'yyyymm'), to_datetime(cast((cast("Fact02 ����������(��)"."��Ӫ����" as int) +1) as char),'yyyymm'))

# case if���
CASE WHEN "Sales Facts"."Amount Sold" > 600000  THEN 'Big'
     WHEN "Sales Facts"."Amount Sold" > 300000  THEN 'Middle'
     ELSE 'Small' END

## case switch
CASE  Promotions."Promo Subcategory"
WHEN  'TV commercial'          THEN 'Commercial'
WHEN  'TV program sponsorship' THEN 'Sponsor'
ELSE  'Default'
END

����վ�����������
#��ʼ��
SELECT "DIM01 DATE"."Year_id" FROM "Metro_Volume"  order by   "DIM01 DATE"."Year_id"
SELECT "DIM01 DATE"."Year_id" FROM "Metro_Volume" where cast( "DIM01 DATE"."Year_id" as int)
<= cast('@{END_YEAR}' as int) and cast( "DIM01 DATE"."Year_id" as int)  >= cast('@{END_YEAR}' as int) -10  order by "DIM01 DATE"."Year_id"

SELECT "DIM01 DATE"."Year_id" FROM "Metro_Volume" where cast( "DIM01 DATE"."Year_id" as int)  >= 2011  order by "DIM01 DATE"."Year_id"
SELECT "DIM01 DATE"."Year_id" FROM "Metro_Volume" where  cast("DIM01 DATE"."Year_id" as int)=cast('@STARTYEAR{2005}' as int)

# ����15���ӡ�30���Ӿۺϱ���
select trunc(dt,'hh24') + (trunc(to_char(dt,'mi')/:n)*:n)/24/60, avg(value)
from t
group by trunc(dt,'hh24') + (trunc(to_char(dt,'mi')/:n)*:n)/24/60;

# ����
TO_DATETIME(("DIM01 DATE"."����" || ' ' ||"Fact01 FLOW"."TIME_SECTION"), 'yyyy-mm-dd HH24MI')

# ��ʱ��������
(cast(SUBSTRING("Fact01 FLOW"."TIME_SECTION" FROM 3) as int) / 30)*30
# ���β��Ϊ��
case (cast(SUBSTRING("Fact01 FLOW"."TIME_SECTION" FROM 3) as int) / @{frequency}{30}) when  0 THEN
LEFT("Fact01 FLOW"."TIME_SECTION", 2)||':'|| '00'
else
LEFT("Fact01 FLOW"."TIME_SECTION", 2)||':'||cast((cast(SUBSTRING("Fact01 FLOW"."TIME_SECTION" FROM 3) as int) / @{frequency}{30})*@{frequency}{30} as char)
end
# ָ����������վ���ʱ����
�Ǳ�������
cast("DIM01 DATE"."����" as date)
����

����-ָ��
(case '@{indicator}{��վ��}' when '��վ��' then "Fact01 FLOW_DAY"."��վ��" when '��վ��' then "Fact01 FLOW_DAY"."��վ��" when '������' then "Fact01 FLOW_DAY"."������" when '��ɢ��' then "Fact01 FLOW_DAY"."��ɢ��" else "Fact01 FLOW_DAY"."������" end)

#ָ������ָ��ʱ��ȫ��������ѯ
select "DIM02 TIME"."15����" FROM "Metro_Volume"  where cast( "DIM02 TIME"."15����" as int) >= cast(replace('@{begin_time}{0:00}',':','') as int) and cast( "DIM02 TIME"."15����" as int) < cast(replace('@{end_time}{24:00}',':','') as int)

# ָ������ָ��ʱ�ζ������
# ������
case "DIM05 SECTION_SEQ"."Direction_flag" when '0' then '����' else '����' end
ʹ�ñ��� begin_time, frequency, load_rate_down, load_rate_up
# time_section
(1) ��ʼʱ��timestamp
to_datetime("DIM01 DATE"."����" || ' ' || "DIM02 TIME"."15����" , 'yyyy-mm-dd HH24MI')
(2) ��ֹʱ��timestamp
TIMESTAMPADD(SQL_TSI_MINUTE, @{frequency}{30}, to_datetime("DIM01 DATE"."����" || ' ' || "DIM02 TIME"."15����" , 'yyyy-mm-dd HH24MI'))
(3) ��15������ʹ��sql���ɸѡ
select "DIM02 TIME"."15����" FROM "Metro_Volume"
where
to_datetime("DIM01 DATE"."����" || ' ' || "DIM02 TIME"."15����" , 'yyyy-mm-dd HH24MI') >= to_datetime("DIM01 DATE"."����" || ' ' || '@{begin_time}{0800}' , 'yyyy-mm-dd HH24MI')
and
to_datetime("DIM01 DATE"."����" || ' ' || "DIM02 TIME"."15����" , 'yyyy-mm-dd HH24MI') < TIMESTAMPADD(SQL_TSI_MINUTE, @{frequency}{30}, to_datetime("DIM01 DATE"."����" || ' ' || '@{begin_time}{0800}' , 'yyyy-mm-dd HH24MI'))


# ������15����ɸѡ (�÷������ã���)
select "DIM02 TIME"."15����" FROM "Metro_Volume"
where  (CAST ("DIM02 TIME"."15����" AS int ))
between
(cast('@{begin_time}{0800}' as int))
and
(case when (cast(right('@{begin_time}{0800}',2) AS int)+@{frequency}{30})>59 then (cast('@{begin_time}{0800}' as int)+@{frequency}{30})-60+100 else cast('@{begin_time}{0800}' as int)+@{frequency}{30} end -1)

# ����
select "DIM02 TIME"."15����" FROM "Metro_Volume"
where (CAST ("DIM02 TIME"."15����" AS int ))
between
(cast(replace('@{start_time}{08:45}',':','') AS int))
and
((case when (cast(right(replace('@{start_time}{08:45}',':',''),2) AS int)+@{time_dw}{30})>59 then (cast(replace('@{start_time}{08:45}',':','') AS int)+@{time_dw}{30})-60+100 else cast(replace('@{start_time}{08:45}',':','') AS int)+@{time_dw}{30} end)-1)

# ָ�����ڷ���������������ʱ��
case @{frequency}{30} when 30 then "DIM02 TIME"."��Сʱ"
when 15 then "DIM02 TIME"."15����"
else "DIM02 TIME"."Сʱ"
end
# rank ����
rank("Fact03 SECTION"."�������" by "DIM05 SECTION_SEQ"."START_LINE_DESC",("DIM05 SECTION_SEQ"."Direction_flag"))

# ȫ����ʱ��������
# ����ʾ
cast("DIM01 DATE"."����" as date)
"DIM05 SECTION_SEQ"."START_LINE_DESC"
case "DIM05 SECTION_SEQ"."Direction_flag" when '0' then '����' else '����' end
"DIM05 SECTION_SEQ"."DMBS"
# ʱ��������ϸ����
(case '@{time_level}{Сʱ}' when 'Сʱ' then "DIM02 TIME"."Hour_en_desc" when '15����' then "DIM02 TIME"."Time_section_en_desc"   else "DIM02 TIME"."Half_en_desc" end)
# ʱ���������
(case '@{time_level}{Сʱ}' when 'Сʱ' then "DIM02 TIME"."Сʱ" when '15����' then "DIM02 TIME"."15����"   else "DIM02 TIME"."��Сʱ" end)


select "DIM02 TIME"."15����" FROM "Metro_Volume" where  (CAST ("DIM02 TIME"."15����" AS int )) between (cast('@{begin_time}{0800}' as int)) and (case when (cast(right('@{begin_time}{0800}',2) AS int)+@{time_level}{30})>59 then (cast('@{begin_time}{0800}' as int)+@{time_level}{30})-60+100 else cast('@{begin_time}{0800}' as int)+@{time_level}{30} end -1)
select "DIM02 TIME"."15����" FROM "Metro_Volume" where  (CAST ("DIM02 TIME"."15����" AS int )) between (cast(replace('@{start_time}{08:45}',':','') AS int)) and ((case when (cast(right(replace('@{start_time}{08:45}',':',''),2) AS int)+@{time_dw}{30})>59 then (cast(replace('@{start_time}{08:45}',':','') AS int)+@{time_dw}{30})-60+100 else cast(replace('@{start_time}{08:45}',':','') AS int)+@{time_dw}{30} end)-1)

CASE Workday_flag WHEN '0' THEN ((case when Nw_busy_flag= '0' then '�Ǹ߷�' when Nw_busy_flag>'0' and cast(15���� as int)>1200 then '��߷�' else '��߷�' end)) WHEN '1' THEN ( (case when Wd_busy_flag= '0' then '�Ǹ߷�' when Wd_busy_flag>'0' and cast(15���� as int)>1200 then '��߷�' else '��߷�' end)) ELSE ((case when Hd_busy_flag= '0' then '�Ǹ߷�' when Hd_busy_flag>'0' and cast(15���� as int)>1200 then '��߷�' else '��߷�' end)) END ���� ��߷�,��߷�
��	CASE Workday_flag WHEN '0' THEN ((case when Nw_busy_flag= '0' then '�Ǹ߷�' when Nw_busy_flag>'0' and cast(15���� as int)>1200 then '��߷�' else '��߷�' end)) WHEN '1' THEN ( (case when Wd_busy_flag= '0' then '�Ǹ߷�' when Wd_busy_flag>'0' and cast(15���� as int)>1200 then '��߷�' else '��߷�' end)) ELSE ((case when Hd_busy_flag= '0' then '�Ǹ߷�' when Hd_busy_flag>'0' and cast(15���� as int)>1200 then '��߷�' else '��߷�' end)) END ���� ��߷�,��߷�

CASE "DIM01 DATE"."Workday_flag"
WHEN '0' THEN ((case when "DIM02 TIME"."Nw_busy_flag"= '0' then '�Ǹ߷�' when "DIM02 TIME"."Nw_busy_flag">'0' and cast("DIM02 TIME"."15����" as int)>1200 then '��߷�' else '��߷�' end))
WHEN '1' THEN ( (case when "DIM02 TIME"."Wd_busy_flag"= '0' then '�Ǹ߷�' when "DIM02 TIME"."Wd_busy_flag">'0' and cast("DIM02 TIME"."15����" as int)>1200 then '��߷�' else '��߷�' end))
ELSE ((case when "DIM02 TIME"."Hd_busy_flag"= '0' then '�Ǹ߷�' when "DIM02 TIME"."Hd_busy_flag">'0' and cast("DIM02 TIME"."15����" as int)>1200 then '��߷�' else '��߷�' end)) END


filter("Fact03 SECTION"."�������" using  (cast("DIM01 DATE"."����" as date) IN (@{tar_daterange}{date '2017-09-02'})))
# ����
filter("Fact03 SECTION"."�������" using  (cast("DIM01 DATE"."����" as date) BETWEEN CAST(left('@{tar_daterange}{2017-09-02,2017-09-05}',10) AS DATE) and CAST(RIGHT('@{tar_daterange}{2017-09-02,2017-09-05}',10) AS DATE)))
TIMESTAMPDIFF(SQL_TSI_DAY, CAST(left('@{tar_daterange}',10) AS DATE), CAST(RIGHT('@{tar_daterange}',10) AS DATE))
filter("Fact03 SECTION"."�������" using  (cast("DIM00 ����"."����" as date) BETWEEN CAST(left('@{com_daterange}',10) AS DATE) and CAST(RIGHT('@{com_daterange}',10) AS DATE)))

select "DIM02 TIME"."15����" FROM "Metro_Volume"
where  (CAST ("DIM02 TIME"."15����" AS int ))
between
(cast('@{begin_time}{0800}' as int))
and
(cast('@{end_time}{1000}' as int) -1)
