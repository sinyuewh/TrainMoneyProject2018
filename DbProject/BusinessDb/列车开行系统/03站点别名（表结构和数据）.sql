/*
站点别名
*/
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'trainalias')
	BEGIN
		DROP  Table trainalias
	END
GO 

create table trainalias
(
  num        integer,									--序号
  trainname  varchar(20) not null primary key,			--站点别名
  trainalias varchar(1000) not null						--相关站点
)

Go

insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (2, '上海', '上海,上海南,上海虹桥');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (3, '北京', '北京,北京西,北京南,北京北');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (5, '沈阳', '沈阳,沈阳北');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (11, '郑州', '郑州,郑州东');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (12, '西安', '西安,西安北');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (17, '襄阳', '襄阳,襄阳东');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (14, '重庆', '重庆,重庆北');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (8, '长春', '长春,长春西');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (9, '南京', '南京,南京南');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (15, '成都', '成都,成都东');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (18, '长沙', '长沙,长沙南');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (6, '哈尔滨', '哈尔滨,哈尔滨西');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (7, '大连', '大连,大连北');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (10, '杭州', '杭州,杭州东');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (13, '天津', '天津,天津西,天津南,天津北');
insert into TRAINALIAS (NUM, TRAINNAME, TRAINALIAS)
values (16, '深圳', '深圳,深圳北,深圳东');