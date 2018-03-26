<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1503970629580" ID="ID_715586184" MODIFIED="1503976241812" TEXT="&#x65b0;&#x5efa;&#x601d;&#x7ef4;&#x5bfc;&#x56fe;">
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1503970689619" ID="ID_134570166" MODIFIED="1511590063805" POSITION="right" TEXT="&#x7edf;&#x8ba1;&#x5206;&#x6790;">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1503970720662" ID="ID_1054770501" MODIFIED="1503976241789" TEXT="&#x63cf;&#x8ff0;&#x6027;&#x5206;&#x6790;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503970753191" ID="ID_1620010086" MODIFIED="1503976241789" TEXT="summary(df)">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503970802864" ID="ID_148908553" MODIFIED="1503976241793" TEXT="sapply(df, FUN, options)">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503970848567" ID="ID_1134767842" MODIFIED="1503976241796" TEXT="&#x7b2c;&#x4e09;&#x65b9;package&#x7684;describe()">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503970862556" ID="ID_501196998" MODIFIED="1503976241798" TEXT="psych"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503970884711" ID="ID_450661869" MODIFIED="1503976241799" TEXT="&#x5206;&#x7ec4;&#x8ba1;&#x7b97;&#x63cf;&#x8ff0;&#x7edf;&#x8ba1;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503970910369" ID="ID_1219813997" MODIFIED="1503976241801">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      aggregate(df, by =, FUN),&#22914;&#26524;groupby &#30340;&#21464;&#37327;&#20026;&#22810;&#20010;
    </p>
    <p>
      &#21487;&#20197;&#29992;by = list(am = mtcars$am)
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503971499954" ID="ID_188516852" MODIFIED="1503976241805">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20351;&#29992;reshape&#30340;melt
    </p>
    <p>
      melt(mtcars, measure.vars = vars, id.vars = c (&quot;am&quot;, &quot;cyl&quot;))
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503975030136" ID="ID_503680932" MODIFIED="1503976241810" TEXT="&#x9891;&#x6570;&#x8868;&#x548c;&#x5217;&#x8054;&#x8868;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503975930823" ID="ID_1399394781" MODIFIED="1503976241810" TEXT="1&#x7ef4;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503975977682" ID="ID_1615002454" MODIFIED="1503976241811" TEXT="with(Arthtitis, table(Improved))"/>
<node COLOR="#111111" CREATED="1503976010793" ID="ID_283512287" MODIFIED="1503976241811" TEXT="table(), prop.table()"/>
</node>
<node COLOR="#990000" CREATED="1503975969430" ID="ID_995661524" MODIFIED="1503976241811" TEXT="2&#x7ef4;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503976026039" ID="ID_1709278684" MODIFIED="1503976241812" TEXT="xtabs(~Treayment+Improved, data = Arthtitis)"/>
<node COLOR="#111111" CREATED="1503976055261" ID="ID_1434608664" MODIFIED="1503976286550" TEXT="margin.table(tale, 1), prop.table(table, 2)"/>
<node COLOR="#111111" CREATED="1503976318059" ID="ID_1651017740" MODIFIED="1503976325591" TEXT="addmargins(table)"/>
</node>
<node COLOR="#990000" CREATED="1503976341393" ID="ID_72342703" MODIFIED="1503976348313" TEXT="&#x72ec;&#x7acb;&#x6027;&#x68c0;&#x9a8c;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503976351836" ID="ID_327319505" MODIFIED="1503979634998">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21345;&#26041;&#29420;&#31435;&#24615;&#26816;&#39564; pkg:vcd
    </p>
  </body>
