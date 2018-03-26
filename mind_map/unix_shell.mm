<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1504678422912" ID="ID_1566379559" MODIFIED="1504678900021" TEXT="Unix Shell">
<node CREATED="1504678458950" ID="ID_1166357468" MODIFIED="1504678471137" POSITION="right" TEXT="Finding Stuff">
<node CREATED="1504678472965" ID="ID_1300620243" MODIFIED="1504678480704" TEXT="using locate">
<node CREATED="1504678505929" ID="ID_869242146" MODIFIED="1504678529461" TEXT="locate -i &quot;unix shell&quot;"/>
</node>
<node CREATED="1504678481219" ID="ID_750129129" MODIFIED="1504678489776" TEXT="using grep">
<node CREATED="1504678574873" ID="ID_1139738848" MODIFIED="1504678586040" TEXT="grep &quot;hell&quot; foo.txt"/>
<node CREATED="1504678596544" ID="ID_1743608952" MODIFIED="1504678616224" TEXT="grep -r &quot;hello&quot; ./*txt"/>
<node CREATED="1504678661176" ID="ID_426741059" MODIFIED="1504678677835" TEXT="grep -c &quot;hello&quot; *.txt">
<node CREATED="1504678682528" ID="ID_717144640" MODIFIED="1504678689055" TEXT="counting words"/>
</node>
<node CREATED="1504678704023" ID="ID_921098247" MODIFIED="1504678717919" TEXT="grep -l &quot;hello&quot; *.txt">
<node CREATED="1504678717920" ID="ID_790030270" MODIFIED="1504678723875" TEXT="get filenames only"/>
</node>
</node>
<node CREATED="1504678489960" ID="ID_97119687" MODIFIED="1504678493108" TEXT="using find">
<node CREATED="1504678773773" ID="ID_1617734215" MODIFIED="1504678829071" TEXT="find . -name foo*"/>
</node>
</node>
<node CREATED="1504678956358" ID="ID_558553919" MODIFIED="1504678964767" POSITION="right" TEXT="Writing Shell Scripts">
<node CREATED="1504678972744" ID="ID_606835527" MODIFIED="1504678978240" TEXT="assign variables">
<node CREATED="1504679051831" ID="ID_1104077605" MODIFIED="1504679060214" TEXT="NAME = &apos;Joe&apos;">
<node CREATED="1504679062072" ID="ID_655235875" MODIFIED="1504679083156" TEXT="echo &quot;hello $NAME&quot;"/>
<node CREATED="1504679101661" ID="ID_1463155710" MODIFIED="1504679118074" TEXT="echo &quot;${NAME}&quot;">
<node CREATED="1504679210560" ID="ID_1655337541" MODIFIED="1504679218710" TEXT="&#x96d9;&#x5f15;&#x865f;"/>
</node>
</node>
<node CREATED="1504679317428" ID="ID_1282418704" MODIFIED="1504679322446" TEXT="working with numbers">
<node CREATED="1504679323948" ID="ID_1204562378" MODIFIED="1504679331844" TEXT="seq 2 5">
<node CREATED="1504679331846" ID="ID_1988471823" MODIFIED="1504679339775" TEXT="return 2 3 4 5"/>
</node>
<node CREATED="1504679367309" ID="ID_1728764319" MODIFIED="1504679378359" TEXT="seq 5 | sum">
<node CREATED="1504679378361" ID="ID_1244413872" MODIFIED="1504679541789">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      return sum of seq (26288 )
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1504679470282" ID="ID_212753011" MODIFIED="1504679695673" TEXT="paste -s -d+ &lt;(seq 5)&gt; | bc"/>
</node>
</node>
<node CREATED="1504679260168" ID="ID_1196724580" MODIFIED="1504679265465" TEXT="assign commands">
<node CREATED="1504679267626" ID="ID_950240679" MODIFIED="1504679289615" TEXT="CUR_DIR=$(pwd)"/>
</node>
<node CREATED="1504679633074" ID="ID_1502196601" MODIFIED="1504679641637" TEXT="writing functions">
<node CREATED="1504679642893" ID="ID_1116230939" MODIFIED="1504679691419">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      f_sum() {
    </p>
    <p>
      &#160;&#160;&#160;paste -s -d+ $name | bc
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<node CREATED="1504679724089" ID="ID_506269134" MODIFIED="1504679735446" TEXT=" run f_sum &lt;(seq 5)"/>
</node>
</node>
<node CREATED="1504679777781" ID="ID_616548919" MODIFIED="1504679783781" TEXT="looping">
<node CREATED="1504679783782" ID="ID_1196619974" MODIFIED="1504679822948">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      for FILE in $(ls *.txt); do
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;echo $FILE
    </p>
    <p>
      done
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</map>
