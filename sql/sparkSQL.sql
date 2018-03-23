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


	
