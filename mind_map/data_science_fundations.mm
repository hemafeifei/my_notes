<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1504678422912" ID="ID_1566379559" MODIFIED="1504695772459" STYLE="bubble" TEXT="Unix Shell">
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1504680222473" ID="ID_1079483778" MODIFIED="1504695772381" POSITION="right" STYLE="bubble" TEXT="Unix Shell">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1504680275361" ID="ID_757166844" MODIFIED="1504695772381" STYLE="bubble" TEXT="File and Directory Management">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1504680296111" ID="ID_1812945774" MODIFIED="1504695772381" STYLE="bubble" TEXT="listing files">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504680351824" ID="ID_1715354560" MODIFIED="1504695772381" STYLE="bubble" TEXT="ls -l"/>
<node COLOR="#111111" CREATED="1504680377086" ID="ID_1238323869" MODIFIED="1504695772381" STYLE="bubble" TEXT="ls -R"/>
</node>
<node COLOR="#990000" CREATED="1504680389339" ID="ID_1690620867" MODIFIED="1504695772381" STYLE="bubble" TEXT="globbing">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504680394176" ID="ID_1314143022" MODIFIED="1504695772381" STYLE="bubble" TEXT="ls *ipynb"/>
<node COLOR="#111111" CREATED="1504680408413" ID="ID_1257316240" MODIFIED="1504695772381" STYLE="bubble" TEXT="ls data/*"/>
<node COLOR="#111111" CREATED="1504680423597" ID="ID_459133227" MODIFIED="1504695772381" STYLE="bubble" TEXT="ls data/iris??.csv"/>
</node>
<node COLOR="#990000" CREATED="1504680445757" ID="ID_1687440325" MODIFIED="1504695772381" STYLE="bubble" TEXT="splitting paths">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504680453652" ID="ID_1269630220" MODIFIED="1504695772381" STYLE="bubble" TEXT="pwd">
<node COLOR="#111111" CREATED="1504680460622" ID="ID_1545332346" MODIFIED="1504695772381" STYLE="bubble" TEXT="pwd | xargs dirname"/>
<node COLOR="#111111" CREATED="1504680473742" ID="ID_931490568" MODIFIED="1504695772381" STYLE="bubble" TEXT="pwd | xargs basename"/>
</node>
</node>
<node COLOR="#990000" CREATED="1504680488830" ID="ID_141353694" MODIFIED="1504695772381" STYLE="bubble" TEXT="making and moving">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504680507289" ID="ID_1132154400" MODIFIED="1504695772397" STYLE="bubble" TEXT="mkdir foo"/>
<node COLOR="#111111" CREATED="1504680511500" ID="ID_611881687" MODIFIED="1504695772397" STYLE="bubble" TEXT="mkdir -p a/b/c/d">
<node COLOR="#111111" CREATED="1504680534350" ID="ID_1615064070" MODIFIED="1504695772397" STYLE="bubble" TEXT="&#x901a;&#x8fc7; ls -R a&#x67e5;&#x770b;&#x8be6;&#x7ec6;"/>
</node>
<node COLOR="#111111" CREATED="1504680556989" ID="ID_1386389380" MODIFIED="1504695772397" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      rmdir foo | cat
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1504680587996" ID="ID_1198315161" MODIFIED="1504695772397" STYLE="bubble" TEXT="rmdir -p a/b/c/d"/>
</node>
<node COLOR="#990000" CREATED="1504680608409" ID="ID_43382996" MODIFIED="1504695772397" STYLE="bubble" TEXT="working with files">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504680649290" ID="ID_1686698661" MODIFIED="1504695772397" STYLE="bubble" TEXT="touch foo.txt">
<node COLOR="#111111" CREATED="1504680656136" ID="ID_1258469697" MODIFIED="1504695772397" STYLE="bubble" TEXT="# making an empty file"/>
</node>
<node COLOR="#111111" CREATED="1504680685257" ID="ID_1570309231" MODIFIED="1504695772397" STYLE="bubble" TEXT="cat foo.txt">
<node COLOR="#111111" CREATED="1504680701073" ID="ID_473315118" MODIFIED="1504695772397" STYLE="bubble" TEXT="&#x67e5;&#x770b;&#x6587;&#x4ef6;"/>
</node>
<node COLOR="#111111" CREATED="1504680724524" ID="ID_1544658280" MODIFIED="1504695772397" STYLE="bubble" TEXT="cp &quot;etwa blabla h.ipynb&quot; target.ipynb">
<node COLOR="#111111" CREATED="1504680774158" ID="ID_427109010" MODIFIED="1504695772397" STYLE="bubble" TEXT="&#x590d;&#x5236;&#x6587;&#x4ef6;&#x5e76;&#x6539;&#x540d;"/>
</node>
<node COLOR="#111111" CREATED="1504680794416" ID="ID_204067657" MODIFIED="1504695772397" STYLE="bubble" TEXT="cp -R data data2">
<node COLOR="#111111" CREATED="1504680802573" ID="ID_1980493979" MODIFIED="1504695772397" STYLE="bubble" TEXT="copy whole dfile"/>
</node>
<node COLOR="#111111" CREATED="1504680825953" ID="ID_1231846382" MODIFIED="1504695772397" STYLE="bubble" TEXT="mv target.ipynb renamed.ipynb">
<node COLOR="#111111" CREATED="1504680860457" ID="ID_758441989" MODIFIED="1504695772397" STYLE="bubble" TEXT="&#x91cd;&#x547d;&#x540d;"/>
</node>
<node COLOR="#111111" CREATED="1504680938247" ID="ID_676757860" MODIFIED="1504695772397" STYLE="bubble" TEXT="tar -cvf"/>
<node COLOR="#111111" CREATED="1504680987678" ID="ID_1556031284" MODIFIED="1504695772397" STYLE="bubble" TEXT="unzip/ gunzip"/>
<node COLOR="#111111" CREATED="1504680949033" ID="ID_865604505" MODIFIED="1504695772397" STYLE="bubble" TEXT="rm -rf data/  rm-r data2"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1504678458950" ID="ID_1166357468" MODIFIED="1504701708701" STYLE="bubble" TEXT="Finding Stuff">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1504678472965" ID="ID_1300620243" MODIFIED="1504695772397" TEXT="using locate">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504678505929" ID="ID_869242146" MODIFIED="1504695772397" TEXT="locate -i &quot;unix shell&quot;"/>
</node>
<node COLOR="#990000" CREATED="1504678481219" ID="ID_750129129" MODIFIED="1504695772397" TEXT="using grep">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504678574873" ID="ID_1139738848" MODIFIED="1504695772397" TEXT="grep &quot;hell&quot; foo.txt"/>
<node COLOR="#111111" CREATED="1504678596544" ID="ID_1743608952" MODIFIED="1504695772397" TEXT="grep -r &quot;hello&quot; ./*txt"/>
<node COLOR="#111111" CREATED="1504678661176" ID="ID_426741059" MODIFIED="1504695772397" TEXT="grep -c &quot;hello&quot; *.txt">
<node COLOR="#111111" CREATED="1504678682528" ID="ID_717144640" MODIFIED="1504695772397" TEXT="counting words"/>
</node>
<node COLOR="#111111" CREATED="1504678704023" ID="ID_921098247" MODIFIED="1504695772397" TEXT="grep -l &quot;hello&quot; *.txt">
<node COLOR="#111111" CREATED="1504678717920" ID="ID_790030270" MODIFIED="1504695772397" TEXT="get filenames only"/>
</node>
</node>
<node COLOR="#990000" CREATED="1504678489960" ID="ID_97119687" MODIFIED="1504695772397" TEXT="using find">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504678773773" ID="ID_1617734215" MODIFIED="1504695772397" TEXT="find . -name foo*"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1504678956358" ID="ID_558553919" MODIFIED="1504701711258" STYLE="bubble" TEXT="Writing Shell Scripts">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1504678972744" ID="ID_606835527" MODIFIED="1504695772397" TEXT="assign variables">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504679051831" ID="ID_1104077605" MODIFIED="1504695772397" TEXT="NAME = &apos;Joe&apos;">
<node COLOR="#111111" CREATED="1504679062072" ID="ID_655235875" MODIFIED="1504695772397" TEXT="echo &quot;hello $NAME&quot;"/>
<node COLOR="#111111" CREATED="1504679101661" ID="ID_1463155710" MODIFIED="1504695772397" TEXT="echo &quot;${NAME}&quot;">
<node COLOR="#111111" CREATED="1504679210560" ID="ID_1655337541" MODIFIED="1504695772397" TEXT="&#x96d9;&#x5f15;&#x865f;"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1504679260168" ID="ID_1196724580" MODIFIED="1504695772397" TEXT="assign commands">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504679267626" ID="ID_950240679" MODIFIED="1504695772413" TEXT="CUR_DIR=$(pwd)"/>
</node>
<node COLOR="#990000" CREATED="1504679317428" ID="ID_1282418704" MODIFIED="1504695772413" TEXT="working with numbers">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504679323948" ID="ID_1204562378" MODIFIED="1504695772413" TEXT="seq 2 5">
<node COLOR="#111111" CREATED="1504679331846" ID="ID_1988471823" MODIFIED="1504695772413" TEXT="return 2 3 4 5"/>
</node>
<node COLOR="#111111" CREATED="1504679367309" ID="ID_1728764319" MODIFIED="1504695772413" TEXT="seq 5 | sum">
<node COLOR="#111111" CREATED="1504679378361" ID="ID_1244413872" MODIFIED="1504695772413">
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
<node COLOR="#111111" CREATED="1504679470282" ID="ID_212753011" MODIFIED="1504695772413" TEXT="paste -s -d+ &lt;(seq 5)&gt; | bc"/>
</node>
<node COLOR="#990000" CREATED="1504679633074" ID="ID_1502196601" MODIFIED="1504695772413" TEXT="writing functions">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504679642893" ID="ID_1116230939" MODIFIED="1504695772413">
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
<node COLOR="#111111" CREATED="1504679724089" ID="ID_506269134" MODIFIED="1504695772413" TEXT=" run f_sum &lt;(seq 5)"/>
</node>
</node>
<node COLOR="#990000" CREATED="1504679777781" ID="ID_616548919" MODIFIED="1504695772413" TEXT="looping">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504679783782" ID="ID_1196619974" MODIFIED="1504695772413">
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
<node COLOR="#0033ff" CREATED="1504681261309" ID="ID_64522861" MODIFIED="1504695772413" POSITION="right" STYLE="bubble" TEXT="Reproductive Analysis">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1504681531821" ID="ID_1745711002" MODIFIED="1504695772413" STYLE="bubble" TEXT="use Python">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1504681536537" ID="ID_159387790" MODIFIED="1504695772413" STYLE="bubble" TEXT="use R">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1504681538921" ID="ID_1171013784" MODIFIED="1504695772413" STYLE="bubble" TEXT="include videos">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1504681551561" ID="ID_1207790694" MODIFIED="1504695772413" STYLE="bubble" TEXT="from Ipython.display import YouTuBeVideo">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1504681574248" ID="ID_319087081" MODIFIED="1504695772413" STYLE="bubble" TEXT="YouTuBeVideo(&apos;Hz1fdhkh4sdkfh&apos;)">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1504681628569" ID="ID_1916126021" MODIFIED="1504695772428" STYLE="bubble" TEXT="using git">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1504682480873" ID="ID_1897498080" MODIFIED="1504695772428" POSITION="right" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      python functions
    </p>
  </body>
