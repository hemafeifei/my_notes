<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1506136576914" ID="ID_1505341970" MODIFIED="1506136716215" STYLE="bubble" TEXT="&#x65b0;&#x5efa;&#x601d;&#x7ef4;&#x5bfc;&#x56fe;">
<node CREATED="1506136609273" ID="ID_1404188539" MODIFIED="1506136716215" POSITION="right" STYLE="bubble" TEXT="Python">
<node CREATED="1506136616626" ID="ID_259892668" MODIFIED="1506136716215" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      pyodbc
    </p>
  </body>
</html></richcontent>
<node CREATED="1506136640203" ID="ID_1020478599" MODIFIED="1506136716215" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import pyodbc
    </p>
    <p>
      conn_odbc_dw = pyodbc.connect('DSN=dwpdb;UID=dw;PWD=Admin123')
    </p>
    <p>
      df = pd.read_sql('select * from stations', con=conn_odbc_dw)
    </p>
    <p>
      df.head()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1506136621622" ID="ID_1654962658" MODIFIED="1515837423289" STYLE="bubble" TEXT="cx_Oracle">
<node CREATED="1506136727422" ID="ID_1005163217" MODIFIED="1520587305274">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import cx_Oracle
    </p>
    <p>
      ora_conn_dw = cx_Oracle.connect(&quot;METRO&quot;, &quot;METRO&quot;, &quot;10.90.2.52/dwpdb&quot;,&#160; encoding = &quot;UTF-8&quot;)
    </p>
    <p>
      cursor = conn_ora.cursor()
    </p>
    <p>
      df = pd.read_sql('select * from test_station_location', con = ora_conn_dw)
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1506136863745" ID="ID_1530257233" MODIFIED="1516325504351" TEXT="linux centos7&#x53ef;&#x7528;, win10&#x53ef;&#x7528;&#xff0c;&#x53ef;&#x4ee5;&#x89e3;&#x51b3;pyodbc&#x4e0d;&#x80fd;&#x663e;&#x793a;&#x4e2d;&#x6587;&#x7684;&#x95ee;&#x9898;"/>
<node CREATED="1506146620970" ID="ID_88710361" MODIFIED="1506146626359" TEXT="&#x5b89;&#x88c5;&#x6d41;&#x7a0b;">
<node CREATED="1506146628298" ID="ID_1517327937" MODIFIED="1506146639276" TEXT="sudo yum install oracle-instantclient12.2-basic-12.2.0.1.0-1.x86_64.rpm">
<node CREATED="1506146681625" ID="ID_1342535141" MODIFIED="1506146688396" TEXT="&#x4e0b;&#x8f7d;RMP&#x5305;"/>
</node>
<node CREATED="1506146648963" ID="ID_984462007" MODIFIED="1506146650164" TEXT="export LD_LIBRARY_PATH=/usr/lib/oracle/12.2/client64/lib:$LD_LIBRARY_PATH">
<node CREATED="1506146691584" ID="ID_483477249" MODIFIED="1506146695718" TEXT="&#x73af;&#x5883;&#x53d8;&#x91cf;"/>
</node>
<node CREATED="1506146651671" ID="ID_1150499082" MODIFIED="1506146667451">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sudo sh -c &quot;echo /usr/lib/oracle/12.2/client64/lib &gt; /etc/ld.so.conf.d/oracle-instantclient.conf&quot;
    </p>
    <p>
      sudo ldconfig
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1520587361515" ID="ID_1116064750" MODIFIED="1520587485656">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # &#20889;&#20837;sql
    </p>
    <p>
      sql = &quot;insert into DM_HOLIDAY_RESULT values ('%s',%d)&quot; %(holiday_type, befor_5_day)
    </p>
    <p>
      cursor.execute(sql)
    </p>
    <p>
      cursor.execute(&quot;commit&quot;)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1506136612665" ID="ID_129353634" MODIFIED="1506136716215" POSITION="right" STYLE="bubble" TEXT="R">
<node CREATED="1506137148135" ID="ID_345853940" MODIFIED="1506137151968" TEXT="jdbc">
<node CREATED="1506137153610" ID="ID_1107576611" MODIFIED="1515837411191">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      library(rJava)
    </p>
    <p>
      library(RJDBC)
    </p>
    <p>
      drv &lt;-JDBC(&quot;oracle.jdbc.driver.OracleDriver&quot;, &quot;D:/Daten/R/ojdbc8.jar&quot;, identifier.quote=&quot;\&quot;&quot;)
    </p>
    <p>
      conn&lt;-dbConnect(drv,&quot;jdbc:oracle:thin:@10.90.2.52:1521/dwpdb&quot;,&quot;dw&quot;,&quot;Admin123&quot;)
    </p>
    <p>
      dbGetQuery(conn, &quot;select * from STATIONS&quot;)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1507793020727" ID="ID_432321718" MODIFIED="1507793030607" TEXT="jdbc_postgreSQL">
<node CREATED="1506137153610" ID="ID_1116008589" MODIFIED="1507793175538">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">library(rJava) </font>
    </p>
    <p>
      <font size="3">library(RJDBC) </font>
    </p>
    <p>
      <font size="3">drv_postgis &lt;-JDBC(&quot;org.postgresql.Driver&quot;, &quot;/srv/shiny-server/postgresql-42.1.4.jar&quot;, identifier.quote=&quot;\&quot;&quot;) </font>
    </p>
    <p>
      <font size="3">conn_postgis &lt;-dbConnect(drv_postgis, url=&quot;jdbc:postgresql://localhost:5432/mydb&quot;, user=&quot;postgres&quot;, password=&quot;postgres123&quot;) </font>
    </p>
    <p>
      <font size="4">district &lt;- dbGetQuery(conn_postgis, &quot;SELECT * FROM &#34892;&#25919;&#21306;WGS&quot;)</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1506147501935" ID="ID_689505350" MODIFIED="1506147506324" TEXT="ODBC"/>
</node>
</node>
</map>
