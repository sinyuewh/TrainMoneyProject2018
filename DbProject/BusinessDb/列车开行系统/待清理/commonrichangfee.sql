IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'commonrichangfee')
	BEGIN
		DROP  Table commonrichangfee
	END
GO

create table commonrichangfee
(
  num       integer not null primary key,
  traintype varchar(50),
  rcfee1    numeric(18,2),
  rcfee2    numeric(18,2)
)
GO
--插入数据

insert into COMMONRICHANGFEE (NUM, TRAINTYPE, RCFEE1, RCFEE2)
values (1, '25B', 2.5, null);
insert into COMMONRICHANGFEE (NUM, TRAINTYPE, RCFEE1, RCFEE2)
values (2, '25G', 3, null);
insert into COMMONRICHANGFEE (NUM, TRAINTYPE, RCFEE1, RCFEE2)
values (3, '25K', 3.1, null);
insert into COMMONRICHANGFEE (NUM, TRAINTYPE, RCFEE1, RCFEE2)
values (4, '25G(直供电)', 3.1, null);
insert into COMMONRICHANGFEE (NUM, TRAINTYPE, RCFEE1, RCFEE2)
values (5, '25K(直供电)', 3.5, null);
insert into COMMONRICHANGFEE (NUM, TRAINTYPE, RCFEE1, RCFEE2)
values (6, '25T', 4.1, null);
insert into COMMONRICHANGFEE (NUM, TRAINTYPE, RCFEE1, RCFEE2)
values (7, '发电车', 17.4, null);