 IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'persongz')
	BEGIN
		DROP  Table persongz
	END
GO
 --
create table persongz
(
  num  integer not null,
  gw   varchar(50),
  gz   numeric(18,2),
  fj   numeric(18,2),
  kind varchar(1),
  qtfy numeric(18,2),
  gl   varchar(1)
)
;
alter table persongz
  add primary key (num);
  
  
--导入数据
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (10, '列车长', 67700, 48.6, '0', 3500, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (11, '硬座乘务员', 51300, 48.6, '0', 3200, '0');
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (14, '车辆乘务员', 65300, 48.6, '0', 3000, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (20, '动车司机', 115000, 48.6, '1', 3800, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (21, '列车长', 84300, 48.6, '1', 4400, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (22, '客运乘务员', 68200, 48.6, '1', 4300, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (23, '随车机械师', 78000, 48.6, '1', 3500, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (16, null, null, null, '0', null, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (17, null, null, null, '0', null, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (18, null, null, null, '0', null, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (19, null, null, null, '0', null, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (15, '公安乘警', 80000, 20.5, '0', 3000, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (12, '硬卧乘务员', 51300, 48.6, '0', 3200, '2');
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (13, '软卧乘务员', 51300, 48.6, '0', 3200, '3');
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (24, '公安乘警', 80000, 20.5, '1', 3000, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (25, null, null, null, '1', null, null);
insert into PERSONGZ (NUM, GW, GZ, FJ, KIND, QTFY, GL)
values (26, null, null, null, '1', null, null);