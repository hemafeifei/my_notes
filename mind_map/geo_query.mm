<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1501057810175" ID="ID_523417721" MODIFIED="1501839008314">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31354;&#38388;&#25968;&#25454;&#26597;&#35810;
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1501057842657" ID="ID_51148011" MODIFIED="1501839008264" POSITION="right" TEXT="geopy">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1501057848610" ID="ID_272657843" MODIFIED="1501839008267">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      geocoding
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="idea"/>
<node COLOR="#990000" CREATED="1501058136750" ID="ID_1387425885" MODIFIED="1501839008268" TEXT="&#x6839;&#x636e;&#x5730;&#x5740;&#x67e5;&#x8be2;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1501057866103" ID="ID_954566346" MODIFIED="1501839008268" TEXT="from geopy.geocoders import Nominatim"/>
<node COLOR="#111111" CREATED="1501057887217" ID="ID_1404124746" MODIFIED="1501839008268" TEXT="geolocator = Nominatim()"/>
<node COLOR="#111111" CREATED="1501057901929" ID="ID_147524859" MODIFIED="1501839008269" TEXT="location = geolocator.geocode(&quot;175 5th Avenue NYC&quot;)"/>
<node COLOR="#111111" CREATED="1501058067709" ID="ID_1269473083" MODIFIED="1501839008269" TEXT="print location.address, location.lattitude, location.longitude"/>
</node>
<node COLOR="#990000" CREATED="1501058174375" ID="ID_474859341" MODIFIED="1501839008269" TEXT="&#x6839;&#x636e;&#x5750;&#x6807;&#x67e5;&#x8be2;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1501058198383" ID="ID_1085643897" MODIFIED="1501839008270" TEXT="location = geolocator.reverse(&quot;52.509669, 13.376294&quot;)"/>
<node COLOR="#111111" CREATED="1501058211503" ID="ID_1492750524" MODIFIED="1501839008270" TEXT="print location.address, location.raw"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1501058258028" ID="ID_1850508257" MODIFIED="1501839008272" TEXT="measure distance">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1501058276030" ID="ID_1372309690" MODIFIED="1501839008273" TEXT="vincenty distance">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1501058287008" ID="ID_532655237" MODIFIED="1501839008273" TEXT="from geopy.distance import vincenty"/>
<node COLOR="#111111" CREATED="1501058305787" ID="ID_1573441980" MODIFIED="1501839008273">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      start = (40.763939,-73.979027)
    </p>
    <p>
      end = (40.710087,-74.005333)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1501058426114" ID="ID_906915802" MODIFIED="1501839008276" TEXT="great_circle distance">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1503303076650" ID="ID_971674867" MODIFIED="1503303080679" POSITION="right" TEXT="geocoder">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1503303124304" ID="ID_287388237" MODIFIED="1503303144025" TEXT="geocoder.google/baidu/...">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1511488797783" ID="ID_1860095850" MODIFIED="1511488811076" TEXT="&#x6839;&#x636e;&#x5730;&#x5740;&#x67e5;&#x8be2;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1511488812634" ID="ID_90449185" MODIFIED="1511488819356" TEXT="import geocoder"/>
<node COLOR="#111111" CREATED="1511488819836" ID="ID_1657031606" MODIFIED="1511488843683" TEXT="g = geocoder.osm(&apos;&#x5e7f;&#x5dde;&#x706b;&#x8f66;&#x7ad9;&apos;)"/>
<node COLOR="#111111" CREATED="1511488844421" ID="ID_1217146086" MODIFIED="1511488849877" TEXT="g.json"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1501058640156" ID="ID_237628807" MODIFIED="1501839008280" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      googlemaps
    </p>
    <p>
      &quot;pip install -U googlemaps&quot;
    </p>
  </body>
