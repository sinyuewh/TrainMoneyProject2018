/**-----03动车车厢配置---------**/
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'hightrainprofile')
	BEGIN
		DROP  Table hightrainprofile
	END
GO

CREATE TABLE hightrainprofile
(
  id            integer not null,							--数据ID
  miletype      varchar(50) not null,						--动车类别（200公里和300公里）
  hightraintype varchar(50) not null primary key,			--动车类型（CRH2A等）
  
  --动车票价和定员
  pcount1       integer not null,							-- 一等座定员
  rate1         numeric(18,6) not null,						-- 一等座基准票价
  pcount2       integer not null,							-- 二等座定员
  rate2         numeric(18,6) not null,						-- 二等座基准票价
  pcount3       integer not null,							-- 动卧定员
  rate3         numeric(18,6) not null,						-- 动卧上铺基准票价
  rate31        numeric(18,6),								--动卧下铺基准票价
  pcount4       integer not null,							--商务座定员
  rate4         numeric(18,6) not null,						--商务座基准票价 
  pcount5       integer,									--特等座定员
  rate5         numeric(18,6),								--特等座基准票价
  
 
  speed         integer,
  weight        numeric(18,2),
  price         numeric(18,2),
  cost1         numeric(18,2),
  cost2         numeric(18,2),
  cost3         numeric(18,2),
  cost21        numeric(18,2),
  cost22        numeric(18,2),
  speed2        integer,
  speed3        integer
  

)
GO


--插入数据
insert into HIGHTRAINPROFILE (ID, MILETYPE, HIGHTRAINTYPE, PCOUNT1, RATE1, PCOUNT2, RATE2, PCOUNT3, RATE3, PCOUNT4, RATE4, RATE31, SPEED, WEIGHT, PRICE, COST1, COST2, COST3, COST21, COST22, SPEED2, SPEED3, RATE5, PCOUNT5)
values (6, '200公里', 'CRH2B', 155, .3703, 1075, .3086, 0, 0, 0, 0, 0, 120, 817, 25800, 670, 710, 210, 3249, 5500, 145, 170, 0, 0);
insert into HIGHTRAINPROFILE (ID, MILETYPE, HIGHTRAINTYPE, PCOUNT1, RATE1, PCOUNT2, RATE2, PCOUNT3, RATE3, PCOUNT4, RATE4, RATE31, SPEED, WEIGHT, PRICE, COST1, COST2, COST3, COST21, COST22, SPEED2, SPEED3, RATE5, PCOUNT5)
values (7, '200公里', 'CRH5A', 112, .3703, 458, .3086, 0, 0, 0, 0, 0, 120, 450, 12900, 345, 1475, 105, 2600, 3200, 145, 170, 0, 0);
insert into HIGHTRAINPROFILE (ID, MILETYPE, HIGHTRAINTYPE, PCOUNT1, RATE1, PCOUNT2, RATE2, PCOUNT3, RATE3, PCOUNT4, RATE4, RATE31, SPEED, WEIGHT, PRICE, COST1, COST2, COST3, COST21, COST22, SPEED2, SPEED3, RATE5, PCOUNT5)
values (1, '200公里', 'CRH2A', 100, .3703, 510, .3086, 0, 0, 0, .8415, 0, 120, 410, 12900, 335, 351.3, 105, 1624, 2700, 145, 170, 0, 0);
insert into HIGHTRAINPROFILE (ID, MILETYPE, HIGHTRAINTYPE, PCOUNT1, RATE1, PCOUNT2, RATE2, PCOUNT3, RATE3, PCOUNT4, RATE4, RATE31, SPEED, WEIGHT, PRICE, COST1, COST2, COST3, COST21, COST22, SPEED2, SPEED3, RATE5, PCOUNT5)
values (3, '300公里', 'CRH2C', 51, .7733, 559, .4833, 0, 0, 0, 0, 0, 0, 420, 19600, 355, 446.58, 145, 1700, 2800, 0, 260, 0, 0);
insert into HIGHTRAINPROFILE (ID, MILETYPE, HIGHTRAINTYPE, PCOUNT1, RATE1, PCOUNT2, RATE2, PCOUNT3, RATE3, PCOUNT4, RATE4, RATE31, SPEED, WEIGHT, PRICE, COST1, COST2, COST3, COST21, COST22, SPEED2, SPEED3, RATE5, PCOUNT5)
values (2, '200公里', 'CRH2E', 0, 0, 110, .3086, 520, .5385, 0, 0, .6059, 120, 827, 25800, 670, 710, 210, 3249, 5500, 145, 170, 0, 0);
insert into HIGHTRAINPROFILE (ID, MILETYPE, HIGHTRAINTYPE, PCOUNT1, RATE1, PCOUNT2, RATE2, PCOUNT3, RATE3, PCOUNT4, RATE4, RATE31, SPEED, WEIGHT, PRICE, COST1, COST2, COST3, COST21, COST22, SPEED2, SPEED3, RATE5, PCOUNT5)
values (4, '300公里', 'CRH380A', 28, .7733, 518, .4833, 0, 0, 4, 0, 0, 0, 432, 18750, 355, 450, 145, 1700, 2800, 0, 260, 0, 6);
insert into HIGHTRAINPROFILE (ID, MILETYPE, HIGHTRAINTYPE, PCOUNT1, RATE1, PCOUNT2, RATE2, PCOUNT3, RATE3, PCOUNT4, RATE4, RATE31, SPEED, WEIGHT, PRICE, COST1, COST2, COST3, COST21, COST22, SPEED2, SPEED3, RATE5, PCOUNT5)
values (5, '300公里', 'CRH380AL', 112, .7733, 923, .4833, 0, 0, 20, 1.5466, 0, 0, 964, 37500, 680, 900, 290, 3400, 5600, 0, 260, 0, 6);
insert into HIGHTRAINPROFILE (ID, MILETYPE, HIGHTRAINTYPE, PCOUNT1, RATE1, PCOUNT2, RATE2, PCOUNT3, RATE3, PCOUNT4, RATE4, RATE31, SPEED, WEIGHT, PRICE, COST1, COST2, COST3, COST21, COST22, SPEED2, SPEED3, RATE5, PCOUNT5)
values (8, '300公里', 'CRH380B', 107, .7733, 373, .4833, 0, 0, 0, 0, 0, 120, 432, 19600, 355, 450, 145, 1700, 2800, 145, 260, 0, 0);
insert into HIGHTRAINPROFILE (ID, MILETYPE, HIGHTRAINTYPE, PCOUNT1, RATE1, PCOUNT2, RATE2, PCOUNT3, RATE3, PCOUNT4, RATE4, RATE31, SPEED, WEIGHT, PRICE, COST1, COST2, COST3, COST21, COST22, SPEED2, SPEED3, RATE5, PCOUNT5)
values (9, '300公里', 'CRH380BL', 157, .7733, 838, .4833, 0, 0, 22, 1.5466, 0, 120, 964, 39200, 710, 900, 290, 3400, 5600, 145, 260, 0, 0);
