<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1505179659908" ID="ID_897820738" MODIFIED="1505714022468" STYLE="bubble" TEXT="&#x65b0;&#x5efa;&#x601d;&#x7ef4;&#x5bfc;&#x56fe;">
<node CREATED="1505181573732" ID="ID_433911186" MODIFIED="1510318420876" POSITION="right" STYLE="bubble" TEXT="&#x5b89;&#x88c5;&#x548c;&#x521b;&#x5efa;database">
<node CREATED="1505892744282" ID="ID_1962017209" MODIFIED="1505899793347">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23433;&#35013;&#36335;&#24452;
    </p>
  </body>
</html></richcontent>
<node CREATED="1505892749202" ID="ID_672877889" MODIFIED="1505892755700" TEXT="unix&#x7cfb;&#x7edf;">
<node CREATED="1505892829111" ID="ID_1291550889" MODIFIED="1505892842208" TEXT="&#x73af;&#x5883;&#x53d8;&#x91cf;ORACLE_BASE">
<node CREATED="1505892756969" ID="ID_1044039909" MODIFIED="1505899778915" TEXT="/u01/app/{username}"/>
</node>
<node CREATED="1505892880538" ID="ID_1064757797" MODIFIED="1505892883758" TEXT="&#x6570;&#x636e;&#x6587;&#x4ef6;">
<node CREATED="1505892924076" ID="ID_798152462" MODIFIED="1505892927049" TEXT="/data/oradata"/>
</node>
</node>
</node>
<node CREATED="1505712644379" ID="ID_1911182106" MODIFIED="1505714022468" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21019;&#24314;&#34920;&#31354;&#38388;
    </p>
    <p>
      tablespace
    </p>
  </body>
</html></richcontent>
<node CREATED="1505712657222" ID="ID_835999892" MODIFIED="1517393329877" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      create tablespace tbs_test datafile '/data/oradata/scora/test1.dbf' size 1024m AUTOEXTEND ON NEXT 64K MAXSIZE&#160;&#160;UNLIMITED;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1505818757186" ID="ID_856691848" MODIFIED="1505818759326" TEXT="alter tablespace dw add datafile &apos;/data/oradata/dw/dw2.dbf&apos; size 1024m AUTOEXTEND ON NEXT 64K MAXSIZE  UNLIMITED;"/>
</node>
<node CREATED="1505713786439" ID="ID_1421439790" MODIFIED="1505892721705" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26597;&#30475;
    </p>
  </body>
</html></richcontent>
<node CREATED="1505713802004" ID="ID_1362941068" MODIFIED="1505714022470" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      select name, open_mode
    </p>
    <p>
      <font size="12.0pt" face="Times New Roman,serif">FROM v$pdbs;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1505713851331" ID="ID_1288512810" MODIFIED="1505715313451" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26597;&#30475;&#19982;&#20462;&#25913;PDB
    </p>
  </body>
