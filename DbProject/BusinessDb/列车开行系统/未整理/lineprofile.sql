 IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'lineprofile')
	BEGIN
		DROP  Table lineprofile
	END
GO
--
create table lineprofile
(
  id       integer,
  linetype varchar(50) not null,
  linename varchar(50) not null,
  fee1     numeric(18,2),
  fee2    numeric(18,2),
  fee3    numeric(18,2),
  fee4    numeric(18,2),
  fee5    numeric(18,2),
  fee6    numeric(18,2)
)
;
alter table lineprofile
  add primary key (linetype);
alter table lineprofile
  add unique (linename);

go
--插入数据

insert into LINEPROFILE (ID, LINETYPE, LINENAME, FEE1, FEE2, FEE3, FEE4, FEE5, FEE6)
values (1, 'Line1', '特一类', 104.7, 157.1, 104.7, 157.1, 70.4, 49.8);
insert into LINEPROFILE (ID, LINETYPE, LINENAME, FEE1, FEE2, FEE3, FEE4, FEE5, FEE6)
values (2, 'Line2', '特二类', 87, 130.5, 87, 130.5, 67.2, 47.6);
insert into LINEPROFILE (ID, LINETYPE, LINENAME, FEE1, FEE2, FEE3, FEE4, FEE5, FEE6)
values (3, 'Line3', '一类上浮', 70.4, 98.6, 70.4, 98.6, 64, 45.3);
insert into LINEPROFILE (ID, LINETYPE, LINENAME, FEE1, FEE2, FEE3, FEE4, FEE5, FEE6)
values (4, 'Line4', '一类', 70.4, 98.6, 70.4, 98.6, 59.3, 42);
insert into LINEPROFILE (ID, LINETYPE, LINENAME, FEE1, FEE2, FEE3, FEE4, FEE5, FEE6)
values (5, 'Line5', '二类上浮', 35.2, 49.3, 35.2, 49.3, 32, 22.7);
insert into LINEPROFILE (ID, LINETYPE, LINENAME, FEE1, FEE2, FEE3, FEE4, FEE5, FEE6)
values (6, 'Line6', '二类', 35.2, 49.3, 35.2, 49.3, 29.6, 21);
insert into LINEPROFILE (ID, LINETYPE, LINENAME, FEE1, FEE2, FEE3, FEE4, FEE5, FEE6)
values (7, 'Line7', '三类', 26.1, 36.5, 26.1, 36.5, 23.7, 16.8);
insert into LINEPROFILE (ID, LINETYPE, LINENAME, FEE1, FEE2, FEE3, FEE4, FEE5, FEE6)
values (8, 'Line8', '三类下浮', 26.1, 36.5, 26.1, 36.5, 19, 13.4);
