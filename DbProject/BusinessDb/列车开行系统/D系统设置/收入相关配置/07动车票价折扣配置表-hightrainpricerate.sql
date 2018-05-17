 IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'hightrainpricerate')
	BEGIN
		DROP  Table hightrainpricerate
	END
GO
--
create table hightrainpricerate
(
  num     integer not null,						--序号（Key）
  licheng integer,								--里程
  rate1   numeric(18,2),						--既有线折扣(%)
  rate2   numeric(18,2),						--200公里线路折扣(%)
  rate3   numeric(18,2)							--300公里线路折扣(%)
)
;
alter table hightrainpricerate
  add primary key (num);

GO

--插入数据
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (2, 500, 5, 5, 6);
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (3, 600, 5, 5, 5);
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (4, 900, 5, 5, 5);
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (5, 1000, 5, 5, 5);
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (6, 1100, 5, 5, 5);
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (7, 1200, 5, 5, 5);
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (8, 1300, 5, 5, 5);
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (9, 1500, 5, 5, 5);
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (10, 1600, 5, 5, 5);
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (13, 1800, 6, 6, 6);
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (14, 2000, 6, 7, 7);
insert into HIGHTRAINPRICERATE (NUM, LICHENG, RATE1, RATE2, RATE3)
values (15, 78, 5, 8, 9);

