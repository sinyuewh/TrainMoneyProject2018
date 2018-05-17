 IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'lichengprofile')
	BEGIN
		DROP  Table lichengprofile
	END
GO
--
create table lichengprofile
(
  id       integer not null,
  pos1     integer not null,
  pos2     integer,
  possize  integer not null,
  postotal integer
)
;
alter table lichengprofile
  add primary key (id);
  
--插入数据

insert into lichengprofile (ID, POS1, POS2, POSSIZE, POSTOTAL)
values (1, 1, 20, 20, 1);
insert into LICHENGPROFILE (ID, POS1, POS2, POSSIZE, POSTOTAL)
values (2, 21, 200, 10, 18);
insert into LICHENGPROFILE (ID, POS1, POS2, POSSIZE, POSTOTAL)
values (3, 201, 400, 20, 10);
insert into LICHENGPROFILE (ID, POS1, POS2, POSSIZE, POSTOTAL)
values (4, 401, 700, 30, 10);
insert into LICHENGPROFILE (ID, POS1, POS2, POSSIZE, POSTOTAL)
values (5, 701, 1100, 40, 10);
insert into LICHENGPROFILE (ID, POS1, POS2, POSSIZE, POSTOTAL)
values (6, 1101, 1600, 50, 10);
insert into LICHENGPROFILE (ID, POS1, POS2, POSSIZE, POSTOTAL)
values (7, 1601, 2200, 60, 10);
insert into LICHENGPROFILE (ID, POS1, POS2, POSSIZE, POSTOTAL)
values (8, 2201, 2900, 70, 10);
insert into LICHENGPROFILE (ID, POS1, POS2, POSSIZE, POSTOTAL)
values (9, 2901, 3700, 80, 10);
insert into LICHENGPROFILE (ID, POS1, POS2, POSSIZE, POSTOTAL)
values (10, 3701, 4600, 90, 10);
insert into LICHENGPROFILE (ID, POS1, POS2, POSSIZE, POSTOTAL)
values (11, 4601, null, 100, null);