</html></richcontent>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1504682484378" ID="ID_659216510" MODIFIED="1504695772428" STYLE="bubble" TEXT="dict">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1504682487669" ID="ID_1278303775" MODIFIED="1504695772428" STYLE="bubble" TEXT="merge dict">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504682498341" ID="ID_1883651094" MODIFIED="1504695772428" STYLE="bubble" TEXT="dict.update(more_dict)"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1504682554075" ID="ID_842971003" MODIFIED="1504695772428" STYLE="bubble" TEXT="counters">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1504682558933" ID="ID_953867700" MODIFIED="1504695772428" STYLE="bubble" TEXT="from collections import Counter">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504682575021" ID="ID_1466935248" MODIFIED="1504695772428" STYLE="bubble" TEXT="c = Counter(&apos;str&apos;)"/>
<node COLOR="#111111" CREATED="1504682591609" ID="ID_1826297474" MODIFIED="1504695772428" STYLE="bubble" TEXT="c.most_common()"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1504682701119" ID="ID_1657139384" MODIFIED="1504695772428" STYLE="bubble" TEXT="heapq">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1504683485274" ID="ID_1155747752" MODIFIED="1504695772428" STYLE="bubble" TEXT="&#x907f;&#x514d;&#x9012;&#x5f52;&#x51fd;&#x6570; recursive function">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1504683673765" ID="ID_734250377" MODIFIED="1504695772428" STYLE="bubble" TEXT="reduce">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1504683676641" ID="ID_333917085" MODIFIED="1504695772428" STYLE="bubble" TEXT="from functools import reduce">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1504683706646" ID="ID_1148364190" MODIFIED="1504695772428" STYLE="bubble" TEXT="reduce(lambda x, y: x+y, map(lambda x: x**3, range(5)))">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1504683752799" ID="ID_1639689268" MODIFIED="1504695772428" STYLE="bubble" TEXT="&#x4ee5;&#x4e0a;&#x4e0e;sum([X**3 for x in range(5)])&#x4e00;&#x81f4;">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1504936012704" ID="ID_1444648988" MODIFIED="1504936017335" TEXT="tips">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1504936019101" ID="ID_1449972244" MODIFIED="1504936064671" TEXT="use zipping for complex data">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1504936128856" ID="ID_634216835" MODIFIED="1504936138214" TEXT="master string manipulation">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504936187138" ID="ID_867494742" MODIFIED="1504936207727" TEXT="int (x) for x in s.split(&quot;-&quot;)"/>
<node COLOR="#111111" CREATED="1504936215565" ID="ID_1036212720" MODIFIED="1504936240385" TEXT="&quot;\t&quot;.join([day_of_week, views])"/>
</node>
<node COLOR="#990000" CREATED="1504936258935" ID="ID_430992418" MODIFIED="1504936273165" TEXT="use iterators rather than lists">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504936291782" ID="ID_1580914204" MODIFIED="1504936305731" TEXT="ys = (f(x) for x in xs)"/>
<node COLOR="#111111" CREATED="1504936362842" ID="ID_511193880" MODIFIED="1504936368005" TEXT="it.izip"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1504684445833" ID="ID_931708108" MODIFIED="1504695772444" POSITION="right" STYLE="bubble" TEXT="python data managemrnt">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1504684455033" ID="ID_982041735" MODIFIED="1504695772444" STYLE="bubble" TEXT="pickle">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1504684457522" ID="ID_960790378" MODIFIED="1504695772444" STYLE="bubble" TEXT="Feather">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1504684464775" ID="ID_1937065501" MODIFIED="1504695772444" STYLE="bubble" TEXT="HDF5">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1504684470294" ID="ID_639987472" MODIFIED="1504695772444" STYLE="bubble" TEXT="JSON">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1504684486036" ID="ID_1056345333" MODIFIED="1504695772444" STYLE="bubble" TEXT="JSON object:python dict">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1504684498192" ID="ID_936134536" MODIFIED="1504695772444" STYLE="bubble" TEXT="JSON array:python list">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
</map>
