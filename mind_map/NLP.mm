<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1612685070959" ID="ID_139630643" MODIFIED="1612685115776" STYLE="bubble" TEXT="NLP">
<node CREATED="1612685103275" ID="ID_572841220" MODIFIED="1612750723039" POSITION="right" STYLE="bubble" TEXT="&#x53d1;&#x5c55;&#x5386;&#x7a0b;">
<node CREATED="1612685969508" ID="ID_1351704740" MODIFIED="1612685978855" TEXT="2013-Word2Vec"/>
<node CREATED="1612685980398" ID="ID_814787586" MODIFIED="1612686010779" TEXT="2014-GloVe"/>
<node CREATED="1612686011496" ID="ID_1890288975" MODIFIED="1612686017573" TEXT="2017-FastText"/>
<node CREATED="1612686018527" ID="ID_1223286240" MODIFIED="1612686027280" TEXT="2018-ELMO"/>
<node CREATED="1612686027869" ID="ID_1023534104" MODIFIED="1612686035274" TEXT="2018-GPT-1"/>
<node CREATED="1612686035913" ID="ID_918907583" MODIFIED="1612686040047" TEXT="2018-BERT"/>
<node CREATED="1612686040593" ID="ID_623414475" MODIFIED="1612750736422" TEXT="now-GBPT-2?3&#xff1f;"/>
</node>
<node CREATED="1612689846940" ID="ID_1931959522" MODIFIED="1612689857389" POSITION="right" TEXT="NLP&#x57fa;&#x7840;&#x7406;&#x8bba;">
<node CREATED="1612689857390" ID="ID_1377995438" MODIFIED="1612689860843" TEXT="&#x76f8;&#x5173;&#x7b97;&#x6cd5;">
<node CREATED="1612689861475" ID="ID_847524002" MODIFIED="1612690398111" TEXT="HMM &#xff08;&#x9690;&#x9a6c;&#x5c14;&#x53ef;&#x592b;&#x6a21;&#x578b;&#xff09;"/>
<node CREATED="1612689864863" ID="ID_130832181" MODIFIED="1612690409869" TEXT="CRF &#xff08;&#x6761;&#x4ef6;&#x968f;&#x673a;&#x573a;&#xff09;"/>
<node CREATED="1612689867852" ID="ID_1694527664" MODIFIED="1612689872037" TEXT="&#x8d1d;&#x53f6;&#x65af;"/>
<node CREATED="1612689872858" ID="ID_1734063927" MODIFIED="1612689876635" TEXT="SVM"/>
<node CREATED="1612689877158" ID="ID_850760281" MODIFIED="1612689878389" TEXT="RNN"/>
<node CREATED="1612689879429" ID="ID_743149730" MODIFIED="1612689881607" TEXT="LSTM"/>
<node CREATED="1612689882318" ID="ID_157115014" MODIFIED="1612690735781" TEXT="transformer">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1612689891005" ID="ID_1813134323" MODIFIED="1612692074306" TEXT="attention">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1612689894954" ID="ID_1536012207" MODIFIED="1612689898225" TEXT="seq2seq"/>
<node CREATED="1612691350011" ID="ID_1526923099" MODIFIED="1612691363648" TEXT="jieba&#x5206;&#x8bcd;"/>
</node>
<node CREATED="1612689901327" ID="ID_399902773" MODIFIED="1612689913564" TEXT="&#x57fa;&#x7840;&#x6982;&#x5ff5;&#x4e0e;&#x6280;&#x5de7;">
<node CREATED="1612689915570" ID="ID_117315920" MODIFIED="1612689917575" TEXT="&#x5206;&#x8bcd;"/>
<node CREATED="1612689918861" ID="ID_1381801196" MODIFIED="1612689927314" TEXT="&#x547d;&#x540d;&#x5b9e;&#x4f53;&#x8bc6;&#x522b;"/>
<node CREATED="1612689928188" ID="ID_1983764445" MODIFIED="1612689933098" TEXT="&#x8bcd;&#x5411;&#x91cf;"/>
<node CREATED="1612689934619" ID="ID_495993000" MODIFIED="1612689942095" TEXT="&#x9884;&#x8bad;&#x7ec3;&#x6a21;&#x578b;">
<node CREATED="1612689944310" ID="ID_967683800" MODIFIED="1612692070065" TEXT="word2vec">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1612750484753" ID="ID_688358014" MODIFIED="1612750488931" TEXT="ref">
<node CREATED="1612750489691" ID="ID_910427577" MODIFIED="1612750506804" TEXT="paper: word2vec Parameter Learning Explained"/>
</node>
<node CREATED="1612750621583" ID="ID_235857612" MODIFIED="1612750632334" TEXT="two methods">
<node CREATED="1612750633187" ID="ID_1705696397" MODIFIED="1612750638252" TEXT="Skip-gram">
<node CREATED="1612750660516" ID="ID_751628954" MODIFIED="1612750678087" TEXT="predict context based on word"/>
</node>
<node CREATED="1612750638618" ID="ID_261749776" MODIFIED="1612750641397" TEXT="CBOW">
<node CREATED="1612750682826" ID="ID_1128390559" MODIFIED="1612750695903" TEXT="predict word based on context"/>
</node>
</node>
<node CREATED="1612751981655" ID="ID_22220615" MODIFIED="1612752015754" TEXT="word2vec / TF-IDF / LDA">
<node CREATED="1612752016311" ID="ID_1431025838" MODIFIED="1612752021200" TEXT="word2vec">
<node CREATED="1612752021201" ID="ID_419340119" MODIFIED="1612752128121" TEXT="&#x7528;&#x4e00;&#x4e2a;1&#x5c42;&#x795e;&#x7ecf;&#x7f51;&#x7edc;(e.g. CBOW)&#x628a;one-hot&#x5f62;&#x5f0f;&#x7684;&#x8bcd;&#x5411;&#x91cf;&#x6620;&#x5c04;&#x4e3a;&#x5206;&#x5e03;&#x5f0f;&#x5f62;&#x5f0f;&#x7684;&#x8bcd;&#x5411;&#x91cf;&#xff0c;&#x901a;&#x8fc7;&#x8fd9;&#x79cd;&#x65b9;&#x6cd5;&#x6211;&#x4eec;&#x53ef;&#x4ee5;&#x5feb;&#x901f;&#x5730;&#x8ba1;&#x7b97;&#x4e24;&#x4e2a;&#x8bcd;&#x6c47;&#x7684;&#x76f8;&#x4f3c;&#x5ea6;&#x3002;"/>
<node CREATED="1612764514156" ID="ID_1077593607" MODIFIED="1612770112140" TEXT="Bag-of-words models have several weaknesses:">
<node CREATED="1612764558831" ID="ID_943810688" MODIFIED="1612764647209">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      firstly, they lose all information about word order. The solution is <b><font color="#ff3333">bag of n-grams</font></b>&#160;models
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1612764653275" ID="ID_1884287647" MODIFIED="1612764768405" TEXT="secondly, the model does not attempt to learn the meaning of the underlying words. As a consequence, the distance between vectors doesn&apos;t always reflect the difference in meaning. The Word2Vec model address this second problem."/>
</node>
<node CREATED="1612770114832" ID="ID_27443745" MODIFIED="1612770141104" TEXT="tricks">
<node CREATED="1612770142027" ID="ID_626921021" MODIFIED="1612770162351" TEXT="hierarchical softmax"/>
<node CREATED="1612770162890" ID="ID_1530732627" MODIFIED="1612770174677" TEXT="negative sampling"/>
</node>
</node>
<node CREATED="1612752130990" ID="ID_239679946" MODIFIED="1612752403114" TEXT="TF-IDF">
<node CREATED="1612752136512" ID="ID_74552178" MODIFIED="1612752240936" TEXT="&#x662f;&#x4e00;&#x79cd;&#x7edf;&#x8ba1;&#x65b9;&#x6cd5;&#xff0c;&#x7528;&#x4e8e;&#x8bc4;&#x4f30;&#x4e00;&#x4e2a;&#x8bcd;&#x5bf9;&#x4e8e;&#x4e00;&#x4e2a;&#x6587;&#x4ef6;&#x96c6;&#x6216;&#x8005;&#x4e00;&#x4e2a;&#x8bed;&#x6599;&#x5e93;&#x4e2d;&#x4e00;&#x4efd;&#x6587;&#x4ef6;&#x7684;&#x91cd;&#x8981;&#x7a0b;&#x5ea6;&#x3002;&#x5b57;&#x8bcd;&#x7684;&#x91cd;&#x8981;&#x6027;&#x968f;&#x7740;&#x5b83;&#x5728;&#x6587;&#x4ef6;&#x4e2d;&#x51fa;&#x73b0;&#x7684;&#x6b21;&#x6570;&#x6210;&#x6b63;&#x6bd4;&#xff0c;&#x4f46;&#x4f1a;&#x968f;&#x7740;&#x5b83;&#x5728;&#x8bed;&#x6599;&#x5e93;&#x4e2d;&#x51fa;&#x73b0;&#x7684;&#x9891;&#x7387;&#x6210;&#x53cd;&#x6bd4;&#x4e0b;&#x964d;&#x3002;"/>
</node>
<node CREATED="1612752258058" ID="ID_867202087" MODIFIED="1612752261989" TEXT="LDA">
<node CREATED="1612752261990" ID="ID_1407554656" MODIFIED="1612764507688" TEXT="&#x4e00;&#x79cd;&#x4e3b;&#x9898;&#x6a21;&#x578b;&#xff0c;&#x53ef;&#x4ee5;&#x5c06;&#x6587;&#x6863;&#x96c6;&#x4e2d;&#x6bcf;&#x7bc7;&#x6587;&#x6863;&#x7684;&#x4e3b;&#x9898;&#x4ee5;&#x6982;&#x7387;&#x5206;&#x5e03;&#x7684;&#x5f62;&#x5f0f;&#x7ed9;&#x51fa;&#xff0c;&#x53ef;&#x4ee5;&#x62bd;&#x53d6;&#x6587;&#x6863;&#x7684;&#x4e3b;&#x9898;&#x5206;&#x5e03;&#x4ee5;&#x540e;&#xff0c;&#x8fdb;&#x884c;&#x4e3b;&#x9898;&#x805a;&#x7c7b;&#x6216;&#x8005;&#x6587;&#x672c;&#x5206;&#x7c7b;&#x3002;&#x540c;&#x65f6;&#xff0c;&#x5b83;&#x662f;&#x4e00;&#x79cd;&#x8bcd;&#x888b;(bag-of-words)&#x6a21;&#x578b;&#xff0c;&#x5373;&#x6587;&#x6863;&#x662f;&#x7531;&#x4e00;&#x7ec4;&#x8bcd;&#x6784;&#x6210;&#xff0c;&#x8bcd;&#x4e0e;&#x8bcd;&#x4e4b;&#x95f4;&#x6ca1;&#x6709;&#x5148;&#x540e;&#x987a;&#x5e8f;&#x5173;&#x7cfb;&#x3002;"/>
</node>
</node>
</node>
<node CREATED="1612689949385" ID="ID_355735490" MODIFIED="1612689951187" TEXT="ELMO"/>
<node CREATED="1612689953090" ID="ID_737406377" MODIFIED="1612689955311" TEXT="GPT"/>
<node CREATED="1612689955898" ID="ID_1932825804" MODIFIED="1612692080690" TEXT="BERT">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1612689963062" ID="ID_691930196" MODIFIED="1612689968596" TEXT="&#x60c5;&#x611f;&#x5206;&#x6790;"/>
<node CREATED="1612689968935" ID="ID_266524681" MODIFIED="1612689972274" TEXT="&#x53e5;&#x6cd5;&#x5206;&#x6790;"/>
</node>
</node>
<node CREATED="1612689996529" ID="ID_1971943960" MODIFIED="1612690001373" POSITION="right" TEXT="NLP&#x5e94;&#x7528;">
<node CREATED="1612690001730" ID="ID_460812787" MODIFIED="1612690118963" TEXT="&#x77e5;&#x8bc6;&#x56fe;&#x8c31;">
<node CREATED="1612690010418" ID="ID_339517393" MODIFIED="1612690071722" TEXT="&#x77e5;&#x8bc6;&#x56fe;&#x8c31;&#x8bed;&#x4e49;&#x7c7b;&#x578b;&#x6a21;&#x578b;&#x8bbe;&#x8ba1;"/>
<node CREATED="1612690021485" ID="ID_630472734" MODIFIED="1612690066558" TEXT="&#x77e5;&#x8bc6;&#x56fe;&#x8c31;&#x8bed;&#x4e49;&#x5173;&#x7cfb;&#x6a21;&#x578b;&#x8bbe;&#x8ba1;"/>
<node CREATED="1612690031926" ID="ID_186238656" MODIFIED="1612690060393" TEXT="&#x77e5;&#x8bc6;&#x56fe;&#x8c31;&#x5b9e;&#x4f53;&#x5bf9;&#x8c61;&#x8bbe;&#x8ba1;"/>
<node CREATED="1612690039985" ID="ID_222861851" MODIFIED="1612690055906" TEXT="&#x77e5;&#x8bc6;&#x56fe;&#x8c31;&#x5b9e;&#x4f53;&#x5c5e;&#x6027;&#x8bbe;&#x8ba1;"/>
<node CREATED="1612690072860" ID="ID_308878162" MODIFIED="1612690079051" TEXT="&#x77e5;&#x8bc6;&#x56fe;&#x8c31;&#x5bf9;&#x8c61;&#x62bd;&#x53d6;"/>
<node CREATED="1612690080590" ID="ID_1312370232" MODIFIED="1612690095465" TEXT="&#x56fe;&#x6570;&#x636e;&#x5e93;&#x4f8b;&#x5982;neo4j"/>
<node CREATED="1612690096002" ID="ID_66681812" MODIFIED="1612690105365" TEXT="&#x77e5;&#x8bc6;&#x56fe;&#x8c31;&#x5b9e;&#x4f53;&#x5bfc;&#x5165;"/>
<node CREATED="1612690110460" ID="ID_470443911" MODIFIED="1612690116418" TEXT="&#x77e5;&#x8bc6;&#x56fe;&#x8c31;&#x53ef;&#x89c6;&#x5316;"/>
</node>
<node CREATED="1612690119907" ID="ID_230754041" MODIFIED="1612690124534" TEXT="chatbot"/>
</node>
<node CREATED="1612752807405" ID="ID_1131978469" MODIFIED="1612752810516" POSITION="right" TEXT="tools">
<node CREATED="1612752812664" ID="ID_515437711" MODIFIED="1612752816859" TEXT="gensim">
<node CREATED="1612752817717" ID="ID_859203013" MODIFIED="1612752823305" TEXT="word2vec"/>
</node>
</node>
</node>
</map>