</html></richcontent>
<node COLOR="#111111" CREATED="1503979185079" ID="ID_803025701" MODIFIED="1503979196324" TEXT="chisq.test(table)"/>
</node>
<node COLOR="#111111" CREATED="1503976363466" ID="ID_1995107441" MODIFIED="1503976371090" TEXT="Fisher&#x7cbe;&#x786e;&#x68c0;&#x9a8c;">
<node COLOR="#111111" CREATED="1503979200131" ID="ID_193446066" MODIFIED="1503979207218" TEXT="fisher.test(table)"/>
</node>
<node COLOR="#111111" CREATED="1503976371555" ID="ID_684796297" MODIFIED="1503976402097" TEXT="Cochran_Mantel_Haenszel&#x68c0;&#x9a8c;"/>
</node>
<node COLOR="#990000" CREATED="1503979178183" ID="ID_1964182328" MODIFIED="1503979181899" TEXT="&#x76f8;&#x5173;&#x6027;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503979584073" ID="ID_659046548" MODIFIED="1503979593224" TEXT="assostats(table)"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503985408992" ID="ID_286371015" MODIFIED="1503985414145" TEXT="&#x76f8;&#x5173;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503985512467" ID="ID_311216805" MODIFIED="1503985517256" TEXT="&#x76f8;&#x5173;&#x7684;&#x7c7b;&#x578b;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503985519127" ID="ID_1975622631" MODIFIED="1503985539179">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Pearson/Spearman/Kendall
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1503985564996" ID="ID_934853436" MODIFIED="1503985584137" TEXT="cor(x, use =, method =)"/>
<node COLOR="#111111" CREATED="1503985935344" ID="ID_904379490" MODIFIED="1503986046507">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20559;&#30456;&#20851;:&#25511;&#21046;&#19968;&#20010;&#21464;&#37327;&#30340;&#24773;&#20917;&#19979;&#65292;&#21478;&#22806;&#20004;&#20010;&#21464;&#37327;&#20043;&#38388;&#30340;&#20851;&#31995;&#12290;
    </p>
    <p>
      &#21487;&#35843;&#29992;ggm&#30340;pcor()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1503986063065" ID="ID_1409354222" MODIFIED="1503986070630" TEXT="&#x76f8;&#x5173;&#x7684;&#x663e;&#x8457;&#x6027;&#x68c0;&#x9a8c;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503986080195" ID="ID_1760616570" MODIFIED="1503986106704" TEXT="cor.test(x, y, alternative=, method=)"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503986744511" ID="ID_1272955486" MODIFIED="1503986751327" TEXT="t&#x68c0;&#x9a8c;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503986882303" ID="ID_1958777646" MODIFIED="1503986890677" TEXT="&#x72ec;&#x7acb;&#x6837;&#x672c;&#x7684;t&#x68c0;&#x9a8c;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503986976995" ID="ID_279853420" MODIFIED="1503986996051" TEXT="t.test(Prob~So, data = UScrime)"/>
