<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1501126866061" ID="ID_271576164" MODIFIED="1508400603995" STYLE="bubble" TEXT="&#x65f6;&#x95f4;&#x5e8f;&#x5217;">
<node CREATED="1501126885236" ID="ID_1110804519" MODIFIED="1508400603995" POSITION="right" STYLE="bubble" TEXT="timestamp">
<node CREATED="1501127007555" ID="ID_1467599240" MODIFIED="1508400603995" STYLE="bubble" TEXT="&#x65e5;&#x671f;; t.date()"/>
<node CREATED="1508405916820" ID="ID_1499377929" MODIFIED="1508405926356" TEXT="&#x65f6;&#x95f4;&#xff1b;t.time()"/>
<node CREATED="1501127021209" ID="ID_1816073101" MODIFIED="1508400603995" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24037;&#20316;&#26085; t.weekday() &#21608;&#19968;&#20026;0&#65292;&#21608;&#26085;&#20026;6.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1501127075472" ID="ID_1569265450" MODIFIED="1508400603995" STYLE="bubble" TEXT="&#x5c0f;&#x65f6; t.hour"/>
</node>
<node CREATED="1508402539720" ID="ID_1826065853" MODIFIED="1508402543119" POSITION="right" TEXT="freq">
<node CREATED="1508402545298" ID="ID_815907431" MODIFIED="1508404476853">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      D W M MS
    </p>
    <p>
      H T(min) S
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1508404099892" ID="ID_481465809" MODIFIED="1508404104248" TEXT="&#x4e00;&#x4e9b;&#x8868;&#x683c;">
<node CREATED="1508404106214" ID="ID_865708277" MODIFIED="1508404108139" TEXT="Offset Aliases"/>
<node CREATED="1508404108645" ID="ID_1015335429" MODIFIED="1508404121219" TEXT="DateOffset objects"/>
<node CREATED="1508404121618" ID="ID_669141659" MODIFIED="1508404130389" TEXT="Time/Date Components"/>
</node>
</node>
<node CREATED="1501133955700" ID="ID_1870572891" MODIFIED="1508400603995" POSITION="right" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      timestamp to epoch time
    </p>
  </body>
</html></richcontent>
<node CREATED="1501133962325" ID="ID_1647613124" MODIFIED="1508400603996" STYLE="bubble" TEXT="import time"/>
<node CREATED="1501133970408" ID="ID_432959161" MODIFIED="1508400603996" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      time_delta=int(time.mktime(time.strptime(str(t),pattern)))
    </p>
    <p>
      with pattern = '%Y-%m-%d %H:%M:%S'
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1501134096850" ID="ID_1779914375" MODIFIED="1508400603996" POSITION="right" STYLE="bubble" TEXT="epoch time to timestamp">
<node CREATED="1501134163762" ID="ID_345092796" MODIFIED="1508400603996" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      time_delta
    </p>
    <p>
      time.strftime(pattern, time.localtime(time_delta))
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1508400545250" ID="ID_1810258018" MODIFIED="1508400603996" POSITION="right" STYLE="bubble" TEXT="pandas&#x65f6;&#x95f4;&#x76f8;&#x5173;&#x7684;&#x5bf9;&#x8c61;">
<node CREATED="1508400560485" ID="ID_1863917051" MODIFIED="1508400603996" STYLE="bubble" TEXT="Timestamp">
<node CREATED="1508400628170" ID="ID_422974686" MODIFIED="1508400637160" TEXT="&#x5355;&#x4e2a;&#x65f6;&#x95f4;&#x6233;">
<node CREATED="1508400640386" ID="ID_1457868181" MODIFIED="1508400658766" TEXT="pd.to_datetime, pd.Timestamp"/>
</node>
</node>
<node CREATED="1508400568006" ID="ID_727924165" MODIFIED="1508400603996" STYLE="bubble" TEXT="DatetimeIndex">
<node CREATED="1508400662352" ID="ID_228445300" MODIFIED="1508400672980" TEXT="&#x65f6;&#x95f4;&#x6233;index">
<node CREATED="1508400674433" ID="ID_728790811" MODIFIED="1508400699623" TEXT="to_datetime, date_range, DateTimeIndex">
<node CREATED="1508401043155" ID="ID_970162376" MODIFIED="1508401047057" TEXT="rng = pd.date_range(&apos;1/1/2011&apos;, periods=72, freq=&apos;H&apos;)"/>
</node>
</node>
</node>
<node CREATED="1508400575931" ID="ID_678780791" MODIFIED="1508400603996" STYLE="bubble" TEXT="Period">
<node CREATED="1508400706803" ID="ID_1366556130" MODIFIED="1508400713003" TEXT="&#x5355;&#x72ec;&#x7684;&#x65f6;&#x95f4;&#x8de8;&#x5ea6;">
<node CREATED="1508400715738" ID="ID_1473935986" MODIFIED="1508400719503" TEXT="Period"/>
</node>
</node>
<node CREATED="1508400580006" ID="ID_1644455260" MODIFIED="1508400603996" STYLE="bubble" TEXT="PeriodIndex">
<node CREATED="1508400722131" ID="ID_1541577304" MODIFIED="1508400741001" TEXT="&#x65f6;&#x95f4;&#x8de8;&#x5ea6;&#x7684;index">
<node CREATED="1508400742165" ID="ID_213636079" MODIFIED="1508400753279" TEXT="period_range, PeriodIndex">
<node CREATED="1508401017533" ID="ID_717577549" MODIFIED="1508401028666" TEXT="rng= pd.period_range(&apos;2012-05&apos;, freq=&apos;M&apos;, periods=12)"/>
</node>
</node>
</node>
</node>
</node>
</map>
