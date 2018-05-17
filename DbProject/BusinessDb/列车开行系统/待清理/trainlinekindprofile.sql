
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'trainlinekindprofile')
	BEGIN
		DROP  Table trainlinekindprofile
	END
GO

--
create table trainlinekindprofile
(
  lineid    integer not null,
  linename  varchar(50) not null,
  jiechufee numeric(18,2),
  dianfee   numeric(18,2)
)
;
alter table trainlinekindprofile
  add primary key (lineid); 
  
  
  --
  insert into TRAINLINEKINDPROFILE (LINEID, LINENAME, JIECHUFEE, DIANFEE)
values (0, '普通线路', 80, 160);
insert into TRAINLINEKINDPROFILE (LINEID, LINENAME, JIECHUFEE, DIANFEE)
values (1, '200公里线路', 280, 300);
insert into TRAINLINEKINDPROFILE (LINEID, LINENAME, JIECHUFEE, DIANFEE)
values (2, '300公里线路', 300, 400);