</node>
<node COLOR="#990000" CREATED="1503986891179" ID="ID_565727748" MODIFIED="1503986898064" TEXT="&#x975e;&#x72ec;&#x7acb;&#x6837;&#x672c;&#x7684;t&#x68c0;&#x9a8c;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503987281630" ID="ID_822963030" MODIFIED="1503987308079" TEXT="t.test(y1, y2, paired=TRUE)"/>
</node>
<node COLOR="#990000" CREATED="1503987391571" ID="ID_511818662" MODIFIED="1503987400045" TEXT="&#x591a;&#x4e8e;&#x4e24;&#x7ec4;&#x7684;&#x60c5;&#x51b5;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503987401346" ID="ID_67153154" MODIFIED="1503987424726" TEXT="&#x5e94;&#x4f7f;&#x7528;ANOVA&#x65b9;&#x5dee;&#x5206;&#x6790;"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503987457275" ID="ID_1120068604" MODIFIED="1503987474260" TEXT="&#x7ec4;&#x95f4;&#x5dee;&#x5f02;&#x7684;&#x975e;&#x53c2;&#x6570;&#x68c0;&#x9a8c;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503987527558" ID="ID_757897063" MODIFIED="1503987600303" TEXT="Wilcoxon">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503987601659" ID="ID_1387436624" MODIFIED="1503987622239" TEXT="wilcox.test(Prob~So, data = UScrime)"/>
<node COLOR="#111111" CREATED="1503987632092" ID="ID_1770447114" MODIFIED="1503987861198">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      wilcox&#31526;&#21495;&#31209;&#26816;&#39564;&#26159;&#38750;&#29420;&#31435;&#26679;&#26412;t&#26816;&#39564;&#30340;&#19968;&#31181;&#38750;&#21442;&#25968;&#26367;&#20195;&#26041;&#27861;&#65307;
    </p>
    <p>
      &#23427;&#36866;&#29992;&#20110;&#20004;&#32452;&#25104;&#23545;&#25968;&#25454;&#21644;&#26080;&#27861;&#20445;&#35777;&#27491;&#24577;&#24615;&#20551;&#35774;&#30340;&#24773;&#24418;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1503988016139" ID="ID_952842673" MODIFIED="1511590674700" POSITION="right" TEXT="&#x56de;&#x5f52;">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1503988054587" ID="ID_852996719" MODIFIED="1508568804185" TEXT="&#x56de;&#x5f52;&#x7684;&#x591a;&#x9762;&#x6027;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503988073617" ID="ID_1247275451" MODIFIED="1503988080974" TEXT="&#x7b80;&#x5355;&#x7ebf;&#x6027;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503988085224" ID="ID_1463657046" MODIFIED="1503988087606" TEXT="&#x591a;&#x9879;&#x5f0f;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503988088131" ID="ID_1524669700" MODIFIED="1503988095499" TEXT="&#x591a;&#x5143;&#x7ebf;&#x6027;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503988103320" ID="ID_253608839" MODIFIED="1503988105792" TEXT="&#x591a;&#x53d8;&#x91cf;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503988106249" ID="ID_570530781" MODIFIED="1503988108956" TEXT="Logistic">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503988161224" ID="ID_619518110" MODIFIED="1503988208018" TEXT="&#x7528;&#x4e00;&#x4e2a;&#x6216;&#x591a;&#x4e2a;&#x89e3;&#x91ca;&#x53d8;&#x91cf;&#x9884;&#x6d4b;&#x4e00;&#x4e2a;&#x7c7b;&#x522b;&#x578b;&#x54cd;&#x5e94;&#x53d8;&#x91cf;"/>
