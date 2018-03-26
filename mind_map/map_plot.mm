<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1511353112992" ID="ID_171239641" MODIFIED="1511353112992" TEXT="&#x65b0;&#x5efa;&#x601d;&#x7ef4;&#x5bfc;&#x56fe;">
<node CREATED="1511353161451" ID="ID_694653930" MODIFIED="1511353255782" POSITION="right" TEXT="gpx&#x8f68;&#x8ff9;&#x56fe;">
<node CREATED="1511353289960" ID="ID_86562264" MODIFIED="1511353292351" TEXT="python">
<node BACKGROUND_COLOR="#99ccff" CREATED="1511354694967" ID="ID_1140065759" MODIFIED="1511354751668" TEXT="gpxpy&#x5305;"/>
<node CREATED="1511353293506" ID="ID_1891649759" MODIFIED="1511353323306" TEXT="gpx = gpxpy.parse(gpx_file)"/>
<node CREATED="1511353324699" ID="ID_935176409" MODIFIED="1511353383725" TEXT="lat = [] lon = []  &#xa;for track in gpx.tracks:    &#xa;&#x9; for segment in track.segments:        &#xa;&#x9;&#x9; for point in segment.points:             &#xa;&#x9;&#x9;&#x9;lat.append(point.latitude)             &#xa;&#x9;&#x9;&#x9;lon.append(point.longitude)"/>
<node CREATED="1511353396315" ID="ID_1978443426" MODIFIED="1511353401521" TEXT="&#x53c2;&#x8003;http://andykee.com/visualizing-strava-tracks-with-python.html"/>
<node CREATED="1511354561019" ID="ID_659083564" MODIFIED="1511354573989" TEXT="&#x53c2;&#x8003;http://research.ganse.org/datasci/gps/">
<node CREATED="1511354576063" FOLDED="true" ID="ID_338992510" MODIFIED="1512090905602" TEXT="MPLleaflet">
<node CREATED="1511354634926" ID="ID_342899245" MODIFIED="1511354639525">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <pre style="font-family: monospace; font-size: 13px; display: block; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(51, 51, 51); background-color: rgb(247, 247, 247); border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; white-space: pre-wrap; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px"><font color="rgb(0, 128, 0)"><b>import</b></font> <font color="rgb(0, 0, 255)"><b>mplleaflet</b></font>   <font color="rgb(64, 128, 128)"><i># (https://github.com/jwass/mplleaflet)</i></font>
<font color="rgb(0, 128, 0)"><b>import</b></font> <font color="rgb(0, 0, 255)"><b>matplotlib.pyplot</b></font> <font color="rgb(0, 128, 0)"><b>as</b></font> <font color="rgb(0, 0, 255)"><b>plt</b></font>
plt<font color="rgb(102, 102, 102)">.</font>plot(df[<font color="rgb(186, 33, 33)">'Longitude'</font>], df[<font color="rgb(186, 33, 33)">'Latitude'</font>], color<font color="rgb(102, 102, 102)">=</font><font color="rgb(186, 33, 33)">'red'</font>, marker<font color="rgb(102, 102, 102)">=</font><font color="rgb(186, 33, 33)">'o'</font>, markersize<font color="rgb(102, 102, 102)">=3</font>, linewidth<font color="rgb(102, 102, 102)">=2</font>, alpha<font color="rgb(102, 102, 102)">=0.4</font>)
<font color="rgb(64, 128, 128)"><i>#mplleaflet.display(fig=ax.figure)  # shows map inline in Jupyter but takes up full width</i></font>
mplleaflet<font color="rgb(102, 102, 102)">.</font>show(path<font color="rgb(102, 102, 102)">=</font><font color="rgb(186, 33, 33)">'mpl.html'</font>)  <font color="rgb(64, 128, 128)"><i># saves to html file for display below</i></font></pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511354588432" FOLDED="true" ID="ID_121997109" MODIFIED="1511361336903" TEXT="Folium">
<node CREATED="1511354655684" ID="ID_1098430986" MODIFIED="1511354658975">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <pre style="font-family: monospace; font-size: 13px; display: block; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: inherit; color: rgb(51, 51, 51); background-color: rgb(247, 247, 247); border-top-style: none; border-top-width: medium; border-right-style: none; border-right-width: medium; border-bottom-style: none; border-bottom-width: medium; border-left-style: none; border-left-width: medium; white-space: pre-wrap; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px"><font color="rgb(0, 128, 0)"><b>import</b></font> <font color="rgb(0, 0, 255)"><b>folium</b></font>   <font color="rgb(64, 128, 128)"><i># (https://pypi.python.org/pypi/folium)</i></font>
mymap <font color="rgb(102, 102, 102)">=</font> folium<font color="rgb(102, 102, 102)">.</font>Map( location<font color="rgb(102, 102, 102)">=</font>[ df<font color="rgb(102, 102, 102)">.</font>Latitude<font color="rgb(102, 102, 102)">.</font>mean(), df<font color="rgb(102, 102, 102)">.</font>Longitude<font color="rgb(102, 102, 102)">.</font>mean() ], zoom_start<font color="rgb(102, 102, 102)">=14</font>)
<font color="rgb(64, 128, 128)"><i>#folium.PolyLine(df[['Latitude','Longitude']].values, color=&quot;red&quot;, weight=2.5, opacity=1).add_to(mymap)</i></font>
<font color="rgb(0, 128, 0)"><b>for</b></font> coord <font color="rgb(170, 34, 255)"><b>in</b></font> df[[<font color="rgb(186, 33, 33)">'Latitude'</font>,<font color="rgb(186, 33, 33)">'Longitude'</font>]]<font color="rgb(102, 102, 102)">.</font>values:
    folium<font color="rgb(102, 102, 102)">.</font>CircleMarker(location<font color="rgb(102, 102, 102)">=</font>[coord[<font color="rgb(102, 102, 102)">0</font>],coord[<font color="rgb(102, 102, 102)">1</font>]], radius<font color="rgb(102, 102, 102)">=1</font>,color<font color="rgb(102, 102, 102)">=</font><font color="rgb(186, 33, 33)">'red'</font>)<font color="rgb(102, 102, 102)">.</font>add_to(mymap)
