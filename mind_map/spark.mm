<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1504182372791" ID="ID_1205741821" MODIFIED="1504239957867" STYLE="bubble" TEXT="&#x65b0;&#x5efa;&#x601d;&#x7ef4;&#x5bfc;&#x56fe;">
<node CREATED="1504239667737" ID="ID_1000834092" MODIFIED="1504239957867" POSITION="right" STYLE="bubble" TEXT="&#x73af;&#x5883;&#x53d8;&#x91cf;">
<node CREATED="1504239811429" ID="ID_17264968" MODIFIED="1504239957867" STYLE="bubble" TEXT="java">
<node CREATED="1504243760330" ID="ID_847598667" MODIFIED="1504243917151">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      export JAVA_HOME=/usr/java/jdk1.8.0_131
    </p>
    <p>
      export CLASS_PATH=$JAVA_HOME/lib
    </p>
    <p>
      export PATH=$PATH:$JAVA_HOME/bin:/usr/hadoop/bin:/usr/hadoop/sbin
    </p>
    <p>
      &#160;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1504239816045" ID="ID_513125366" MODIFIED="1504239957867" STYLE="bubble" TEXT="hadoop">
<node CREATED="1504244246303" ID="ID_319497004" MODIFIED="1504244434688">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#666666"><i># Hadoop Environment Variables</i>&#160; </font>
    </p>
    <p>
      <font color="#666666">#&#20063;&#21487;&#20197;&#22312;hadoop-env.sh&#20462;&#25913;&#23454;&#29616;</font>
    </p>
    <p>
      <font color="#666666">export HADOOP_HOME=/usr/local/hadoop </font>
    </p>
    <p>
      <font color="#666666">export HADOOP_INSTALL=$HADOOP_HOME </font>
    </p>
    <p>
      <font color="#666666">export HADOOP_MAPRED_HOME=$HADOOP_HOME </font>
    </p>
    <p>
      <font color="#666666">export HADOOP_COMMON_HOME=$HADOOP_HOME </font>
    </p>
    <p>
      <font color="#666666">export HADOOP_HDFS_HOME=$HADOOP_HOME </font>
    </p>
    <p>
      <font color="#666666">export YARN_HOME=$HADOOP_HOME </font>
    </p>
    <p>
      <font color="#666666">export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native </font>
    </p>
    <p>
      <font color="#666666">export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin </font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1504239819423" ID="ID_1619827780" MODIFIED="1504239957867" STYLE="bubble" TEXT="spark">
<node CREATED="1504243951891" ID="ID_1883709110" MODIFIED="1504243962134">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      export SPARK_HOME=/usr/spark2.1.1/
    </p>
    <p>
      export PATH=&quot;$SPARK_HOME/bin:$PATH&quot;
    </p>
    <p>
      export HADOOP_CONF_DIR=/usr/hadoop/etc/hadoop
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1504239828247" ID="ID_990898525" MODIFIED="1504239957867" STYLE="bubble" TEXT="scala">
<node CREATED="1504243983486" ID="ID_400399034" MODIFIED="1504243988876">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      export SCALA_HOME=/usr/share/scala
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1504183270890" ID="ID_1926938325" MODIFIED="1504239957867" POSITION="right" STYLE="bubble" TEXT="&#x7aef;&#x53e3;">
<node CREATED="1504183280267" ID="ID_590711671" MODIFIED="1504239957867" STYLE="bubble" TEXT="hadoop">
<node CREATED="1504183286080" ID="ID_703385026" MODIFIED="1504239957867" STYLE="bubble" TEXT="50070 namenode"/>
<node CREATED="1504183299908" ID="ID_1070247310" MODIFIED="1504239957867" STYLE="bubble" TEXT="8088 yarn"/>
</node>
<node CREATED="1504183306941" ID="ID_152585664" MODIFIED="1504239957867" STYLE="bubble" TEXT="spark">
<node CREATED="1504183310327" ID="ID_10367406" MODIFIED="1504239957867" STYLE="bubble" TEXT="8080 spark&#x96c6;&#x7fa4;"/>
<node CREATED="1504183330421" ID="ID_482412953" MODIFIED="1504239957867" STYLE="bubble" TEXT="4040 job&#x76d1;&#x63a7;&#xff0c;&#x53ea;&#x80fd;&#x5728;&#x6267;&#x884c;&#x4efb;&#x52a1;&#x65f6;&#x67e5;&#x770b;"/>
</node>
</node>
<node CREATED="1504182385022" ID="ID_1984531234" MODIFIED="1504239957867" POSITION="right" STYLE="bubble" TEXT="hadoop">
<node CREATED="1504182400361" ID="ID_965772577" MODIFIED="1504239957867" STYLE="bubble" TEXT="&#x6587;&#x4ef6;&#x7cfb;&#x7edf;">
<node CREATED="1504182413901" ID="ID_658744749" MODIFIED="1504239957867" STYLE="bubble" TEXT="HDFS">
<node CREATED="1504182420583" ID="ID_832988153" MODIFIED="1504239957868" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      core-site.xml&#20013;&#26377;&#37197;&#32622;,&#20363;&#22914;
    </p>
    <p>
      hdfs://hadoop1:9000
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1504182605411" ID="ID_1619641503" MODIFIED="1504239957868" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      hadoop fs -mkdir input(&#26377;&#21487;&#33021;&#24314;&#21040;/user/root&#19979;&#65289;
    </p>
  </body>
