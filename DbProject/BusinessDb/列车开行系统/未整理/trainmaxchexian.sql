IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'trainmaxchexian')
	BEGIN
		DROP  Table trainmaxchexian
	END
GO 
--
create table trainmaxchexian
(
  traintype varchar(50) not null,
  yz        integer,
  yw        integer,
  rw        integer
)
;
alter table trainmaxchexian
  add primary key (traintype);
  
--
insert into TRAINMAXCHEXIAN (TRAINTYPE, YZ, YW, RW)
values ('空调车25G', 5, 11, 1);
insert into TRAINMAXCHEXIAN (TRAINTYPE, YZ, YW, RW)
values ('空调车25G(非直供电)', 5, 10, 1);
insert into TRAINMAXCHEXIAN (TRAINTYPE, YZ, YW, RW)
values ('绿皮车25B', 5, 11, 1);
insert into TRAINMAXCHEXIAN (TRAINTYPE, YZ, YW, RW)
values ('空调车25T', 3, 13, 1);