</html></richcontent>
<node CREATED="1505715290115" ID="ID_1466580220" MODIFIED="1505715295458" TEXT="show con_name"/>
<node CREATED="1505713997731" ID="ID_397756902" MODIFIED="1505714022470" STYLE="bubble" TEXT="ALTER SESSION set container = pdborcl;"/>
<node CREATED="1505713857217" ID="ID_994556593" MODIFIED="1505714022470" STYLE="bubble" TEXT="alter session set pluggable database open;"/>
</node>
<node CREATED="1507805579407" ID="ID_1495965616" MODIFIED="1507805586597" TEXT="&#x67e5;&#x770b;pdb&#x5185;&#x5b58;">
<node CREATED="1507805588278" ID="ID_1033685669" MODIFIED="1507805602530" TEXT="set linesize 200"/>
<node CREATED="1507805602996" ID="ID_471672808" MODIFIED="1507805614580" TEXT="alter session set container=dwpdb;"/>
<node CREATED="1507805615178" ID="ID_1056646804" MODIFIED="1507805624107" TEXT="show parameter sga;">
<node CREATED="1507805625825" ID="ID_1839168745" MODIFIED="1507805646049" TEXT="&#x6216;&#x8005;show pga #&#x5b58;&#x653e;sql&#x8bed;&#x53e5;"/>
</node>
</node>
<node CREATED="1507857156004" ID="ID_1695367171" MODIFIED="1510535190551" TEXT="&#x67e5;&#x770b;&#x4e0e;&#x4fee;&#x6539;&#x7f16;&#x7801;">
<node CREATED="1507857398849" ID="ID_1464589308" MODIFIED="1507857408831" TEXT="oracle&#x6570;&#x636e;&#x5e93;&#x7f16;&#x7801;">
<node CREATED="1507857230366" ID="ID_979777136" MODIFIED="1507857232694" TEXT="select * from nls_database_parameters where parameter =&apos;NLS_CHARACTERSET&apos;;"/>
</node>
<node CREATED="1507857412027" ID="ID_694349933" MODIFIED="1507857418001" TEXT="oracle&#x5ba2;&#x6237;&#x7aef;&#x7f16;&#x7801;">
<node CREATED="1507857421343" ID="ID_1405325129" MODIFIED="1507857433730" TEXT="select * from nls_instance_parameters where parameter=&apos;NLS_LANGUAGE&apos;;"/>
</node>
<node CREATED="1521714351514" ID="ID_244408603" LINK="../../../C:/Users/wei/Desktop/&#x4fee;&#x6539;&#x7f16;&#x7801;.mm" MODIFIED="1521714351516" TEXT="&#x4fee;&#x6539;&#x7f16;&#x7801;"/>
</node>
</node>
<node CREATED="1505712601584" ID="ID_295162143" MODIFIED="1515408471303" POSITION="right" STYLE="bubble" TEXT="&#x521b;&#x5efa;&#x548c;&#x7ba1;&#x7406;&#x7528;&#x6237;">
<node CREATED="1505712826637" ID="ID_789715767" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x521b;&#x5efa;&#x7528;&#x6237;">
<node CREATED="1505713171524" ID="ID_884641916" MODIFIED="1505714022470" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      CREATE USER test_user IDENTIFIED BY testuser123
    </p>
    <p>
      DEFAULT TABLESPACE tbs_test
    </p>
    <p>
      TEMPORARY TABLESPACE temp;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1505712839464" ID="ID_278194093" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x7ba1;&#x7406;&#x7528;&#x6237;">
<node CREATED="1505713910302" ID="ID_1239992030" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x89e3;&#x9501;">
<node CREATED="1505713920241" ID="ID_948599068" MODIFIED="1505714022470" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="12.0pt" face="Times New Roman,serif">ALTER USER hr IDENTIFIED BY hr ACCOUNT UNLOCK;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1505713913466" ID="ID_1922469502" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x6743;&#x9650;">
<node CREATED="1505713978314" ID="ID_1855845" MODIFIED="1505899681039" STYLE="bubble" TEXT="grant dba to myuser;"/>
</node>
</node>
<node CREATED="1505713593729" ID="ID_478044345" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x67e5;&#x770b;&#x7528;&#x6237;">
<node CREATED="1505713599296" ID="ID_1272267516" MODIFIED="1505714022470" STYLE="bubble" TEXT="show user;"/>
</node>
<node CREATED="1505714437075" ID="ID_397690506" MODIFIED="1505714443314" TEXT="&#x5220;&#x9664;&#x7528;&#x6237;">
<node CREATED="1505714445938" ID="ID_1443310270" MODIFIED="1505714466908" TEXT="drop user BISAMPLE cascade;">
<node CREATED="1505714469008" ID="ID_1798252179" MODIFIED="1505714481525" TEXT="&#x5220;&#x9664;&#x7528;&#x6237;&#x53ca;&#x7528;&#x6237;&#x540d;&#x4e0b;&#x6240;&#x6709;&#x8868;"/>
</node>
<node CREATED="1505807629874" ID="ID_630117463" MODIFIED="1505808689101">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26174;&#31034;&#24050;&#36830;&#25509;&#65292;&#28961;&#27861;&#21034;&#38500;&#29992;&#25142;&#26178;
    </p>
  </body>
</html></richcontent>
<node CREATED="1505807638660" ID="ID_1816829351" MODIFIED="1505807643727">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      --select username, sid, serial# from v$session;
    </p>
    <p>
      --alter system kill session '26511,49213';
    </p>
    <p>
      --drop user dw cascade;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1505714516036" ID="ID_756118854" MODIFIED="1505714518980" POSITION="right" TEXT="&#x5de5;&#x5177;">
<node CREATED="1505713531047" ID="ID_1506586998" MODIFIED="1505714022470" STYLE="bubble" TEXT="sqlplus">
<node CREATED="1505713538540" ID="ID_924840428" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x8fde;&#x63a5;">
<node CREATED="1505890098877" ID="ID_2131517" MODIFIED="1505890170865">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#38750;&#30331;&#24405;&#21518;&#20877;&#36830;&#25509;
    </p>
  </body>
