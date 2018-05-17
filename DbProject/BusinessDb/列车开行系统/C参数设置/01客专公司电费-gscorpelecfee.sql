/*--客专公司电费.*/
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'gscorpelecfee')
	BEGIN
		DROP  Table gscorpelecfee
	END
GO

CREATE TABLE gscorpelecfee
(
   
  num      integer not null primary key,			--序号
  corpname varchar(50) not null,					--公司名称	
  rwbureau varchar(50) not null,					--铁路局管界
  netfee   integer not null,						--接触网使用费
  elecfee  integer not null							--电费

)
GO


insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (6, '石太客专', '太原局', 280, 300);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (4, '京津城际', '北京局', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (5, '石太客专', '北京局', 280, 300);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (7, '郑西客专', '郑州局', 310, 520);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (8, '郑西客专', '西安局', 300, 480);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (9, '沪汉蓉公司', '武汉局', 280, 270);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (10, '武广客专', '武汉局', 300, 360);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (11, '武广客专', '广铁集团', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (12, '胶济客专', '济南局', 280, 190);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (13, '沪宁公司', '上海局', 300, 340);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (14, '沪杭公司', '上海局', 300, 340);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (15, '合武安徽', '上海局', 280, 300);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (16, '浙江沿海', '上海局', 280, 220);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (17, '昌九城际', '南昌局', 280, 300);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (18, '东南沿海', '南昌局', 280, 250);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (19, '市域公司', '成都局', 290, 220);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (20, '哈大客专', '哈尔滨局', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (21, '哈大客专', '沈阳局', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (22, '京石客专', '北京局', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (23, '石武客专', '北京局', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (24, '石武客专', '郑州局', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (25, '石武客专', '武汉局', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (26, '长吉城际', '沈阳局', 280, 250);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (27, '广深港公司', '广铁集团', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (28, '广珠城际', '广铁集团', 280, 250);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (29, '海南东环', '广铁集团', 280, 250);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (30, '京沪客专', '北京局', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (31, '京沪客专', '济南局', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (32, '京沪客专', '上海局', 300, 400);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (33, '龙岩公司（龙彰线）', '南昌局', 280, 250);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (34, '北京铁路局', '北京', 100, 160);
insert into GSCORPELECFEE (NUM, CORPNAME, RWBUREAU, NETFEE, ELECFEE)
values (52, '测试铁路局', '测试局', 11, 11);