</node>
<node COLOR="#990000" CREATED="1503988113318" ID="ID_766687664" MODIFIED="1503988123559" TEXT="&#x6cca;&#x677e;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503988213742" ID="ID_620064087" MODIFIED="1503988228781" TEXT="&#x9884;&#x6d4b;&#x4e00;&#x4e2a;&#x4ee3;&#x8868;&#x9891;&#x6570;&#x7684;&#x76f8;&#x5e94;&#x53d8;&#x91cf;"/>
</node>
<node COLOR="#990000" CREATED="1503988134228" ID="ID_950984234" MODIFIED="1503988140757" TEXT="Cox&#x6bd4;&#x4f8b;&#x98ce;&#x9669;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503988142506" ID="ID_731375774" MODIFIED="1503988145216" TEXT="&#x65f6;&#x95f4;&#x5e8f;&#x5217;">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503988321083" ID="ID_1793914542" MODIFIED="1503988325371" TEXT="OLS&#x56de;&#x5f52;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503988485092" ID="ID_1625889409" MODIFIED="1503988512283" TEXT="&#x62df;&#x5408;&#x65b9;&#x6cd5;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503988512283" ID="ID_1735440267" MODIFIED="1503988562142">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      myfit &lt;- lm(formula, data)
    </p>
    <p>
      formula&#30340;&#19968;&#33324;&#24418;&#24335;&#20026;y ~ x1+ x2
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1503988530053" ID="ID_180569603" MODIFIED="1508568824531" TEXT="&#x62df;&#x5408;&#x51fd;&#x6570;&#x7684;&#x7ed3;&#x679c;">
<node COLOR="#111111" CREATED="1503988592024" ID="ID_1226667965" MODIFIED="1503988607225" TEXT="summary&#xff08;&#xff09;"/>
<node COLOR="#111111" CREATED="1503988607814" ID="ID_1447628024" MODIFIED="1503988625696" TEXT="coefficients() &#x6a21;&#x578b;&#x53c2;&#x6570;"/>
<node COLOR="#111111" CREATED="1503988626982" ID="ID_828170612" MODIFIED="1503988644676" TEXT="confint()&#x6a21;&#x578b;&#x53c2;&#x6570;&#x7684;&#x7f6e;&#x4fe1;&#x533a;&#x95f4;"/>
<node COLOR="#111111" CREATED="1503988645272" ID="ID_152104316" MODIFIED="1503988661072" TEXT="fitted()&#x62df;&#x5408;&#x6a21;&#x578b;&#x7684;&#x9884;&#x6d4b;&#x503c;"/>
<node COLOR="#111111" CREATED="1503988661522" ID="ID_898690384" MODIFIED="1503988674415" TEXT="residuals()&#x62df;&#x5408;&#x6a21;&#x578b;&#x7684;&#x6b8b;&#x5dee;&#x503c;"/>
<node COLOR="#111111" CREATED="1503988674831" ID="ID_23948585" MODIFIED="1503988688310" TEXT="anova()&#x62df;&#x5408;&#x6a21;&#x578b;&#x7684;&#x65b9;&#x5dee;&#x5206;&#x6790;&#x8868;"/>
<node COLOR="#111111" CREATED="1503988689185" ID="ID_1538343725" MODIFIED="1503988709781" TEXT="vcov()&#x62df;&#x5408;&#x6a21;&#x578b;&#x7684;&#x534f;&#x65b9;&#x5dee;&#x77e9;&#x9635;"/>
<node COLOR="#111111" CREATED="1503988715598" ID="ID_133820471" MODIFIED="1503988744500" TEXT="AIC()&#x8d64;&#x6c60;&#x4fe1;&#x606f;&#x7edf;&#x8ba1;&#x91cf;"/>
<node COLOR="#111111" CREATED="1503988747494" ID="ID_1412724163" MODIFIED="1503988765788" TEXT="plot()&#x8bc4;&#x4ef7;&#x62df;&#x5408;&#x6a21;&#x578b;&#x7684;&#x8bca;&#x65ad;&#x56fe;"/>
<node COLOR="#111111" CREATED="1503988809921" ID="ID_648915010" MODIFIED="1503988837084" TEXT="predict()&#x7528;&#x62df;&#x5408;&#x6a21;&#x578b;&#x5bf9;&#x65b0;&#x7684;&#x6570;&#x636e;&#x9884;&#x6d4b;"/>
</node>
</node>
<node COLOR="#990000" CREATED="1503988870430" ID="ID_314674500" MODIFIED="1503988875441" TEXT="&#x7b80;&#x5355;&#x7ebf;&#x6027;&#x56de;&#x5f52;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503988877563" ID="ID_381799817" MODIFIED="1503988901366" TEXT="fit &lt;- lm(weight~height, data =women)">
<node COLOR="#111111" CREATED="1511516643904" ID="ID_357622753" MODIFIED="1511516652237" TEXT="&#x6807;&#x51c6;&#x5dee;&#x4e0e;&#x7f6e;&#x4fe1;&#x533a;&#x95f4;">
<node COLOR="#111111" CREATED="1511516542960" ID="ID_1586054862" MODIFIED="1511516598759" TEXT="&#x7b80;&#x5355;&#x7ebf;&#x6027;&#x56de;&#x5f52;&#x7684;t-&#x7edf;&#x8ba1;&#x503c;&#x5f88;&#x5927;&#x3001;p-value&#x5f88;&#x5c0f;&#xff0c;&#x8bf4;&#x660e;&#x53ef;&#x4ee5;&#x62d2;&#x7edd;&#x53d8;&#x91cf;&#x4e0e;&#x7279;&#x5f81;&#x503c;&#x76f8;&#x5173;&#x6027;&#x4e3a;0&#x7684;&#x5047;&#x8bbe;"/>
</node>
<node COLOR="#111111" CREATED="1511516707739" ID="ID_575956325" MODIFIED="1511516723671" TEXT="&#x6a21;&#x578b;&#x7684;&#x7cbe;&#x5ea6;">
<node COLOR="#111111" CREATED="1511516746983" ID="ID_690431100" MODIFIED="1511516769503" TEXT="RSE = sqrt(RSS/(n-2))"/>
<node COLOR="#111111" CREATED="1511516773046" ID="ID_568066862" MODIFIED="1511516826860" TEXT="R2&#x503c;&#xff08;&#x786e;&#x5b9a;&#x7cfb;&#x6570;&#xff09;"/>
<node COLOR="#111111" CREATED="1511517121373" ID="ID_154987715" MODIFIED="1511517136363" TEXT="F-value"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1503988971210" ID="ID_1682707919" MODIFIED="1503988975035" TEXT="&#x591a;&#x9879;&#x5f0f;&#x56de;&#x5f52;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503988976163" ID="ID_1850300865" MODIFIED="1503989012174" TEXT="fit &lt;- lm(weight~ height + I(height^2), data = women)">
<node COLOR="#111111" CREATED="1503989090220" ID="ID_1367144604" MODIFIED="1503989113702">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      scatterplot&#32472;&#22270;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1503989118550" ID="ID_22481183" MODIFIED="1503989123111" TEXT="&#x591a;&#x5143;&#x7ebf;&#x6027;&#x56de;&#x5f52;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503989147311" ID="ID_192203449" MODIFIED="1503989178084" TEXT="&#x9996;&#x5148;&#x68c0;&#x67e5;&#x53d8;&#x91cf;&#x95f4;&#x7684;&#x76f8;&#x5173;&#x6027; cor(states)"/>
<node COLOR="#111111" CREATED="1503989156706" ID="ID_1668024895" MODIFIED="1511517070180" TEXT="fit &lt;- lm(Murder ~ Population + Illiteracy + Income + Frost, data = states)">
<node COLOR="#111111" CREATED="1503989636637" ID="ID_1027299020" MODIFIED="1503989662655" TEXT="&#x7528;summary()&#x67e5;&#x770b;&#x504f;&#x56de;&#x5f52;&#x7cfb;&#x6570;"/>
<node COLOR="#111111" CREATED="1503989663454" ID="ID_338816086" MODIFIED="1503989677694" TEXT="&#x7528;lm.beta()&#x67e5;&#x770b;&#x6807;&#x51c6;&#x56de;&#x5f52;&#x7cfb;&#x6570;"/>
</node>
<node COLOR="#111111" CREATED="1511517079129" ID="ID_1431941625" MODIFIED="1511517303230" TEXT="&#x6a21;&#x578b;&#x7684;&#x7cbe;&#x5ea6;">
<node COLOR="#111111" CREATED="1511517093616" ID="ID_1929271701" MODIFIED="1511517143992" TEXT="RSE"/>
<node COLOR="#111111" CREATED="1511517144492" ID="ID_1469220725" MODIFIED="1511517147614" TEXT="R2"/>
<node COLOR="#111111" CREATED="1511517148293" ID="ID_727513626" MODIFIED="1511517184883" TEXT="F-value&#x8fdc;&#x5927;&#x4e8e;1&#xff0c;&#x8bf4;&#x660e;&#x81f3;&#x5c11;&#x6709;1&#x4e2a;&#x5c5e;&#x6027;&#x4e0e;y&#x76f8;&#x5173;&#xff0c;&#x53ef;&#x4ee5;&#x62d2;&#x7edd;&#x76f8;&#x5173;&#x6027;&#x4e3a;0&#x7684;&#x5047;&#x8bbe;"/>
</node>
</node>
<node COLOR="#990000" CREATED="1503989698482" ID="ID_116225229" MODIFIED="1503989709352" TEXT="&#x6709;&#x4ea4;&#x4e92;&#x9879;&#x7684;&#x591a;&#x5143;&#x56de;&#x5f52;&#x5206;&#x6790;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503989748972" ID="ID_165012409" MODIFIED="1503989778705" TEXT="fit &lt;- lm(mpg ~ hp +wt + hp:wt, data = mtcars)"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503989804212" ID="ID_1959871314" MODIFIED="1503989807940" TEXT="&#x56de;&#x5f52;&#x8bca;&#x65ad;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503989993806" ID="ID_1655537785" MODIFIED="1503989997341" TEXT="&#x6807;&#x51c6;&#x65b9;&#x6cd5;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503989999284" ID="ID_197989739" MODIFIED="1503990011287">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      fit &lt;- lm(weight ~ height, data = women)
    </p>
    <p>
      par(mfrow= c(2,2))
    </p>
    <p>
      plot(fit)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1503990303391" ID="ID_596507165" MODIFIED="1503990308023" TEXT="&#x6539;&#x8fdb;&#x7684;&#x65b9;&#x6cd5;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503990309121" ID="ID_1151274992" MODIFIED="1503990314786" TEXT="car&#x5305;"/>
