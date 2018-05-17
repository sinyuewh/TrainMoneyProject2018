IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'train')
	BEGIN
		DROP  Table train
	END
GO
--
create table train
(
  num                integer,
  trainname          varchar(50) not null,
  trainbigkind       integer not null,
  traintype          varchar(50) not null,
  yuxinglicheng      integer not null,
  yinzuo             integer not null,
  ruanzuo            integer not null,
  openyinwo          integer not null,
  closeyinwo         integer not null,
  ruanwo             integer not null,
  advanceruanwo      integer not null,
  canche             integer not null,
  fadianche          integer not null,
  shuyinche          integer not null,
  yinzuoprice        numeric(18,2),
  ruanzuoprice       numeric(18,2),
  openyinwoprice     numeric(18,2),
  closeyinwoprice    numeric(18,2),
  ruanwoprice        numeric(18,2),
  advanceruanwoprice numeric(18,2),
  cancheprice        numeric(18,2),
  fadiancheprice     numeric(18,2),
  shuyincheprice     numeric(18,2),
  jiakuai            integer,
  kongtiaofee        integer,
  xiebiezhengjiafee  integer,
  qianyintype        integer,
  gongdiantype       integer,
  watercount         integer,
  serverperson       integer,
  runhour            integer,
  yongchedishu       numeric(18,2),
  chedishu           numeric(18,2),
  line0              numeric(18,2),
  line1              numeric(18,2),
  line2              numeric(18,2),
  line3              numeric(18,2),
  line4              numeric(18,2),
  line5              numeric(18,2),
  line6              numeric(18,2),
  line7              numeric(18,2),
  line8              numeric(18,2),
  hightrainbianzhu   integer,
  hightrainbigkind   integer,
  cunzengmoshi       integer,
  trainline          varchar(50) not null
)
;
alter table train
  add primary key (trainname);

--
 
insert into TRAIN (NUM, TRAINNAME, TRAINBIGKIND, TRAINTYPE, YUXINGLICHENG, YINZUO, RUANZUO, OPENYINWO, CLOSEYINWO, RUANWO, ADVANCERUANWO, CANCHE, FADIANCHE, SHUYINCHE, YINZUOPRICE, RUANZUOPRICE, OPENYINWOPRICE, CLOSEYINWOPRICE, RUANWOPRICE, ADVANCERUANWOPRICE, CANCHEPRICE, FADIANCHEPRICE, SHUYINCHEPRICE, JIAKUAI, KONGTIAOFEE, XIEBIEZHENGJIAFEE, QIANYINTYPE, GONGDIANTYPE, WATERCOUNT, SERVERPERSON, RUNHOUR, YONGCHEDISHU, CHEDISHU, LINE0, LINE1, LINE2, LINE3, LINE4, LINE5, LINE6, LINE7, LINE8, HIGHTRAINBIANZHU, HIGHTRAINBIGKIND, CUNZENGMOSHI, TRAINLINE)
values (1, 'T120', 0, '空调车25K', 873, 12, 0, 4, 0, 1, 0, 1, 0, 0, 4000, 0, 5000, 0, 6000, 0, 5000, 0, 0, 1, 1, 5, 1, 0, 5, 0, 50, 3, 3, 0, 400, 473, 0, 0, 0, 0, 0, 0, 0, 0, 0, '武昌-广州');
insert into TRAIN (NUM, TRAINNAME, TRAINBIGKIND, TRAINTYPE, YUXINGLICHENG, YINZUO, RUANZUO, OPENYINWO, CLOSEYINWO, RUANWO, ADVANCERUANWO, CANCHE, FADIANCHE, SHUYINCHE, YINZUOPRICE, RUANZUOPRICE, OPENYINWOPRICE, CLOSEYINWOPRICE, RUANWOPRICE, ADVANCERUANWOPRICE, CANCHEPRICE, FADIANCHEPRICE, SHUYINCHEPRICE, JIAKUAI, KONGTIAOFEE, XIEBIEZHENGJIAFEE, QIANYINTYPE, GONGDIANTYPE, WATERCOUNT, SERVERPERSON, RUNHOUR, YONGCHEDISHU, CHEDISHU, LINE0, LINE1, LINE2, LINE3, LINE4, LINE5, LINE6, LINE7, LINE8, HIGHTRAINBIANZHU, HIGHTRAINBIGKIND, CUNZENGMOSHI, TRAINLINE)
values (2, 'G9090', 1, 'CRH2A', 873, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 5, 1, 0, 5, 0, 10, 3, 3, 0, 400, 473, 0, 0, 0, 0, 0, 0, 0, 0, 2, '武昌-广州');

