IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'trainperson')
	BEGIN
		DROP  Table trainperson
	END
GO


--
create table trainperson
(
  num       integer not null,
  kind      varchar(50) not null,
  traintype varchar(50) not null,
  gw        varchar(50) not null,
  pcount    numeric not null
)
;
alter table trainperson
  add primary key (num);
  
 --
 insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (123, '0', '25G(直)', '车辆乘务员', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (124, '0', '25G(非直)', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (125, '0', '25G(非直)', '客运乘务员', 17);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (126, '0', '25G(非直)', '车辆乘务员', 4);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (127, '1', 'CRH动坐(8)', '动车司机', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (128, '1', 'CRH动坐(8)', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (129, '1', 'CRH动坐(8)', '客运乘务员', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (130, '1', 'CRH动坐(8)', '随车机械师', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (131, '1', 'CRH动坐(16)', '动车司机', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (132, '1', 'CRH动坐(16)', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (133, '1', 'CRH动坐(16)', '客运乘务员', 4);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (134, '1', 'CRH动坐(16)', '随车机械师', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (135, '1', 'CRH动卧', '动车司机', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (136, '1', 'CRH动卧', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (137, '1', 'CRH动卧', '客运乘务员', 8);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (138, '1', 'CRH动卧', '随车机械师', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (139, '0', '25T', '公安乘警', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (140, '0', '25G(直)', '公安乘警', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (141, '0', '25G(非直)', '公安乘警', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (142, '0', '25B', '公安乘警', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (143, '1', 'CRH动坐(8)', '公安乘警', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (144, '1', 'CRH动坐(16)', '公安乘警', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (145, '1', 'CRH动卧', '公安乘警', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (146, '0', '25T', '硬座乘务员', .5);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (147, '0', '25T', '硬卧乘务员', .5);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (148, '0', '25T', '软卧乘务员', .5);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (149, '0', '25G(直)', '硬座乘务员', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (150, '0', '25G(直)', '硬卧乘务员', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (151, '0', '25G(直)', '软卧乘务员', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (152, '0', '25G(非直)', '硬座乘务员', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (153, '0', '25G(非直)', '硬卧乘务员', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (154, '0', '25G(非直)', '软卧乘务员', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (155, '0', '25B', '硬座乘务员', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (156, '0', '25B', '硬卧乘务员', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (157, '0', '25B', '软卧乘务员', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (81, '0', '25B', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (82, '0', '25B', '客运乘务员', 17);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (83, '0', '25B', '车辆乘务员', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (84, '0', '25G', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (85, '0', '25G', '客运乘务员', 8);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (86, '0', '25G', '车辆乘务员', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (87, '0', '25K', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (88, '0', '25K', '客运乘务员', 8);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (89, '0', '25K', '车辆乘务员', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (90, '0', '25T', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (91, '0', '25T', '客运乘务员', 8);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (92, '0', '25T', '车辆乘务员', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (93, '1', 'CRH2A', '动车司机', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (94, '1', 'CRH2A', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (95, '1', 'CRH2A', '客运乘务员', 4);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (96, '1', 'CRH2A', '随车机械师', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (97, '1', 'CRH2B', '动车司机', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (98, '1', 'CRH2B', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (99, '1', 'CRH2B', '客运乘务员', 4);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (100, '1', 'CRH2B', '随车机械师', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (101, '1', 'CRH2C', '动车司机', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (102, '1', 'CRH2C', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (103, '1', 'CRH2C', '客运乘务员', 4);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (104, '1', 'CRH2C', '随车机械师', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (105, '1', 'CRH2E', '动车司机', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (106, '1', 'CRH2E', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (107, '1', 'CRH2E', '客运乘务员', 4);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (108, '1', 'CRH2E', '随车机械师', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (109, '1', 'CRH380A', '动车司机', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (110, '1', 'CRH380A', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (111, '1', 'CRH380A', '客运乘务员', 4);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (112, '1', 'CRH380A', '随车机械师', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (113, '1', 'CRH380AL', '动车司机', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (114, '1', 'CRH380AL', '列车长', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (115, '1', 'CRH380AL', '客运乘务员', 8);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (116, '1', 'CRH380AL', '随车机械师', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (117, '1', 'CRH5A', '动车司机', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (118, '1', 'CRH5A', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (119, '1', 'CRH5A', '客运乘务员', 4);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (120, '1', 'CRH5A', '随车机械师', 2);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (121, '0', '25G(直)', '列车长', 1);
insert into TRAINPERSON (NUM, KIND, TRAINTYPE, GW, PCOUNT)
values (122, '0', '25G(直)', '客运乘务员', 17);
