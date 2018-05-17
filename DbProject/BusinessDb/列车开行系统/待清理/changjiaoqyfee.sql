IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'changjiaoqyfee')
	BEGIN
		DROP  Table changjiaoqyfee
	END
GO

 create table changjiaoqyfee
(
  num       integer not null,
  lineid    integer not null primary key,
  linename  varchar(200) not null,
  jiaolu    varchar(500) not null,
  fee1      integer,
  fee2      integer,
  fee3      integer,
  checkflag nvarchar(1)
)
GO
--插入数据

insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (3, 4, '京通线、通让线', '赤峰-让湖路', 440, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (1, 2, '平齐线、京哈线、沈大线', '齐齐哈尔-哈尔滨-大连(沈阳)', 420, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (2, 3, '通让线、平齐线、滨州线', '通辽-满州里', 440, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (4, 5, '京哈线、京广线', '哈尔滨-长春（大连）-沈阳-山海关-北京(天津、石家庄、郑州、汉口)', 420, 270, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (5, 6, '京哈线、沟海线、沈大线', '北京-大连', 0, 270, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (6, 7, '京通线', '通辽、赤峰-北京北', 440, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (7, 8, '京原线', '北京(西)-太原', 460, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (8, 9, '丰沙线、京包线', '北京西-丰台-张家口南-大同-集宁南-包头', 440, 260, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (9, 10, '京哈线、津沈线、京沪线、胶济线', '哈尔滨-长春-沈阳-山海关-北京-天津-济南-徐州（青岛）-上海', 420, 270, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (10, 11, '京沪线、胶济客专、蓝烟线', '北京-济南-青岛(烟台)', 0, 280, 170, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (11, 12, '沈大线、京哈线、京九线、陇海线', '北京(天津、石家庄)-衡水-聊城-菏泽-商丘-阜阳', 410, 270, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (12, 13, '京广线', '北京西(石家庄)-(新乡)郑州-武昌-(岳阳、株洲、衡阳、郴州)广州', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (13, 14, '京广线、陇海线、兰新线、兰青线', '北京西-郑州-西安-兰州-嘉峪关(西宁)', 370, 260, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (14, 15, '京广线、陇海线、京沪线', '石家庄-郑州(洛阳)-上海', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (15, 16, '兰新线、兰青线、陇海线、京沪线', '嘉峪关(西宁)-兰州-西安-郑州-徐州-上海', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (16, 17, '达成线、达万线、宜万线、汉丹线', '武昌-宜昌-万州-达州-成都(重庆)', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (17, 18, '兰新线、兰青线、陇海线、京广线', '嘉峪关(西宁)-兰州-西安-郑州-武昌(武汉、汉口)', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (18, 19, '陇海线、京沪线', '西安-郑州-徐州-上海', 370, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (19, 20, '陇海线、西康线、襄渝线', '郑州(兰州)-西安-重庆', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (20, 21, '京广线、石太客专、太中银、包西线、宝成线', '北京-石家庄-太原-绥德-西安-宝鸡-成都', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (21, 22, '京广线、石太客专、太中银、包西、宝成', '北京-石家庄-太原-绥德-西安-包头', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (22, 23, '京广线、石太客专、太中、包兰线、干武线、兰新线', '北京-石家庄-太原-绥德-中卫(银川)-兰州-嘉峪关', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (23, 24, '达成、襄渝、汉丹线', '成都-达州-襄樊-汉口', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (24, 25, '京沪线', '北京-济南(徐州)-上海', 370, 270, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (25, 26, '京沪、胶济客专、蓝烟线', '上海-济南-青岛（烟台）', 0, 270, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (26, 27, '沪昆线', '上海（南）、杭州-鹰潭、向塘(南昌)、株洲', 0, 270, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (27, 28, '沪昆、京广线', '上海南-鹰潭-长沙', 0, 270, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (28, 29, '京九、沪昆线', '九江-南昌-向塘-杭州（南）-宁波（东）', 0, 270, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (29, 30, '京九、铜九、宁铜线', '南昌-南京', 400, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (30, 31, '宁西、合九线', '合肥-信阳', 400, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (31, 32, '沪昆、萧甬线', '宁波-杭州-鹰潭', 400, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (32, 33, '皖赣、淮南、宁芜线', '鹰潭-南京西（合肥）', 400, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (33, 34, '武九、京九线', '南昌-深圳西', 400, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (34, 35, '焦柳、宁西、宁启线', '襄樊-合肥-南通', 400, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (35, 36, '合九、京九线', '合肥-南昌', 390, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (36, 37, '焦柳线', '柳州-怀化', 420, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (37, 38, '胶济客专、胶新、新靖线', '扬州-青岛', 390, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (38, 39, '京九、沪昆线', '南昌（向塘）-金华西-杭州（义乌）-上海（南）-苏州', 370, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (39, 40, '京九、昌九城际线', '北京-阜阳-南昌-东莞东-广州(东)、深圳(西)', 390, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (40, 41, '渝怀、沪昆线', '怀化、长沙（株洲）-重庆（北）', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (41, 42, '川黔、沪昆线', '重庆-遵义-贵阳-怀化-株洲', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (42, 43, '南昆线', '南宁-昆明', 0, 280, 180, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (43, 44, '湘桂线', '南宁、柳州-衡阳', 420, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (44, 45, '成昆线', '成都-昆明', 0, 290, 180, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (45, 46, '川黔、黔桂线', '重庆北-遵义-贵阳-柳州', 0, 290, 180, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (46, 47, '襄渝线', '重庆（北）-襄阳', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (47, 48, '沪昆线', '昆明-贵阳', 0, 290, 180, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (48, 49, '陇海、宝成(西康)线', '西安(宝鸡)-成都(广元)', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (49, 50, '包兰、宝中线', '惠农（兰州）-中卫-宝鸡-西安', 0, 270, 170, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (50, 51, '青藏线', '格尔木-拉萨', 1000, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (51, 52, '丰沙、京包、京张、张集、集包线', '北京西-张家口南-集宁南-包头', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (52, 53, '京九、赣龙、漳龙、鹰厦线', '南阳-信阳-阜阳（麻城）(泰州）-南昌（向塘）-赣州-漳平-厦门（漳州东）', 400, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (53, 54, '沪昆、焦柳、宜万线', '株洲-达州', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (54, 55, '京包、临额线', '呼和浩特-临河-额济纳', 410, 0, 0, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (55, 56, '蓝烟、胶济客专、京沪、石德、石太客专线', '青岛(烟台)-济南-德州-石家庄-太原', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (56, 57, '胶济客专、京沪、新石、京九线', '青岛-济南-阜阳', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (57, 58, '京九、沪昆、峰福（鹰厦）线', '南昌(向塘)-鹰潭(横峰)-南平(南)-福州(厦门)', 0, 270, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (58, 59, '遂成、达成、襄渝、达万、宜万、万凉、宁蓉线宜凉段、鸦宜、焦柳、陇海线', '成都-遂宁(重庆)-达州-宜昌-襄阳-洛阳-郑州', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (59, 60, '遂成、达成、襄渝、达万、宜万、万凉、宁蓉线宜凉段、鸦宜、焦柳、长荆、汉丹线', '成都-遂宁(重庆)-达州-宜昌-汉口(武昌)', 0, 260, 160, null);
insert into CHANGJIAOQYFEE (NUM, LINEID, LINENAME, JIAOLU, FEE1, FEE2, FEE3, CHECKFLAG)
values (60, 61, '兰新、兰青、包兰、京包', '嘉峪关（西宁）-兰州-银川-呼和浩特', 0, 260, 160, null);


