load data
CHARACTERSET utf8
infile 'df_7911.txt'
into table SZ_METRO_HIS_DEAL
FIELDS TERMINATED BY ','
TRAILING NULLCOLS
(
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