<node COLOR="#111111" CREATED="1503990571460" ID="ID_961918923" MODIFIED="1503990685089" TEXT="qqPlot() &#x5206;&#x4f4d;&#x6570;&#x6bd4;&#x8f83;&#x56fe;"/>
<node COLOR="#111111" CREATED="1503990575608" ID="ID_850091963" MODIFIED="1503990710380" TEXT="residplot &#x6b8b;&#x5dee;&#x67f1;&#x72b6;&#x56fe;"/>
<node COLOR="#111111" CREATED="1503990653947" ID="ID_1384215154" MODIFIED="1503990676532" TEXT="crPlots() &#x6210;&#x5206;&#x4e0e;&#x6b8b;&#x5dee;&#x56fe;"/>
</node>
<node COLOR="#990000" CREATED="1503991775313" ID="ID_728033597" MODIFIED="1503991779029" TEXT="&#x7efc;&#x5408;&#x9a8c;&#x8bc1;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503991779996" ID="ID_803693340" MODIFIED="1503991797267" TEXT="gvlma&#x5305;&#x4e2d;&#x7684;gvlma()"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503991984966" ID="ID_1012217433" MODIFIED="1503991988737" TEXT="&#x5f02;&#x5e38;&#x503c;&#x5206;&#x6790;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503991997761" ID="ID_597141892" MODIFIED="1503992022563" TEXT="&#x79bb;&#x7fa4;&#x70b9;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503992062390" ID="ID_1943713677" MODIFIED="1503992076716" TEXT="Q-Q&#x56fe;&#x4e2d;&#x843d;&#x5728;&#x7f6e;&#x4fe1;&#x533a;&#x95f4;&#x5916;&#x7684;&#x70b9;"/>
<node COLOR="#111111" CREATED="1503992077312" ID="ID_170751176" MODIFIED="1503992092818" TEXT="car&#x5305;&#x7684;outlierTest(fit)"/>
</node>
<node COLOR="#990000" CREATED="1503992023081" ID="ID_974526384" MODIFIED="1503992039592" TEXT="&#x9ad8;&#x6760;&#x6746;&#x503c;&#x70b9;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503992041730" ID="ID_1673046988" MODIFIED="1503992046961" TEXT="&#x5f3a;&#x5f71;&#x54cd;&#x70b9;">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503992224451" ID="ID_695421402" MODIFIED="1503992227523" TEXT="&#x6539;&#x8fdb;&#x63aa;&#x65bd;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503992229430" ID="ID_561471239" MODIFIED="1503992237345" TEXT="&#x5220;&#x9664;&#x89c2;&#x6d4b;&#x70b9;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503992237808" ID="ID_1634596483" MODIFIED="1503992244693" TEXT="&#x53d8;&#x91cf;&#x53d8;&#x6362;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503992247176" ID="ID_1473872218" MODIFIED="1503992252856" TEXT="&#x6dfb;&#x52a0;&#x6216;&#x5220;&#x9664;&#x53d8;&#x91cf;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503992257905" ID="ID_816631220" MODIFIED="1503992264734" TEXT="&#x4f7f;&#x7528;&#x5176;&#x4ed6;&#x56de;&#x5f52;&#x65b9;&#x6cd5;">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503992315991" ID="ID_1987275063" MODIFIED="1503992321808" TEXT="&#x9009;&#x62e9;&#x6700;&#x4f73;&#x7684;&#x56de;&#x5f52;&#x6a21;&#x578b;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503992330099" ID="ID_1510958217" MODIFIED="1503992334506" TEXT="&#x6a21;&#x578b;&#x6bd4;&#x8f83;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503992340643" ID="ID_384888031" MODIFIED="1503992554537" TEXT="anova(fit2, fit1) &#x9700;&#x8981;&#x5d4c;&#x5957;&#x6a21;&#x578b;"/>
<node COLOR="#111111" CREATED="1503992509583" ID="ID_1509386777" MODIFIED="1503992567400" TEXT="AIC &#x4e0d;&#x9700;&#x8981;&#x5d4c;&#x5957;&#x6a21;&#x578b;"/>
</node>
<node COLOR="#990000" CREATED="1503992334958" ID="ID_1489346573" MODIFIED="1503992337980" TEXT="&#x53d8;&#x91cf;&#x9009;&#x62e9;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503992626301" ID="ID_1129069602" MODIFIED="1503992639171" TEXT="&#x9010;&#x6b65;&#x56de;&#x5f52;">
<node COLOR="#111111" CREATED="1503992656506" ID="ID_277645330" MODIFIED="1503992705361">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      MASS&#21253;&#20013;&#30340;stepAIC()
    </p>
    <p>
      stepAIC(fit1, direction = &quot;backward&quot;)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1503992744855" ID="ID_997493510" MODIFIED="1503992758021" TEXT="&#x5168;&#x5b50;&#x96c6;&#x56de;&#x5f52;">
