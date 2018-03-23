load data
CHARACTERSET utf8
infile 'df_7911_indexed.txt'
into table SZ_METRO_HIS_DEAL_INDEXES
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
ID                 ,
CARD_ID            ,
TRADE_TYPE         ,
CARD_TYPE          ,
TRADE_ADDRESS      ,
TERMINAL_ID        ,
TRADE_MONEY        ,
TRADE_VALUE        ,
CURRENT_VALUE      ,
TRADE_DATE        DATE "YYYY/MM/DD HH24:MI:SS",
DESTINATION      ,
RECV_TIME         
)

