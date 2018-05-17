/**--02普通列车车厢配置-------*/
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'chexianbianzhu')
	BEGIN
		DROP  Table chexianbianzhu
	END
GO

CREATE TABLE chexianbianzhu
(
   
  id         integer not null primary key,          --数据ID
  kind       varchar(50) not null,					--车厢类别ID    （YinWo1）
  name       varchar(50) not null,					--车厢类别Name  （硬卧票）
  smallkind1 varchar(50),							--车厢小类1     （开放式）
  smallkind2 varchar(50),							--车厢小类2     （上铺）
  rate       integer not null,						--与基础票价比率 (110/100）
  pcount     integer not null						--满员人数

)
GO


--插入数据
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (12, 'SYinZuo', '双层硬座', null, null, 100, 180);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (13, 'SRuanZuo', '双层软座', null, null, 200, 110);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (14, '19KRuanWo1', '19K高级软卧', null, '上铺', 300, 10);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (15, '19KRuanW02', '19K高级软卧', null, '下铺', 300, 10);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (16, '19TRuanWo1', '19T高级软卧', null, '上铺', 320, 8);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (17, '19TruanWo2', '19T高级软卧', null, '下铺', 320, 8);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (1, 'YinZuo', '硬座', null, null, 100, 118);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (2, 'RuanZuo', '软座', null, null, 200, 60);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (3, 'YinWo1', '硬卧票', '开放式', '上铺', 110, 22);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (4, 'YinWo2', '硬卧票', '开放式', '中铺', 120, 22);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (5, 'YinWo3', '硬卧票', '开放式', '下铺', 130, 22);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (6, 'YinWo4', '硬卧票', '包房式', '上铺', 156, 22);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (7, 'YinWo5', '硬卧票', '包房式', '下铺', 169, 22);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (8, 'RuanWo1', '软卧票', null, '上铺', 175, 18);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (9, 'RuanWo2', '软卧票', null, '下铺', 195, 18);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (10, 'GaoJiRuanWo1', '高级软卧票', null, '上铺', 210, 18);
insert into CHEXIANBIANZHU (ID, KIND, NAME, SMALLKIND1, SMALLKIND2, RATE, PCOUNT)
values (11, 'GaoJiRuanWo2', '高级软卧票', null, '下铺', 240, 18);