</html></richcontent>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1501061135386" ID="ID_1897491599" MODIFIED="1501839008281" TEXT="geocoding">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1501061573502" ID="ID_1844569552" MODIFIED="1501839008281" TEXT="&#x6839;&#x636e;&#x5730;&#x5740;&#x67e5;&#x8be2;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1501061495246" ID="ID_548907260" MODIFIED="1501839008281" TEXT="gmaps = googlemaps.Client(key= &apos;AIzaSyDYuEeiDHlQy9JKjTh_14P-lX47eUkaX-k&apos;)"/>
<node COLOR="#111111" CREATED="1501061525429" ID="ID_757566448" MODIFIED="1511487951326" TEXT="geocode_result = gmaps.geocode(&apos;1200 bookstore, guangzhou, china&apos;)">
<node COLOR="#111111" CREATED="1501058365200" ID="ID_304891821" MODIFIED="1501839008282">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      print vincenty(start,end)
    </p>
    <p>
      or print vincenty(start,end).miles
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1501061593154" ID="ID_689274729" MODIFIED="1501839008283" TEXT="geocode_result[0][&apos;geometry&apos;][&apos;location&apos;]&#x53ef;&#x4ee5;&#x67e5;&#x770b;latlng"/>
</node>
<node COLOR="#990000" CREATED="1501061692868" ID="ID_17599017" MODIFIED="1501839008284" TEXT="&#x6839;&#x636e;&#x5750;&#x6807;&#x67e5;&#x8be2;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1501061700651" ID="ID_1710169358" MODIFIED="1501839008284" TEXT="reverse_geocode_result = gmaps.reverse_geocede((40.763939,-73.979027))"/>
<node COLOR="#111111" CREATED="1501061789815" ID="ID_34943344" MODIFIED="1501839008284" TEXT=""/>
</node>
</node>
<node COLOR="#00b439" CREATED="1501061819072" ID="ID_1166302554" MODIFIED="1501839008285" TEXT="directions">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1501061843526" ID="ID_1569406939" MODIFIED="1501839008287">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36215;&#28857;
    </p>
    <p>
      &#32456;&#28857;
    </p>
    <p>
      mode = driving/transit/walking/bicycling
    </p>
    <p>
      depature_time
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1501062124186" ID="ID_884998808" MODIFIED="1501839008288" TEXT="now = datetime.now()"/>
<node COLOR="#111111" CREATED="1501062018209" ID="ID_1834374169" MODIFIED="1501839008289">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      direction_result = gmaps.directions(
    </p>
    <p>
      &quot;&#24191;&#24030;&#21335;&#31449;&quot;,&quot;&#24191;&#24030;&#19996;&#31449;&quot;,model =&quot;transit&quot;,depature_time = now)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1501061823613" ID="ID_784611117" MODIFIED="1501839008291" TEXT="distance_matrix">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1501062147019" ID="ID_959851918" MODIFIED="1502273098420">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36215;&#28857;
    </p>
    <p>
      &#32456;&#28857;
    </p>
    <p>
      mode
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1501062170498" ID="ID_1015292683" MODIFIED="1501839008294">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      distance_result = gmaps.distance_matrix(
    </p>
    <p>
      (40.763939,-73.979027),(40.710087,-74.005333),mode =&quot;driving&quot;)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1501062568490" ID="ID_1669879560" MODIFIED="1501839008295" TEXT="roads">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1501062710789" ID="ID_1367167800" MODIFIED="1501839008297">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      snap_to_roads
    </p>
    <p>
      path =&#160;latlng| latlng| latlng
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1501062716225" ID="ID_549434238" MODIFIED="1501839008299" TEXT="gmaps.snap_to_roads(path=&apos;-35.27801,149.12958|-35.28032,149.12907&apos;)"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1501062577789" ID="ID_462249238" MODIFIED="1501839008299" TEXT="places">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1501140544573" ID="ID_808657360" MODIFIED="1501839008304" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21028;&#26029;&#28857;&#26159;&#21542;&#33853;&#22312;&#19968;&#20010;&#38754;
    </p>
    <p>
      shapely.geometry
    </p>
  </body>
