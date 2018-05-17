IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'a2a3fee')
	BEGIN
		DROP  Table a2a3fee
	END
GO

CREATE TABLE a2a3fee
(
   
  num       integer not null,
  traintype varchar(50) not null,
  a2fee     numeric(18,2),
  a3fee     numeric(18,2)

)
GO


--插入数据
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (1, '25B', 0, 3.8);
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (2, '25BS', 0, 9.98);
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (3, '25G', 0, 8.08);
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (4, '25G(直供电)', 0, 8.46);
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (5, '25K', 7.6, 10.93);
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (6, '25K(直供电)', 8.08, 11.88);
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (7, '19K', 10.9, 15.68);
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (8, '19T', 10.9, 15.68);
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (9, '25T', 10.9, 15.68);
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (10, '发电机组(康明斯)', 0, 25);
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (11, '发电机组(MTU183)', 0, 39.2);
insert into A2A3FEE (NUM, TRAINTYPE, A2FEE, A3FEE)
values (12, '发电机组(MTU396)', 0, 50);