</html></richcontent>
<node CREATED="1505890113339" ID="ID_631496018" MODIFIED="1505890126087" TEXT="sqlplus /nolog">
<node CREATED="1505890128000" ID="ID_880078006" MODIFIED="1505890156912" TEXT="connect username as sysdba"/>
</node>
</node>
<node CREATED="1505713545501" ID="ID_188077298" MODIFIED="1505714022470" STYLE="bubble" TEXT="sqlplus / as sysdba"/>
<node CREATED="1505714124836" ID="ID_1064026164" MODIFIED="1505714126830" TEXT="sqlplus metro/metro@172.20.10.178:1521/orclpdb"/>
<node CREATED="1505713566738" ID="ID_1360915649" MODIFIED="1505714022470" STYLE="bubble" TEXT="conn hr/hr@pdborcl"/>
<node CREATED="1505715350863" ID="ID_415233769" MODIFIED="1505715360392" TEXT="&#x5982;&#x679c;&#x8fde;&#x63a5;&#x4e0d;&#x4e0a;&#xff0c;&#x53ef;&#x80fd;&#x9700;&#x8981;&#x8bbe;&#x7f6e;&#x76d1;&#x542c;"/>
</node>
<node CREATED="1505896444798" ID="ID_896034459" MODIFIED="1505896448111" TEXT="&#x7ba1;&#x7406;">
<node CREATED="1505896449680" ID="ID_251434271" MODIFIED="1505896455131" TEXT="SHUTDOWN">
<node CREATED="1505893665813" ID="ID_548854258" MODIFIED="1505893668493" TEXT="/u01/app/oracle/product/12.2.0/db_1/bin/"/>
</node>
<node CREATED="1505896455656" ID="ID_1770442887" MODIFIED="1505896461102" TEXT="STARTUP"/>
</node>
</node>
<node CREATED="1505714523803" ID="ID_179742667" MODIFIED="1505714529203" TEXT="sqlloader">
<node CREATED="1505714564761" ID="ID_1103189038" MODIFIED="1505714569050" TEXT="&#x5bfc;&#x5165;&#x6570;&#x636e;">
<node CREATED="1505714570645" ID="ID_1140835975" MODIFIED="1505714588271" TEXT="sqlldr userid=metro/metro@172.20.10.178:1521/orclpdb control=load.ctl log=load.log">
<node CREATED="1505878278811" ID="ID_374959147" MODIFIED="1505878281968" TEXT="insert"/>
<node CREATED="1505878282427" ID="ID_137987190" MODIFIED="1505878284183" TEXT="append"/>
<node CREATED="1505878292121" ID="ID_821867553" MODIFIED="1505878296230" TEXT="replace"/>
<node CREATED="1505878298653" ID="ID_409899022" MODIFIED="1505878308551" TEXT="truncate">
<node CREATED="1505878312930" ID="ID_1646638333" MODIFIED="1505878328579" TEXT="&#x5728;&#x6267;&#x884c;&#x4e4b;&#x524d;&#x5148;&#x5220;&#x9664;&#x4e4b;&#x524d;&#x7684;&#x6570;&#x636e;"/>
</node>
</node>
</node>
</node>
<node CREATED="1505714529780" ID="ID_629974036" MODIFIED="1510363020521" TEXT="oracle dmp&#x6570;&#x636e;&#x6cf5;">
<node CREATED="1505714809257" ID="ID_1030890580" MODIFIED="1505714897092">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23548;&#20837;dmp
    </p>
  </body>
</html></richcontent>
<node CREATED="1505714838096" ID="ID_1795079704" MODIFIED="1505714849769" TEXT="b.&#x6267;&#x884c;&#x5bfc;&#x5165;">
<node CREATED="1505714882066" ID="ID_131328730" MODIFIED="1505714886716" TEXT="impdp metro/metro@172.20.10.178:1521/orclpdb directory = dir_dump dumpfile=BISAMPLE.DMP logfile=BISAMPLE.log">
<node CREATED="1510201685710" ID="ID_68574178" MODIFIED="1510201693751" TEXT="impdb&#x5bfc;&#x5165;"/>
</node>
<node CREATED="1510201627774" ID="ID_342005045" MODIFIED="1514103792401" TEXT="imp SZDTCLC/SZDTCLC@dwpdb  full=y  file=/export/home/oracle/Downloads/201606.dmp ">
<node CREATED="1510201659220" ID="ID_782410955" MODIFIED="1510201667878" TEXT="&#x5982;&#x679c;&#x7528;IMP&#x5bfc;&#x5165;"/>
</node>
<node CREATED="1510386992198" ID="ID_337729866" MODIFIED="1510387018083" TEXT="nohup imp SZDTCLC/SZDTCLC@dwpdb&#xa0;&#xa0;full=y&#xa0;&#xa0;file=/export/home/oracle/Downloads/201606.dmp&#xa0; &amp;">
<node CREATED="1510387022527" ID="ID_392679808" MODIFIED="1510387027681" TEXT="&#x540e;&#x53f0;&#x6267;&#x884c;"/>
</node>
<node CREATED="1510293377878" ID="ID_853028434" MODIFIED="1510293394688" TEXT="impdp hr TABLES=employees CONTENT=DATA_ONLY DUMPFILE=dpump_dir1:table.dmp NOLOGFILE=YES">
<node CREATED="1510293397929" ID="ID_716165511" MODIFIED="1510293410066" TEXT="table data only"/>
</node>
</node>
</node>
<node CREATED="1505714813689" ID="ID_1267962771" MODIFIED="1505714913419">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23548;&#20986;dmp
    </p>
  </body>
