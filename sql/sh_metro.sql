sqlContext.sql(""" 
select line, count(fees) as ctn from sh_metro
group by line
order by ctn desc""").show()


df_cn = sqlContext.read.format('com.databricks.spark.csv').options(header='true', inferschema='true', charset = 'gbk').load('hdfs://hadoop1:9000/input/csv/*.csv')


sqlContext.sql(""" 
select station, count(fees) as ctn from sh_metro
where fees >0
group by station
order by ctn desc""").show()

./bin/spark-submit --master spark://172.20.10.71:7077 --executor-memory 1G /usr/spark2.1.1/examples/src/main/python/pi.py (error)
./bin/spark-submit --master yarn --executor-memory 1G /usr/spark2.1.1/examples/src/main/python/pi.py (error)

./bin/spark-submit --master spark://hadoop1:7077 --executor-memory 1G /home/wei/my_script_book.py
./bin/spark-submit --master yarn --executor-memory 1G /home/wei/my_script_book.py
./bin/spark-submit --master local[*] --executor-memory 1G /home/wei/my_script_book.py 
./bin/spark-submit  /home/wei/my_script_book.py 

./bin/spark-submit /home/wei/3_sparkSQL_csv.py
./bin/spark-submit --master spark://hadoop1:7077 --executor-memory 1G /home/wei/3_sparkSQL_csv.py


	
customSchema = StructType([
"balance_water_no" char(18) NOT NULL,
	"card_main_code" char(2) NOT NULL,
	"card_status_id" char(2) NOT NULL,
	"card_sub_code" char(2) NOT NULL,
	"device_id" char(4) NULL,
	"device_type_id" char(2) NULL,
	"in_time" "datetime" NULL,
	"line_id" char(2) NOT NULL,
	"sam_logical_id" char(16) NOT NULL,
	"sam_tr_seq" integer NOT NULL,
	
	"station_id" char(2) NOT NULL,
	"tk_balance" decimal(12,2) NOT NULL,
	"tk_logic_no" char(16) NOT NULL,
	"tk_phy_no" char(20) NOT NULL,
	"squad_date" integer NOT NULL,
	"time_section" char(4) NOT NULL,
	"id" numeric(16,0) NULL,
	"counter_time" char(4) NULL,
	"bus_times_counter" integer NULL,
	"metro_times_counter" integer NULL
	
	"union_times_counter" integer NULL,
	"tk_charge_cnt" integer NULL,
	"tk_deal_cnt" integer NULL,
	"tac" char(10) NULL,
	"paymode_id" char(2) NULL,
	"last_sam_logical_id" char(16) NULL,
	"last_deal_time" char(19) NULL,
	"tr_sort" char(2) NULL,
	"area_code" char(4) NULL,
	"area_tk_type" char(4) NULL,
	
	"overdraft" integer NULL,
	"cpu_tk" char(1) NULL,
	"expired_tk" char(1) NULL,
	"tct_valid_days" integer NULL,
	"tct_activate_time" "datetime" NULL,
	"limit_mode" char(3) NULL,
	"limit_entry_station" char(4) NULL,
	"limit_exit_station" char(4) NULL,
	"data_file_name" varchar(40) NULL,
	"file_name" varchar(40) NULL
])