</html></richcontent>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1501142153685" ID="ID_918268473" MODIFIED="1501839008308" TEXT="Point((40.8025398254, -73.9679870605))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1501142173915" ID="ID_86509660" MODIFIED="1501839008313">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      gdf.geometry[305].contains(Point(( -73.978,40.7642)))&#160;
    </p>
    <p>
      &#27880;&#24847;&#32463;&#32428;&#24230;&#35201;&#21453;&#30528;&#20889;
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1501322854441" ID="ID_1726194147" MODIFIED="1501839008314" TEXT="point.within(polygon)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1502274334083" ID="ID_1246446154" MODIFIED="1502274338763" POSITION="right" TEXT="networkX">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1502274377147" ID="ID_750560772" MODIFIED="1502274389780" TEXT="add_node">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1502274390902" ID="ID_989187581" MODIFIED="1502274463310" TEXT="&#x589e;&#x52a0;&#x8282;&#x70b9;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1502274431682" ID="ID_500058808" MODIFIED="1502274435200">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      G2 = nx.Graph()
    </p>
    <p>
      G2.add_node('zhongda', pos = (113.28774629999999,23.094707329999999))
    </p>
    <p>
      G2.add_node('dongpu', pos = (113.39612509999999,23.11191208))
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1502274464733" ID="ID_837407002" MODIFIED="1502274471046" TEXT="&#x751f;&#x6210;&#x8282;&#x70b9;&#x5c5e;&#x6027;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1502274472347" ID="ID_1869256946" MODIFIED="1502274475712" TEXT="pos = nx.get_node_attributes(G2, &apos;pos&apos;)"/>
</node>
<node COLOR="#990000" CREATED="1502274480510" ID="ID_1709800846" MODIFIED="1502274488562" TEXT="draw node">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1502274489911" ID="ID_27838922" MODIFIED="1502274506177" TEXT="nx.draw(G2, pos)"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1502274514131" ID="ID_659559226" MODIFIED="1502274518118" TEXT="add_edge">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1502274600491" ID="ID_1063319367" MODIFIED="1502274611261" TEXT="&#x4ece;dict&#x751f;&#x6210;edges">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1502274613197" ID="ID_1693928081" MODIFIED="1502274626671">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      edges = [ ]
    </p>
    <p>
      for key in dict_dis.keys():
    </p>
    <p>
      &#160;&#160;&#160;&#160;[edges.append((key, k, v)) for k, v in dict_dis[key].items()]
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1502274684165" ID="ID_939035042" MODIFIED="1502274691584" TEXT="&#x751f;&#x6210;edges&#x5c5e;&#x6027;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1502274692924" ID="ID_699465279" MODIFIED="1502274694439" TEXT="G.add_weighted_edges_from(edges)"/>
</node>
<node COLOR="#990000" CREATED="1502276657688" ID="ID_110424886" MODIFIED="1502276666149" TEXT="draw edges">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1502276678016" ID="ID_85862185" MODIFIED="1502276679760" TEXT="nx.draw(G,pos)"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1504576794296" ID="ID_1527558673" MODIFIED="1504576798040" TEXT="mplleaflet">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1504576887795" ID="ID_732551023" MODIFIED="1504576905079" TEXT="&#x751f;&#x6210;&#x5730;&#x56fe;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1504576907064" ID="ID_835496429" MODIFIED="1504576923607" TEXT="fig, ax = plt.subplots()"/>
<node COLOR="#111111" CREATED="1504576925054" ID="ID_1399950755" MODIFIED="1504576949351" TEXT="nx.draw_networkx_nodes(G, pos,..)"/>
<node COLOR="#111111" CREATED="1504576950169" ID="ID_1852153096" MODIFIED="1504576955093" TEXT="..edges.."/>
<node COLOR="#111111" CREATED="1504576955844" ID="ID_404145826" MODIFIED="1504577009966" TEXT="mpl.display(fig=ax.figure, tiles=&apos;cartodb_positron&apos;)"/>
</node>
<node COLOR="#990000" CREATED="1504577026639" ID="ID_1781310202" MODIFIED="1504577080319">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mpl.display()&#22312;&#20132;&#20114;&#26639;&#26174;&#31034;
    </p>
    <p>
      mpl.show()&#22312;&#26032;&#31383;&#21475;&#26174;&#31034;
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
</map>
