<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node BACKGROUND_COLOR="#ffffff" COLOR="#000000" CREATED="1501030560076" ID="ID_1050271174" MODIFIED="1501215639005" STYLE="bubble" TEXT="osmnx">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#0033ff" CREATED="1501030575517" ID="ID_1637241866" MODIFIED="1501215639005" POSITION="right" STYLE="bubble" TEXT="get shapefile from OpenStreetMap">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501031643438" ID="ID_932232912" MODIFIED="1501215639005" STYLE="bubble" TEXT="city = ox.gdf_from_place(&apos;Berkely, CA&apos;)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501031744371" ID="ID_520022044" MODIFIED="1501215639005" STYLE="bubble" TEXT="&#x4e5f;&#x53ef;&#x4ee5;&#x4f20;&#x5165;palaces = [ &apos;A&apos;,&apos;B&apos;]">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501031676516" ID="ID_1352131605" MODIFIED="1501215639005" STYLE="bubble" TEXT="ox.plot_shape(ox.project_gdf(city))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501213451257" ID="ID_1952555323" MODIFIED="1501215639005" TEXT="&#x67e5;&#x8be2;polygon&#x7684;&#x9762;&#x79ef;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501213653218" ID="ID_122502718" MODIFIED="1501215639005" TEXT="gdf = ox.gdf_from_place(place)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501213635581" ID="ID_1064835647" MODIFIED="1501215639005" TEXT="ox.project_gdf(gdf).unary_union.area">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#0033ff" CREATED="1501031516785" ID="ID_1356648620" MODIFIED="1501215639005" POSITION="left" STYLE="bubble" TEXT="&#x5b89;&#x88c5;:conda install -c conda-forge osmnx">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#0033ff" CREATED="1501031823960" ID="ID_1194886944" MODIFIED="1501215639004" POSITION="right" STYLE="bubble" TEXT="download and construct street networks">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501031869915" ID="ID_1211245328" MODIFIED="1501215639004" STYLE="bubble" TEXT="network types: drive, driver_service, walk, bike, all, all_private">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501031932827" ID="ID_1553194987" MODIFIED="1501215639004" STYLE="bubble" TEXT="a:street network from bounding box">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501033748371" ID="ID_1296371133" MODIFIED="1501215639004" STYLE="bubble" TEXT="G = ox.graph_from_bbox(22.42,22.03,113.80,113.39)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501033763987" ID="ID_1383386080" MODIFIED="1501215639004" STYLE="bubble" TEXT="G_projected = ox.project_graph(G)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501033770748" ID="ID_1453091633" MODIFIED="1501215639004" STYLE="bubble" TEXT="ox.plot_graph(G_projected)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501037872719" ID="ID_78952242" MODIFIED="1501215639004" STYLE="bubble" TEXT="b:street network from a point">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="idea"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501037902409" ID="ID_458483373" MODIFIED="1501215639004" STYLE="bubble" TEXT="G2 = ox.graph_from_point(location_point, distance =750, distance_type =&apos;bbox&apos;, network_type=&apos;drive&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#111111" CREATED="1501038041619" ID="ID_1073461363" MODIFIED="1501215639004" STYLE="bubble" TEXT="distance_type&#x8fd8;&#x53ef;&#x4ee5;&#x662f;&apos;network&apos;">
<edge STYLE="bezier"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501037967453" ID="ID_952778858" MODIFIED="1501215639004" STYLE="bubble" TEXT="G2 = ox.project_graph(G2)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501037989354" ID="ID_473967779" MODIFIED="1501215639004" STYLE="bubble" TEXT="fig, ax = ox.plot_graph(G2, node_size=30, node_color=&apos;#66cc66&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#111111" CREATED="1501038573201" ID="ID_920898921" MODIFIED="1501215801598" STYLE="bubble" TEXT="tips:&#x5c40;&#x90e8;&#x5730;&#x533a;&#x7684;&#x56fe;&#x6bd4;&#x8f83;&#x5c0f;&#xff0c;&#x4e0d;&#x9700;&#x8981;&#x4f7f;&#x7528;ox.project_graph">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501038214940" ID="ID_1091846663" MODIFIED="1501215639004" STYLE="bubble" TEXT="c:street network from an address">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501038235996" ID="ID_290217392" MODIFIED="1501215639003" STYLE="bubble" TEXT="G =ox.graph_from_address(&apos;&#x5e7f;&#x5dde;&#x5357;&#x7ad9;&apos;, distance =1000, network_type=&apos;drive&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#111111" CREATED="1501038608614" ID="ID_225392703" MODIFIED="1501215639003" STYLE="bubble" TEXT="&#x9ed8;&#x8ba4;&#x53c2;&#x6570;&#x503c;distance=1000, distance_type =&apos;bbox&apos;">
<edge STYLE="bezier"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501038528458" ID="ID_1276494172" MODIFIED="1501215639003" STYLE="bubble" TEXT="ox.plot_graph(G, node_color=&apos;w&apos;, node_edgecolor=&apos;k&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501039371647" ID="ID_1204258882" MODIFIED="1501215639003" STYLE="bubble" TEXT="d:street network from a place">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501039385054" ID="ID_418339515" MODIFIED="1501215639003" STYLE="bubble" TEXT="G2 = ox.graph_from_place(&apos;Piedmont, CA, USA&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501039418416" ID="ID_1825580460" MODIFIED="1501215639003" STYLE="bubble" TEXT="G2 = ox.project_graph(G2)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501039447607" ID="ID_1926045515" MODIFIED="1501215639003" STYLE="bubble" TEXT="fig, ax = ox.plot_graph(G2)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501039464872" ID="ID_575099561" MODIFIED="1501215639003" STYLE="bubble" TEXT="e:street network within a polygon">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="idea"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501040134081" ID="ID_821731768" MODIFIED="1501215639003" STYLE="bubble" TEXT="gz_district = gpd.read_file(&apos;D:/geodata/guangzhou_wgs84/&#x884c;&#x653f;&#x533a;wgs.shp&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501040142799" ID="ID_116077545" MODIFIED="1501215639003" STYLE="bubble" TEXT="tianhe = gz_district[gz_district[&apos;&#x540d;&#x79f0;&apos;]==&apos;&#x5929;&#x6cb3;&apos;]">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501040151593" ID="ID_411730133" MODIFIED="1501215639003" STYLE="bubble" TEXT="G6 = ox.graph_from_polygon(tianhe[&apos;geometry&apos;].iloc[0], network_type=&apos;drive_service&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501040169992" ID="ID_360027843" MODIFIED="1501215639003" STYLE="bubble" TEXT="fig, ax = ox.plot_graph(ox.project_graph(G6))">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501203614212" ID="ID_1153931695" MODIFIED="1501215639003" TEXT="create subway or railway">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="idea"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501209454183" ID="ID_1813792297" MODIFIED="1501215639003" TEXT="point = (23.1252, 113.2718)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501209495447" ID="ID_610847418" MODIFIED="1501215639003" TEXT="dist = 20000">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501209507807" ID="ID_778811069" MODIFIED="1501215639002" TEXT="G_metro2 = ox.graph_from_point(point, distance =dist, retain_all = True, truncate_by_edge = True, simplify = False,  network_type = &apos;none&apos;, infrastructure = &apos;way[&quot;railway&quot;~&quot;subway&quot;]&apos; )">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501209744564" ID="ID_1760903906" MODIFIED="1501215639002" TEXT="fig, ax = ox.plot_graph(G_metro2)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#0033ff" CREATED="1501040267126" ID="ID_594259911" MODIFIED="1501215639002" POSITION="right" STYLE="bubble" TEXT="simplify street network">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501040345494" ID="ID_1611254954" MODIFIED="1501215639002" STYLE="bubble" TEXT="&#x627e;&#x5230;&#x591a;&#x4f59;&#x7684;&#x8282;&#x70b9;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501040392232" ID="ID_1341534356" MODIFIED="1501215639002" STYLE="bubble" TEXT="nc = [ &apos;b&apos; if ox.is_endpoint(G, node) else &apos;r&apos; for node in G.nodes()]">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501040441878" ID="ID_984084965" MODIFIED="1501215639002" STYLE="bubble" TEXT="fig, ax = ox.plot_graph(G, node_color = nc, node_zorder =3)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501040487203" ID="ID_770795407" MODIFIED="1501215639002" STYLE="bubble" TEXT="simplify the network">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="idea"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501040507522" ID="ID_1227122191" MODIFIED="1501215639002" STYLE="bubble" TEXT="G2 = G.copy()">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501040522345" FOLDED="true" ID="ID_194355892" MODIFIED="1501298637551" STYLE="bubble" TEXT="G2 = ox.simplify_graph(G2)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="idea"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#111111" CREATED="1501041021392" ID="ID_779378209" MODIFIED="1501215639002" STYLE="bubble" TEXT="strict=False&#x4f1a;&#x4fdd;&#x7559;&#x66f4;&#x591a;&#x7684;&#x8282;&#x70b9;">
<edge STYLE="bezier"/>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501214397248" ID="ID_324912832" MODIFIED="1501215639002">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20462;&#21098;&#33410;&#28857;
    </p>
    <p>
      clean up the intersections
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501215257598" ID="ID_1867478371" MODIFIED="1501215639000">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      intersections = ox.clean_intersections(ox.project_graph(G1), tolerance=20, dead_ends=False)
    </p>
    <p>
      points = np.array([point.xy for point in intersections])
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501215277619" ID="ID_1259820364" MODIFIED="1501215761309">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">fig, ax = ox.plot_graph(ox.project_graph(G1), fig_height=10, show=False, close=False, node_alpha=0) </font>
    </p>
    <p>
      <font size="3">ax.scatter(x=points[:,0], y = points[:,1], zorder=2, color = '#66ccff', edgecolors='k') </font>
    </p>
    <p>
      <font size="3">plt.show()</font>
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501040573954" ID="ID_1564059438" MODIFIED="1501215638998" STYLE="bubble" TEXT="&#x627e;&#x5230;&#x5faa;&#x73af;&#x9053;&#x8def;&#x8282;&#x70b9;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501040585501" ID="ID_1592879953" MODIFIED="1501215638993" STYLE="bubble" TEXT="loops = [edge[0] for edge in G2.selfloop_edges()]">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501040631870" ID="ID_219160631" MODIFIED="1501215638993" STYLE="bubble" TEXT="nc = [ &apos;m&apos; if node in loops else &apos;b&apos; for node in G2.nodes()]">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501040666561" ID="ID_1914546066" MODIFIED="1501215638993" STYLE="bubble" TEXT="fig, ax = ox.plot_graph(G2, node_color=nc, node_zorder=3)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501041857219" ID="ID_711283501" MODIFIED="1501215638993" STYLE="bubble" TEXT="&#x6839;&#x636e;&#x9053;&#x8def;&#x957f;&#x5ea6;&#x4ea7;&#x751f;&#x989c;&#x8272;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501041868788" ID="ID_127392225" MODIFIED="1501215638993" STYLE="bubble" TEXT="ec = ox.get_edge_colors_by_attr(G6, attr=&apos;length&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501041914025" ID="ID_925724563" MODIFIED="1501215638993" STYLE="bubble" TEXT="fig, ax = ox.plot_graph(G6, node_size=0, edge_color=ec, edge_linewidth=1.5)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501210281282" ID="ID_97565763" MODIFIED="1501215638992" TEXT="&#x67e5;&#x8be2;&#x4e24;&#x70b9;&#x4e4b;&#x95f4;&#x7684;&#x8ddd;&#x79bb;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="idea"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501210300130" ID="ID_256021132" MODIFIED="1501215638992" TEXT="&#x627e;&#x5230;origin_point&#x548c;desti_point&#x6700;&#x8fd1;&#x7684;&#x8282;&#x70b9;">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#111111" CREATED="1501212153835" ID="ID_142860034" MODIFIED="1501215638992">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      origin_point = (23.1292, 113.3726)
    </p>
    <p>
      desti_point =( 23.1232,113.3641)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#111111" CREATED="1501212181332" ID="ID_363239618" MODIFIED="1501215638992">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      origin_node = ox.get_nearest_node(G1, origin_point)
    </p>
    <p>
      desti_node = ox.get_nearest_node(G1, desti_point)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501210330267" ID="ID_1556304133" MODIFIED="1501215638992" TEXT="&#x6839;&#x636e;&#x6700;&#x8fd1;&#x8282;&#x70b9;&#x67e5;&#x627e;&#x6700;&#x77ed;&#x8def;&#x5f84;">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#111111" CREATED="1501212202575" ID="ID_1022655838" MODIFIED="1501215638992" TEXT="route = nx.shortest_path(G1, origin_node, desti_node, weight=&apos;length&apos;)">
<edge STYLE="bezier"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#111111" CREATED="1501212274799" ID="ID_1462527448" MODIFIED="1501215638992" TEXT="nx.shortest_path_length(G1, origin_node, desti_node, weight=&apos;length&apos;)">
<edge STYLE="bezier"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#111111" CREATED="1501212263961" ID="ID_409131122" MODIFIED="1501215638992" TEXT="fig, ax = ox.plot_graph_route(G1, route, origin_point=origin_point, destination_point= desti_point)">
<edge STYLE="bezier"/>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501213268044" ID="ID_1835852509" MODIFIED="1501215638992" TEXT="&#x67e5;&#x8be2;&#x8def;&#x7f51;&#x5c5e;&#x6027;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="idea"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501213288721" ID="ID_373593715" MODIFIED="1501215638992" TEXT="stats = ox.basic_stats(G1)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#111111" CREATED="1501214343295" ID="ID_2113903" MODIFIED="1501215638992" TEXT="circuity_avg&#x8def;&#x7f51;&#x7684;&#x66f2;&#x7ebf;&#x7cfb;&#x6570;">
<edge STYLE="bezier"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501214330297" ID="ID_430342304" MODIFIED="1501215638992" TEXT="extented_stats = ox.extented_stats(G, ecc =True, bc=True, cc =True)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501049669475" ID="ID_1477671057" MODIFIED="1501215638992" STYLE="bubble" TEXT="&#x5f15;&#x5165;&#x53ef;&#x89c6;&#x5316;&#x67e5;&#x8be2;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="idea"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501049680339" ID="ID_1465508495" MODIFIED="1501215638992" STYLE="bubble" TEXT="import folium">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501049686559" ID="ID_467537469" MODIFIED="1501215638992" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      map = folium.Map(location = [23.1255, 113.3751],&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      tiles= 'Stamen Toner',&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      zoom_start =13)
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501049718035" ID="ID_1359710006" MODIFIED="1501215638992" STYLE="bubble" TEXT="map.add_child(folium.LatLngPopup())">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501049742296" ID="ID_453022082" MODIFIED="1501215638992" STYLE="bubble" TEXT="map">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#0033ff" CREATED="1501042195569" ID="ID_1996847096" MODIFIED="1501215638992" POSITION="right" STYLE="bubble" TEXT="save the data">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501042208850" ID="ID_513689863" MODIFIED="1501215638992" STYLE="bubble" TEXT="save as shp">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501049774654" ID="ID_1498240153" MODIFIED="1501215638991" STYLE="bubble" TEXT="ox.save_load.save_graph_shapefile(G6, filename=&apos;tianhe_distr&apos;, folder=None, encoding=&apos;utf-8&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501049847948" ID="ID_99658474" MODIFIED="1501215638991" STYLE="bubble" TEXT="ox.save_gdf_shapfile(gdf, filename=&apos;place-shape&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501049899023" ID="ID_107396290" MODIFIED="1501215638991" STYLE="bubble" TEXT="save as GraphML">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501049908514" ID="ID_832966788" MODIFIED="1501215638991" STYLE="bubble" TEXT="ox.save_graphml(G_projected, filename =&apos;network.graphml&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#00b439" CREATED="1501049979356" ID="ID_1747322314" MODIFIED="1501215638991" STYLE="bubble" TEXT="save as SVG">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="1501049986201" ID="ID_1817084730" MODIFIED="1501215638990" STYLE="bubble" TEXT="fig, ax = ox.plot_graph(G_projected, show =False, save=True, filename=&apos;network&apos;, file_format=&apos;svg&apos;)">
<edge STYLE="bezier"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffff" COLOR="#0033ff" CREATED="1501121280723" ID="ID_170782344" MODIFIED="1501215638990" POSITION="left" TEXT="requests&#x7248;&#x672c;&#x9700;&#x8981;1.14">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
</node>
</node>
</map>