</html></richcontent>
<node CREATED="1505714967471" ID="ID_1716373604" MODIFIED="1505715020971" TEXT="a.&#x521b;&#x5efa;&#x76ee;&#x5f55;">
<node CREATED="1505715022642" ID="ID_513429368" MODIFIED="1505788646994">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sqlplus / as sysdba
    </p>
    <p>
      create or replace directory dir_dp as 'D:\oracle\dir_dp';
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1505714977986" ID="ID_8660416" MODIFIED="1505714984141" TEXT="b.&#x6388;&#x6743;">
<node CREATED="1505715045143" ID="ID_200487441" MODIFIED="1505715053604" TEXT="Grant read,write on directory dir_dp to lttfm;"/>
</node>
<node CREATED="1505714984865" ID="ID_1381666912" MODIFIED="1505714995426" TEXT="c.&#x6267;&#x884c;&#x5bfc;&#x51fa;">
<node CREATED="1505715104187" ID="ID_794175624" MODIFIED="1505715106116" TEXT="expdp lttfm/lttfm@fgisdb schemas=lttfm directory=dir_dp dumpfile =expdp_test1.dmp logfile=expdp_test1.log;"/>
<node CREATED="1510220185572" ID="ID_1173279177" MODIFIED="1517553742935">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      expdp DIRECTORY=dpumpdir DUMPFILE=test.dmp NOLOGFILE TABLES=employees, job
    </p>
  </body>
</html></richcontent>
<node CREATED="1510220681780" ID="ID_1336825657" MODIFIED="1510220688188" TEXT="&#x5bfc;&#x51fa;Table"/>
<node CREATED="1510225315845" ID="ID_1803835825" MODIFIED="1510225318522" TEXT="expdp METRO/METRO@dwpdb directory=dir_dump dumpfile =expdp_tai_his.dmp logfile=expdp_test1.log tables = TAI_ENTRY_HIS;"/>
<node CREATED="1517565914613" ID="ID_160156761" MODIFIED="1517566009488">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      expdp DW/Admin123@dwpdb tables = tam_flux_section_day, dumpfile = tam_flux_section_day.dmp;
    </p>
    <p>
      # &#27809;&#26377;&#23450;&#20041;Directory, &#34987;&#20889;&#21040;/u01/app/oracle/admin/dwcdb/dpdump&#21435;&#20102;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1517551224101" ID="ID_1177925167" MODIFIED="1517551226887" TEXT="expdp scott/tiger@pdb1 schemas=scott directory=TEST_DIR dumpfile=scott1.dmp logfile=scott1.log query=SCOTT.EMP:&apos;&quot;WHERE deptno=10&quot;&apos;"/>