</html></richcontent>
<node CREATED="1504183422073" ID="ID_149572876" MODIFIED="1504239957868" STYLE="bubble" TEXT="&#x521b;&#x5efa;&#x6587;&#x4ef6;&#x5939;&#x9ed8;&#x8ba4;&#x4fdd;&#x6301;&#x5230;/user/&#x7528;&#x6237;&#x540d;(root)&#x4e0b;"/>
<node CREATED="1504239506208" ID="ID_1497579515" MODIFIED="1504239957868" STYLE="bubble" TEXT="&#x53ef;&#x4ee5;&#x76f4;&#x63a5;&#x5199;&#x5206;&#x5e03;&#x5f0f;hdfs dfs -mkdir hdfs:///input"/>
</node>
<node CREATED="1504182671887" ID="ID_925156405" MODIFIED="1504239957868" STYLE="bubble" TEXT="hadoop fs -ls"/>
<node CREATED="1504182679744" ID="ID_894702081" MODIFIED="1504239957868" STYLE="bubble" TEXT="hadoop fs -put /home/wei/*.txt  /user/root/input"/>
<node CREATED="1504183176834" ID="ID_746066644" MODIFIED="1504239957868" STYLE="bubble" TEXT="hadoop fs -get /user/root/input/*.txt  my.txt"/>
<node CREATED="1504183226291" ID="ID_31926931" MODIFIED="1504239957868" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      hadoop fs -rm -r *.txt
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1504240122590" ID="ID_480280414" MODIFIED="1504240150525" TEXT="hdfs dfs -chmod -R 777 file"/>
<node CREATED="1504240151382" ID="ID_523400477" MODIFIED="1504240174617" TEXT="hdfs dfs -chown -R "/>
</node>
<node CREATED="1504239977804" ID="ID_856417577" MODIFIED="1504239983247" TEXT="&#x7ba1;&#x7406;">
<node CREATED="1504239986567" ID="ID_1701080877" MODIFIED="1504240095969" TEXT="hdfs dfsadmin -safemode leave"/>
<node CREATED="1504240000766" ID="ID_1257926410" MODIFIED="1504240100449" TEXT="hdfs dfsadmin -safemode enter"/>
</node>
<node CREATED="1504248786924" ID="ID_570416925" MODIFIED="1504248789520" TEXT="yarn">
<node CREATED="1504248791291" ID="ID_1032987868" MODIFIED="1504248827543">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # shell&#25191;&#34892;&#65292;&#26597;&#30475;yarn&#31649;&#29702;&#30340;&#20219;&#21153;
    </p>
    <p>
      yarn application -list
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1504248828864" ID="ID_1397809190" MODIFIED="1504248850428" TEXT="yarn application -kill application_151731_*"/>
<node CREATED="1504248928451" ID="ID_1823287536" MODIFIED="1504248944395" TEXT="yarn&#x96c6;&#x7fa4;&#x7684;&#x4f7f;&#x7528;&#x9700;&#x8981;&#x66f4;&#x591a;&#x8d44;&#x6e90;&#x4e0e;&#x6027;&#x80fd;"/>
</node>
</node>
</node>
<node CREATED="1504182390421" ID="ID_1981316376" MODIFIED="1504239957868" POSITION="right" STYLE="bubble" TEXT="spark">
<node CREATED="1504239633398" HGAP="22" ID="ID_220985397" MODIFIED="1509419856061" STYLE="bubble" TEXT="pyspark" VSHIFT="-9">
<node CREATED="1504252241460" ID="ID_695038721" MODIFIED="1504252428259">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      jupyter&#29615;&#22659;&#21464;&#37327;
    </p>
    <p>
      linux&#19982;mac os&#21487;&#29992;
    </p>
  </body>