<node COLOR="#111111" CREATED="1503992770702" ID="ID_1436037245" MODIFIED="1503992900409">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      leaps&#21253;&#20013;&#30340;regsubsets()
    </p>
    <p>
      leaps &lt;- regsubsets(Murder~ Population+Illiteracy+Incom+Frost, data=states,nbest=4)
    </p>
    <p>
      plot(leaps, scale = &quot;adjr2&quot;)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1503993629983" ID="ID_28789563" MODIFIED="1511590677290" POSITION="right" TEXT="&#x5e7f;&#x4e49;&#x7ebf;&#x6027;&#x6a21;&#x578b;">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1503993652288" ID="ID_191420995" MODIFIED="1503993659579" TEXT="&#x5e7f;&#x4e49;&#x7ebf;&#x6027;&#x6a21;&#x578b;&#x548c;glm()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503993745642" ID="ID_546238069" MODIFIED="1503993963249" TEXT="glm(formula, family = family(link = &quot; &quot;), data =)">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503993925527" ID="ID_725929741" MODIFIED="1503993930811" TEXT="Logistic&#x56de;&#x5f52;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503993969425" ID="ID_1690864209" MODIFIED="1503994108175" TEXT="&#x9884;&#x6d4b;&#x4e8c;&#x503c;&#x53d8;&#x91cf;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1503994191816" ID="ID_1099340024" MODIFIED="1503994217979" TEXT="&#x8fc7;&#x5ea6;&#x79bb;&#x52bf;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503994217979" ID="ID_1003351088" MODIFIED="1503994245766" TEXT="&#x6b8b;&#x5dee;&#x504f;&#x5dee;&#x4e0e;&#x6b8b;&#x5dee;&#x81ea;&#x7531;&#x5ea6;&#x7684;&#x6bd4;&#x503c;&#x6bd4;1&#x5927;&#x5f88;&#x591a;&#x5219;&#x5b58;&#x5728;"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503994110391" ID="ID_230547467" MODIFIED="1503994122928" TEXT="&#x6cca;&#x677e;&#x56de;&#x5f52;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503994122931" ID="ID_1545482145" MODIFIED="1503994149446" TEXT="&#x9884;&#x6d4b;&#x8ba1;&#x6570;&#x578b;&#x53d8;&#x91cf;">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1503994354040" ID="ID_738705002" MODIFIED="1515986475204" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20027;&#25104;&#20998;&#21644;&#22240;&#23376;&#20998;&#26512;
    </p>
    <p>
      PCA and EFA
    </p>
  </body>
