/*--铁路局数据（大站主表）--*/
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'bigstation')
	BEGIN
		DROP  Table bigstation
	END
GO

CREATE TABLE bigstation
(
   
	  num   integer not null  primary key,					--序号
	  name1 varchar(50) not null ,							--铁路局名称
	  fee1  integer,										--内燃牵引费
	  fee2  integer,										--电力牵引费
	  fee3  integer,										--电力机车网电费
	  fee4  integer											--动车组网电费

)

--插入数据
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (3, '北京铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (14, '成都铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (12, '广州铁路集团公司', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (1, '哈尔滨铁路局', 460, 280, 170, 240);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (5, '呼和浩特铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (9, '济南铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (15, '昆明铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (16, '兰州铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (11, '南昌铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (10, '上海铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (2, '沈阳铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (18, '乌鲁木齐铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (7, '武汉铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (8, '西安铁路局', null, null, null, null);
insert into BIGSTATION (NUM, NAME1, FEE1, FEE2, FEE3, FEE4)
values (6, '郑州铁路局', null, null, null, null);