</html></richcontent>
<node CREATED="1504252300874" ID="ID_791642970" MODIFIED="1504252400524">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      export PYSPARK_DRIVER_PYTHON=jupyter<o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      export PYSPARK_DRIVER_PYTHON_OPTS='notebook'<o p="#DEFAULT"></o>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1504239637494" ID="ID_184170613" MODIFIED="1504239957868" STYLE="bubble" TEXT="spark-sumit"/>
<node CREATED="1504251857018" ID="ID_1997845159" MODIFIED="1504251871427" TEXT="&#x7ba1;&#x7406;">
<node CREATED="1504251872825" ID="ID_751992563" MODIFIED="1504251875536" TEXT="log">
<node CREATED="1504251877562" ID="ID_1266617184" MODIFIED="1504251897286" TEXT="&#x6bcf;&#x4e2a;worker&#x4e0b;&#x7684;spark/work/&#x76ee;&#x5f55;&#x4e0b;"/>
</node>
</node>
<node CREATED="1504255007327" ID="ID_976392047" MODIFIED="1504255014291" TEXT="sparkSQL">
<node CREATED="1504255026033" ID="ID_1490527821" MODIFIED="1504258950828">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      from pyspark import SparkContext, SparkConf
    </p>
    <p>
      conf =&#160;
    </p>
    <p>
      sc.stop()
    </p>
    <p>
      sc = SparkContext(conf=conf)
    </p>
  </body>
</html></richcontent>
<node CREATED="1515480646721" ID="ID_687725198" MODIFIED="1515486895875" TEXT="sc&#x7684;&#x5c5e;&#x6027;">
<node CREATED="1515480826724" ID="ID_1911492575" MODIFIED="1515480835299" TEXT="sc.version"/>
<node CREATED="1515480853286" ID="ID_977540301" MODIFIED="1515480860542" TEXT="sc.pythonVer"/>
<node CREATED="1515480917652" FOLDED="true" ID="ID_90593421" MODIFIED="1515480949414" TEXT="sc.master">
<node CREATED="1515480928190" ID="ID_329283688" MODIFIED="1515480945086" TEXT="&#x6bd4;&#x5982;&apos;local[*]&apos;"/>
</node>
<node CREATED="1515480950472" ID="ID_561026192" MODIFIED="1515480964992" TEXT="sc.sparkUser()"/>
<node CREATED="1515480968611" ID="ID_1312805785" MODIFIED="1515480975441" TEXT="sc.appName"/>
<node CREATED="1515480980973" ID="ID_168584865" MODIFIED="1515480996683" TEXT="sc.defaultParallelism"/>
</node>
<node CREATED="1515481014574" ID="ID_1590484737" MODIFIED="1515481019021" TEXT="example">
<node CREATED="1515481020511" ID="ID_1529030038" MODIFIED="1515481171721">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      rdd = sc.parallelize(range(10))
    </p>
    <p>
      rdd.getNumPartitions()
    </p>
    <p>
      rdd.count() # 10
    </p>
    <p>
      rdd.sum() # 45
    </p>
    <p>
      rdd.stats()
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1515481190502" ID="ID_1485123054" MODIFIED="1515481201839" TEXT="applying functions">
<node CREATED="1515481203798" ID="ID_1528932394" MODIFIED="1515481273635">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      xs = rdd.filter(lambda x: x % 2==0)
    </p>
    <p>
      xs.collect() # [0,2,4,6,8]
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1515481274773" ID="ID_1555744352" MODIFIED="1515481322123">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      xs = rdd.map(lambda x: x**2)
    </p>
    <p>
      xs.collect() #[0,1,4,9...]
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1515481351211" ID="ID_1397292330" MODIFIED="1515481421156">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      xs = rdd.flatMap(lambda x: (x*x))
    </p>
    <p>
      xs.collect() # [0,0,1,1,2,4,3,9,4,16,...]
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1515481423817" ID="ID_227962289" MODIFIED="1515481453555">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      rdd.reduce(lambda a,b: a+b) # 45
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1515481599738" ID="ID_832176302" MODIFIED="1515481758179">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#22914;&#26524;rdd&#26159;&#23383;&#20856;&#30340;&#24418;&#24335;
    </p>
    <p>
      ys = rdd.reduceByKey(lambda x,y: x+y)
    </p>
    <p>
      ys.collect() # [ ('c', 9), ('b', 7),...]
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1515482771220" ID="ID_1136729111" MODIFIED="1515482778263" TEXT="working with text">
<node CREATED="1515482783643" ID="ID_1493332585" MODIFIED="1515483563594">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      df_txt = sc.textFile('data/name.text')
    </p>
    <p>
      df_txt.take(10) # &#21462;&#21069;10&#34892;
    </p>
    <p>
      df_txt.count() # &#26597;&#35810;&#25991;&#20214;&#30340;&#34892;&#25968;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1515483884317" ID="ID_171659729" MODIFIED="1515483901799" TEXT="def tokenize(line):     &#xa;&#x9;table = dict.fromkeys(map(ord, string.punctuation))     &#xa;&#x9;return line.translate(table).lower().split()"/>