<node CREATED="1510219144264" ID="ID_543999217" MODIFIED="1510219146040" TEXT="exp userid=hradmin/mypassword tables=benefits"/>
<node CREATED="1510284531741" ID="ID_1886769613" MODIFIED="1510293193173" TEXT="exp user/passwd@tns tables=td_common file=path log=path query = \&quot; where trade_date &gt;= to_date(&apos;2017-01-01&apos;,&apos;yyyy-mm-dd&apos;) \&quot;"/>
</node>
</node>
</node>
<node CREATED="1505715405074" ID="ID_1280544076" MODIFIED="1505715407771" TEXT="DBCA">
<node CREATED="1505893333460" ID="ID_1926755894" MODIFIED="1505893339254" TEXT="dbca&#x7684;&#x8def;&#x5f84;"/>
<node CREATED="1505715411523" ID="ID_1439730336" MODIFIED="1505715416105" TEXT="&#x521b;&#x5efa;PDB">
<node CREATED="1505893817805" ID="ID_1159071524" MODIFIED="1505893823953" TEXT="shell &#x6267;&#x884c; dbca"/>
</node>
</node>
</node>
<node CREATED="1505181591148" ID="ID_1397136516" MODIFIED="1505714022470" POSITION="right" STYLE="bubble" TEXT="&#x6570;&#x636e;&#x5e93;&#x7ba1;&#x7406;">
<node CREATED="1505181597616" ID="ID_278420477" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x914d;&#x7f6e;&#x73af;&#x5883;&#x53d8;&#x91cf;">
<node CREATED="1505181637870" ID="ID_156676912" MODIFIED="1505714022470" STYLE="bubble" TEXT="export ORACLE_SID=orcl">
<node CREATED="1505714819916" ID="ID_1627247557" MODIFIED="1505714835972" TEXT="a.&#x521b;&#x5efa;&#x76ee;&#x5f55;">
<node CREATED="1505714853633" ID="ID_595125679" MODIFIED="1505714863710" TEXT="create directory dir_dump as &apos;/export/home/oracle/Downloads/&apos;;"/>
</node>
</node>
<node CREATED="1505181670438" ID="ID_1139864451" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x786e;&#x4fdd;$ORACLE_HOME/bin&#x76ee;&#x5f55;&#x5728;&#x60a8;&#x7684;PATH&#x73af;&#x5883;&#x53d8;&#x91cf;&#x4e2d;"/>
</node>
<node CREATED="1505182147506" ID="ID_1340336271" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x542f;&#x52a8;EM Express">
<node CREATED="1505895615133" ID="ID_1285386571" MODIFIED="1505897789355">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sys &#36134;&#25143;&#20999;&#25442;&#21040;dwpdb&#21518;&#25191;&#34892;
    </p>
    <p>
      exec DBMS_XDB_CONFIG.setHTTPSPort(5500);
    </p>
    <p>
      &#20808;&#22312;&#26381;&#21153;&#22120;&#31471;&#27983;&#35272;&#22120;&#25191;&#34892;&#33719;&#21462;&#35777;&#20070;&#65307;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1505182167799" ID="ID_1598478449" MODIFIED="1505894639260" STYLE="bubble" TEXT="https:localhost:5500/em"/>
</node>
<node CREATED="1505183246448" ID="ID_646607848" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x8fde;&#x63a5;&#x6570;&#x636e;&#x5e93;">
<node CREATED="1505183258444" ID="ID_244473324" MODIFIED="1505714022470" STYLE="bubble" TEXT="sqlplus / as sysdba"/>
</node>
</node>
<node CREATED="1505183443390" ID="ID_1288319476" MODIFIED="1505714022470" POSITION="right" STYLE="bubble" TEXT="&#x7f51;&#x7edc;&#x914d;&#x7f6e;">
<node CREATED="1505184429041" ID="ID_536484472" MODIFIED="1505714022470" STYLE="bubble" TEXT="listener.ora"/>
<node CREATED="1505184443207" ID="ID_1408742789" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x67e5;&#x770b;&#x76d1;&#x542c;">
<node CREATED="1505184494856" ID="ID_177631867" MODIFIED="1505714022470" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      lsnrctl status, /stop, /start
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1505184811478" ID="ID_1410109004" MODIFIED="1505714022470" POSITION="right" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31649;&#29702;&#20869;&#23384;
    </p>
  </body>
</html></richcontent>
<node CREATED="1505184742542" ID="ID_642745948" MODIFIED="1505714022470" STYLE="bubble" TEXT="SGA">
<node CREATED="1505184749378" ID="ID_612404566" MODIFIED="1505714022470" STYLE="bubble" TEXT="system global area">
<node CREATED="1505184859373" ID="ID_1364916725" MODIFIED="1505714022470" STYLE="bubble" TEXT="&#x7531;&#x6240;&#x6709;&#x670d;&#x52a1;&#x5668;&#x548c;&#x540e;&#x53f0;&#x8fdb;&#x7a0b;&#x5171;&#x4eab;"/>
</node>
</node>
<node CREATED="1505184823716" ID="ID_365684456" MODIFIED="1505714022470" STYLE="bubble" TEXT="PGA">
<node CREATED="1505184830141" ID="ID_1546178868" MODIFIED="1505714022470" STYLE="bubble" TEXT="planning global area">
<node CREATED="1505184891702" ID="ID_1477539613" MODIFIED="1505714022470" STYLE="bubble" TEXT="oracle&#x6570;&#x636e;&#x5e93;&#x521b;&#x5efa;&#x7684;&#x975e;&#x5171;&#x4eab;&#x5185;&#x5b58;"/>
</node>
</node>
</node>
</node>
</map>
