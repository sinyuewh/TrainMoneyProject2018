 IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'lichengjianrate')
	BEGIN
		DROP  Table lichengjianrate
	END
GO
--
create table lichengjianrate
(
  id       integer not null,
  pos1     integer not null,
  pos2     integer,
  jianrate integer not null
)
;
alter table lichengjianrate
  add primary key (id);
  
GO
--插入数据
insert into lichengjianrate (ID, POS1, POS2, JIANRATE)
values (1, 1, 200, 0);
insert into LICHENGJIANRATE (ID, POS1, POS2, JIANRATE)
values (2, 201, 500, 10);
insert into LICHENGJIANRATE (ID, POS1, POS2, JIANRATE)
values (3, 501, 1000, 20);
insert into LICHENGJIANRATE (ID, POS1, POS2, JIANRATE)
values (4, 1001, 1500, 30);
insert into LICHENGJIANRATE (ID, POS1, POS2, JIANRATE)
values (5, 1501, 2500, 40);
insert into LICHENGJIANRATE (ID, POS1, POS2, JIANRATE)
values (6, 2501, null, 50);