</html></richcontent>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1503994366396" ID="ID_370415945" MODIFIED="1503994641218">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20027;&#25104;&#20998;&#20998;&#26512;
    </p>
    <p>
      psych&#21253;
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1503994409446" ID="ID_890747427" MODIFIED="1503994416301" TEXT="&#x5224;&#x65ad;&#x4e3b;&#x6210;&#x5206;&#x7684;&#x4e2a;&#x6570;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503994486670" ID="ID_1574173064" MODIFIED="1503994497243" TEXT="fa.parallel()"/>
</node>
<node COLOR="#990000" CREATED="1503994504738" ID="ID_845902187" MODIFIED="1503994508495" TEXT="&#x63d0;&#x53d6;&#x4e3b;&#x6210;&#x5206;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1503994521105" ID="ID_889817219" MODIFIED="1503994542541" TEXT="principal(r, nfactors, rotates, scores)"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1503994396680" ID="ID_871114197" MODIFIED="1503994402695" TEXT="&#x63a2;&#x7d22;&#x6027;&#x56e0;&#x5b50;&#x5206;&#x6790;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1511572888718" ID="ID_99782236" MODIFIED="1511590077592" POSITION="right" TEXT="&#x4e00;&#x822c;&#x5206;&#x7c7b;">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1511590082586" ID="ID_294200650" MODIFIED="1511590090772" TEXT="logistic regression">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1511590245902" ID="ID_521015013" MODIFIED="1511590252133" TEXT="&#x7ebf;&#x6027;&#x8fb9;&#x754c;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1511590286865" ID="ID_209387073" MODIFIED="1511590294540" TEXT="&#x6700;&#x5927;&#x4f3c;&#x7136;&#x4f30;&#x8ba1;&#x8ba1;&#x7b97;&#x53c2;&#x6570;"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1511590091334" ID="ID_1137130771" MODIFIED="1511590098718" TEXT="LDA">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1511590297160" ID="ID_1568480942" MODIFIED="1511590302727" TEXT="&#x7ebf;&#x6027;&#x8fb9;&#x754c;">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1511590302729" ID="ID_670421349" MODIFIED="1511590339853" TEXT="&#x9ad8;&#x65af;&#x5206;&#x5e03;&#x7684;&#x5747;&#x503c;&#x4e0e;&#x65b9;&#x5dee;&#x8ba1;&#x7b97;&#x53c2;&#x6570;"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1511590175213" ID="ID_1005269680" MODIFIED="1511590177332" TEXT="QDA">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1511590495487" ID="ID_857169623" MODIFIED="1511590508716" TEXT="&#x66f2;&#x7ebf;&#x8fb9;&#x754c;(quadratic)">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1511590177877" ID="ID_1017838182" MODIFIED="1511590179768" TEXT="KNN">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1511590511627" ID="ID_435906793" MODIFIED="1511590522067" TEXT="&#x975e;&#x53c2;&#x6570;">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1511609009607" ID="ID_1275739902" MODIFIED="1511609013517" POSITION="right" TEXT="&#x6811;&#x6a21;&#x578b;">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1511609016052" ID="ID_1354572346" MODIFIED="1511609019372" TEXT="&#x51b3;&#x7b56;&#x6811;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511609019878" ID="ID_1196586146" MODIFIED="1511609024172" TEXT="bagging">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511609024544" ID="ID_1460567676" MODIFIED="1511609027649" TEXT="&#x968f;&#x673a;&#x68ee;&#x6797;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511609028047" ID="ID_1539082520" MODIFIED="1511609035841" TEXT="boost">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
</node>
</map>