<node CREATED="1515482871695" ID="ID_1149070805" MODIFIED="1515483815796" TEXT="counts = df_txt.flatMap(lambda line: line.split(&quot; &quot;)).map(lambda word: (word, 1)).reduceByKey(lambda a,b: a+b)&#xa;counts.saveAsTextFile(&quot;hdfs://...&quot;)&#xa;"/>
</node>
</node>
<node CREATED="1504258866311" FOLDED="true" ID="ID_1738854120" MODIFIED="1515491918471" TEXT="from pyspark.sql import SQLContext">
<node CREATED="1515486223470" ID="ID_1187353024" MODIFIED="1515489002631" TEXT="2.0&#x7248;&#x672c;from spark.sql import SparkSession"/>
</node>
<node CREATED="1504258908477" ID="ID_2628353" MODIFIED="1504258921299" TEXT="sqlc = SQLContext(sc)"/>
<node CREATED="1504258998062" ID="ID_1680533232" MODIFIED="1515490311764">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <pre style="padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Droid Sans Mono, monospace; font-size: 13.6px; line-height: 1.5em; background-color: rgb(247,; background-position: 247, 247); background-image: null; background-repeat: repeat; background-attachment: scroll; border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; color: rgb(17, 17, 17); margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px"><font color="#000000">df = (sqlc.read.format('com.databricks.spark.csv')
&#160;&#160;&#160;&#160;&#160;&#160;.options(header='true', inferschema='true')
      .load('data/cars.csv'))</font></pre>
  </body>
</html>
</richcontent>
<node CREATED="1515489011898" ID="ID_623643728" MODIFIED="1515489038250" TEXT="2.0&#x7248;&#x672c;&apos;com.databricks.spark.csv&apos;&#x6362;&#x6210;&apos;csv&apos;"/>
<node BACKGROUND_COLOR="#6699ff" CREATED="1515490122574" ID="ID_834750628" MODIFIED="1515490306122">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#25110;&#32773;&#30452;&#25509;
    </p>
    <p>
      spark = SparkSession \
    </p>
    <p>
      &#160;&#160;&#160;&#160;.builder \
    </p>
    <p>
      &#160;&#160;&#160;&#160;.appName(&quot;Python Spark SQL basic example&quot;) \
    </p>
    <p>
      &#160;&#160;&#160;&#160;.config(&quot;spark.some.config.option&quot;, &quot;some-value&quot;) \
    </p>
    <p>
      &#160;&#160;&#160;&#160;.getOrCreate()
    </p>
    <p>
      df3 = spark.read.csv('/home/centos/Downloads/SH_Metro_clear_15W.csv', encoding='gbk')
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1504259086724" ID="ID_1890059000" MODIFIED="1504259091029" TEXT="&#x67e5;&#x770b;&#x6570;&#x636e;">
<node CREATED="1504259092956" ID="ID_1899023614" MODIFIED="1504259103877" TEXT="df.printSchema()"/>
<node CREATED="1504259104377" ID="ID_679153762" MODIFIED="1504259110769" TEXT="df.show(3)"/>
<node CREATED="1504259111447" ID="ID_1190790315" MODIFIED="1504259130997" TEXT="df.select(&apos;ID&apos;).show()"/>
<node CREATED="1504259167346" ID="ID_797273122" MODIFIED="1504259182646" TEXT="df.registerTempTable(&apos;table&apos;)">
<node CREATED="1504259194523" ID="ID_774318673" MODIFIED="1504259210425" TEXT="sqlc.sql(&quot;&quot;&quot;.... from table1&quot;&quot;&quot;)"/>
</node>
</node>
</node>
</node>
</node>
</map>
