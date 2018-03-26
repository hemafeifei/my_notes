<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1503660340577" ID="ID_1309243275" MODIFIED="1503660541605" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Python
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1503660373817" ID="ID_1320313273" MODIFIED="1503661801637" POSITION="right" STYLE="bubble" TEXT="File handling">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1503660394686" ID="ID_299754581" MODIFIED="1503660512424" STYLE="bubble" TEXT="file opening">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503660403968" ID="ID_863938440" MODIFIED="1503660512424" STYLE="bubble" TEXT="fobj = open(&quot;love.txt&quot;)">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503660425468" ID="ID_491348970" MODIFIED="1503660512427" STYLE="bubble" TEXT="closing a file">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503660438324" ID="ID_988616094" MODIFIED="1503660512428" STYLE="bubble" TEXT="fobj.close()">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503660455818" ID="ID_1253691073" MODIFIED="1503660512429" STYLE="bubble" TEXT="reading a file">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503660463698" ID="ID_1430456332" MODIFIED="1503660512429" STYLE="bubble" TEXT="fobj.read()">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503660492032" ID="ID_602169602" MODIFIED="1503660577853" STYLE="bubble" TEXT="fobj.readline() &#x8bfb;&#x53d6;&#x4e00;&#x884c;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503660562236" ID="ID_809624661" MODIFIED="1503660588995" TEXT="fobj.readlines() &#x8bfb;&#x53d6;&#x6240;&#x6709;&#x884c;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503660610105" ID="ID_834864482" MODIFIED="1503660642819">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      for x in fobj:
    </p>
    <p>
      &#160;&#160;&#160;&#160;print(x, end =' ')
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503660668233" ID="ID_1736843909" MODIFIED="1503660673152" TEXT="writing in a file">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503660727521" ID="ID_957019671" MODIFIED="1503660756749" TEXT="fobj = open(&quot;ircon.txt&quot;, &quot;w&quot;)">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503660681276" ID="ID_260725025" MODIFIED="1503660709098">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      fobj.write('powerwork\n')
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1505816242802" ID="ID_1739475732" MODIFIED="1507882067743" TEXT="&#x8fed;&#x4ee3;&#x8655;&#x7406;TXT&#x6587;&#x4ef6;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1505816231496" ID="ID_362388335" MODIFIED="1505816256019">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      f2 = open('D:/daten/exit_table_20150701-20150710_final.txt', 'w')
    </p>
    <p>
      with open(&quot;D:/daten/exit_table_20150701-20150710.txt&quot;) as infile:
    </p>
    <p>
      &#160;&#160;&#160;&#160;for line in infile:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;f2.write(line.replace(&quot;'&quot;, &quot;&quot;))
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1505816342171" ID="ID_172606241" MODIFIED="1505816372681">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      with open('100temp.txt') as in_file, open('new_100temp.txt', 'w') as out_file:
    </p>
    <p>
      &#160;&#160;&#160;&#160;for line1, line2, line3, line4 in grouper(in_file, 4):
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# modify 4 lines
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;out_file.writelines([line1, line2, line3, line4])
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1507882068786" ID="ID_789436288" MODIFIED="1507882073199" TEXT="&#x5904;&#x7406;&#x591a;&#x4e2a;&#x6587;&#x4ef6;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1507882080990" ID="ID_818035141" MODIFIED="1507882112176">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      files = []
    </p>
    <p>
      for file in os.listdir(path):
    </p>
    <p>
      &#160;&#160;&#160;&#160;if file.startswith('tad'):
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;files.append(file)
    </p>
  </body>
</html>
</richcontent>
</node>
<node COLOR="#111111" CREATED="1507882129186" ID="ID_1043852454" MODIFIED="1507882134077">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      def file_transform(in_path, out_path):
    </p>
    <p>
      &#160;&#160;&#160;&#160;with open(in_path, 'r') as r, open(out_path, 'w') as w:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;for line in r:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;w.write(line.replace(&quot;'&quot;, &quot;&quot;))
    </p>
  </body>
</html>
</richcontent>
</node>
<node COLOR="#111111" CREATED="1507882135724" ID="ID_1327873499" MODIFIED="1507882173044">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      path = 'D:/daten/CSV/GZMTR/table/'
    </p>
    <p>
      out_path = 'D:/daten/CSV/GZMTR/table_out/'
    </p>
    <p>
      for file in files:
    </p>
    <p>
      &#160;&#160;&#160;&#160;file_transform(path+file, out_path+file)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1503661737669" ID="ID_1347384609" MODIFIED="1503661741966" POSITION="right" TEXT="Exceptions">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1503661792189" ID="ID_295796409" MODIFIED="1504763879017" TEXT="try-except-finally">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503661818224" ID="ID_359154838" MODIFIED="1503661924010">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      try:
    </p>
    <p>
      &#160;&#160;fobj = open(&quot;hello.txt&quot;,&quot;w&quot;)
    </p>
    <p>
      except ZeroDivisionError:
    </p>
    <p>
      &#160;&#160;print(&quot;We have a error&quot;)
    </p>
    <p>
      finally:
    </p>
    <p>
      &#160;&#160;fobj.close()
    </p>
    <p>
      &#160;&#160;print(&quot;Closing the file&quot;)
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
</map>