<font color="rgb(64, 128, 128)"><i>#mymap   # shows map inline in Jupyter but takes up full width</i></font>
mymap<font color="rgb(102, 102, 102)">.</font>save(<font color="rgb(186, 33, 33)">'fol.html'</font>)  <font color="rgb(64, 128, 128)"><i># saves to html file for display below</i></font></pre>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1511353632865" ID="ID_714394863" MODIFIED="1511492709087" TEXT="R">
<node CREATED="1511353638763" ID="ID_1062784696" MODIFIED="1511355106314">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      library: plotKML&#160;&#160;ggplot2 maps
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1511355116089" ID="ID_61682542" MODIFIED="1511355131736">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21442;&#32771;&#65306;http://dangoldin.com/2014/02/05/visualizing-gps-data-in-r/
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1511359732898" ID="ID_932886675" MODIFIED="1511359775624" TEXT="gpx&#x51fd;&#x6570;&#x4e0d;&#x80fd;&#x7528;&#xff0c;&#x53c2;&#x8003;https://www.visualcinnamon.com/2014/03/running-paths-in-amsterdam-step-2.html &#x4fee;&#x6539;&#x4e86;&#x51fd;&#x6570;">
<node CREATED="1511359791810" ID="ID_295502971" MODIFIED="1511359810371">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1511355714823" ID="ID_397572974" MODIFIED="1511355721971" POSITION="right" TEXT="gpx&#x5236;&#x4f5c;&#x52a8;&#x753b;">
<node CREATED="1511355723752" ID="ID_1506251728" MODIFIED="1511355732065">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      https://gis.stackexchange.com/questions/191955/how-to-create-an-animated-route-map-%C3%A0-la-indiana-jones-in-qgis
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1511355927251" ID="ID_80193661" MODIFIED="1511355938210" TEXT="trackanimation">
<node CREATED="1511355942983" ID="ID_634250967" MODIFIED="1511355951772" TEXT="&#x53c2;&#x8003;https://pypi.python.org/pypi/trackanimation"/>
</node>
<node CREATED="1511433743822" ID="ID_1870220946" MODIFIED="1511433759788" TEXT="&#x672a;&#x80fd;&#x5b9e;&#x73b0;2017.11"/>
</node>
</node>
</map>
