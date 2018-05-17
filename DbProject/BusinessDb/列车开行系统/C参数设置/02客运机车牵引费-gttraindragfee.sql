/*-- 02客运机车牵引费 -*/
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'gttraindragfee')
	BEGIN
		DROP  Table gttraindragfee
	END
GO

CREATE TABLE gttraindragfee
(
   
  num       integer not null primary key,			--序号
  linetype  varchar(150) not null,					--线别
  crossroad varchar(150) not null,					--交路
  mactype   varchar(50) not null,					--机种
  dragfee   integer not null,						--牵引费单价
  netfee    integer									--接触网（含电费）

)
GO

--插入数据
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (6, '京通、通让线', '北京（北）～赤峰、通辽～让湖路', '内燃', 458, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (4, '平齐、京哈、沈大线', '齐齐哈尔～哈尔滨～沈阳～大连(丹东)', '内燃', 438, 100);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (5, '通让、平齐、滨州线', '通辽～齐齐哈尔～满州里', '内燃', 458, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (7, '京哈、京广线', '哈尔滨～长春（大连）～沈阳～山海关～北京(天津、石家庄、郑州、汉口)', '内燃', 438, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (8, '京哈、京广线', '哈尔滨～长春（大连）～沈阳～山海关～北京(天津、石家庄、郑州、汉口)', '电力', 275, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (9, '京哈、沟海、沈大线 ', '北京～大连', '电力', 275, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (10, '京通线', '通辽、赤峰～北京北', '内燃', 458, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (11, '京原线', '北京(西)～太原', '内燃', 478, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (12, '丰沙线、京包线', '北京西～丰台～张家口南～大同～集宁南～包头', '内燃', 458, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (13, '丰沙线、京包线', '北京西～丰台～张家口南～大同～集宁南～包头', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (14, '京哈、津沈、京沪线、胶济线、胶济客专', '哈尔滨～长春～沈阳～山海关～北京～天津～济南～徐州（青岛）～上海', '内燃', 438, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (15, '京哈、津沈、京沪线、胶济线、胶济客专', '哈尔滨～长春～沈阳～山海关～北京～天津～济南～徐州（青岛）～上海', '电力', 275, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (16, '京沪、胶济客专、蓝烟线', '北京～济南～青岛(烟台)', '电力', 285, 175);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (17, '沈大、京哈、京九、陇海线', '北京(天津、石家庄)～衡水～聊城～菏泽～商丘～阜阳～南昌（郑州）', '内燃', 428, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (18, '沈大、京哈、京九、陇海线', '哈尔滨～长春（大连）～沈阳～北京(天津)～商丘～阜阳～南昌（郑州）', '电力', 275, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (19, '京广线', '北京西(石家庄)～(新乡)郑州～武昌～(岳阳、株洲、衡阳、郴州)广州', '内燃', 418, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (20, '京广线', '北京西(石家庄)～(新乡)郑州～武昌～(岳阳、株洲、衡阳、郴州)广州', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (21, '京广、陇海、兰新、兰青线', '北京西～郑州～西安～兰州～嘉峪关(西宁)', '内燃', 388, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (22, '京广、陇海、兰新、兰青线', '北京西～郑州～西安～兰州～嘉峪关(西宁)', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (23, '兰新、兰青、陇海、京沪线', '嘉峪关(西宁)～兰州～西安～郑州（信阳）～徐州～上海', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (24, '达成、达万、宜万、汉丹线', '武昌～宜昌～万州～达州～成都(重庆) ', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (25, '兰新、兰青、陇海、京广线', '嘉峪关(西宁)～兰州～西安～郑州～武昌(武汉、汉口)', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (26, '陇海、京沪线', '西安～郑州～徐州～上海', '内燃', 388, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (27, '陇海、西康、襄渝线', '郑州(兰州)～西安～重庆', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (28, '京广、石太客专、太中银、包西、宝成线', '北京～石家庄～太原～绥德～西安～宝鸡～成都', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (29, '京广、石太客专、太中银、包西、宝成线', '北京～石家庄～太原～绥德～西安～包头', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (30, '京广、石太客专、太中、包兰、干武、兰新线', '北京～石家庄～太原～绥德～中卫(银川)～兰州～嘉峪关', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (31, '达成、襄渝、汉丹线', '成都～达州～襄樊～汉口', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (32, '京沪线', '北京～济南(徐州)～上海', '内燃', 388, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (33, '京沪线', '北京～济南(徐州)～上海', '电力', 275, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (34, '京沪、胶济客专、蓝烟线', '上海～济南～青岛（烟台）', '电力', 275, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (35, '沪昆线', '上海（南）、杭州～鹰潭、向塘(南昌)、株洲', '内燃', 418, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (36, '沪昆线', '上海（南）、杭州～鹰潭、向塘(南昌)、株洲', '电力', 275, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (37, '沪昆、京广线', '上海南～鹰潭～长沙', '电力', 275, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (38, '京九、沪昆线', '九江～南昌～向塘～杭州（南）～宁波（东）', '电力', 275, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (39, '京九、铜九、宁铜线', '南昌～南京', '内燃', 418, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (40, '宁西、合九线', '合肥～信阳', '内燃', 418, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (41, '沪昆、萧甬线', '宁波～杭州～鹰潭', '内燃', 418, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (42, '皖赣、淮南、宁芜线', '鹰潭～南京西（合肥）', '内燃', 418, 100);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (43, '武九、京九线', '南昌～深圳西', '内燃', 418, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (44, '焦柳、宁西、宁启线', '襄樊～合肥～南通', '内燃', 418, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (45, '合九、京九线', '连云港（东）～合肥～南昌', '内燃', 408, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (46, '焦柳线', '柳州～怀化', '内燃', 438, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (47, '胶济客专、胶新、新靖线', '扬州～青岛', '内燃', 408, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (48, '京九、沪昆线', '南昌（向塘）～金华西～杭州（义乌）～上海（南）～苏州', '内燃', 388, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (49, '京九、昌九城际线', '北京～阜阳～南昌～东莞东～广州(东)、深圳(西)', '内燃', 408, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (50, '渝怀、沪昆线', '怀化、长沙（株洲）～重庆（北）', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (51, '川黔、沪昆线', '重庆～遵义～贵阳～怀化～株洲', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (52, '南昆线', '南宁～昆明', '电力', 285, 185);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (53, '湘桂线', '南宁、柳州～衡阳', '内燃', 438, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (54, '成昆线', '成都～昆明', '电力', 295, 185);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (55, '川黔、黔桂线', '重庆北～遵义～贵阳～柳州', '电力', 295, 185);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (56, '襄渝线', '重庆（北）～襄阳', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (57, '沪昆线', '昆明～贵阳', '电力', 295, 185);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (58, '陇海、宝成(西康)线', '西安(宝鸡)～成都(广元)', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (59, '包兰、宝中线', '惠农（兰州）～中卫～宝鸡～西安', '电力', 275, 175);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (60, '青藏线', '格尔木～拉萨', '内燃', 1018, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (61, '丰沙、京包、京张、张集、集包线', '北京西～张家口南～集宁南～包头', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (62, '京九、赣龙、漳龙、鹰厦线', '南阳~信阳~阜阳（麻城）(泰州）~南昌（向塘）~赣州~漳平~厦门（漳州东）', '内燃', 418, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (63, '沪昆、焦柳、宜万线', '株洲～达州', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (64, '京包、临额线', '呼和浩特～临河～额济纳', '内燃', 428, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (65, '蓝烟、胶济客专、京沪、石德、石太客专线', '青岛(烟台)～济南～德州～石家庄～太原', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (66, '胶济客专、京沪、新石、京九线', '青岛～济南～阜阳', '内燃', 418, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (67, '胶济客专、京沪、新石、京九线', '青岛～济南～阜阳', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (68, '京九、沪昆、峰福（鹰厦）线', '南昌(向塘)～鹰潭(横峰)～南平(南)～福州(厦门)', '电力', 275, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (69, '遂成、达成、襄渝、达万、宜万、万凉、宁蓉线宜凉段、鸦宜、焦柳、陇海线', '成都～遂宁(重庆)～达州～宜昌～襄阳～洛阳～郑州', '内燃', 438, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (70, '遂成、达成、襄渝、达万、宜万、万凉、宁蓉线宜凉段、鸦宜、焦柳、陇海线', '成都～遂宁(重庆)～达州～宜昌～襄阳～洛阳～郑州', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (71, '遂成、达成、襄渝、达万、宜万、万凉、宁蓉线宜凉段、鸦宜、焦柳、长荆、汉丹线', '成都～遂宁(重庆)～达州～宜昌～汉口(武昌)～福州(厦门)', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (72, '兰新、兰青、包兰、京包', '嘉峪关（西宁）～兰州～银川～呼和浩特', '电力', 265, 165);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (73, '湘桂、黎湛、湛海线', '柳州～海安南', '内燃', 438, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (74, '焦柳、汉丹、襄渝、武九、京九、沪昆、峰福线,新月', '洛阳-襄阳-武昌-南昌-福州（厦门）', '内燃', 438, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (75, '焦柳、汉丹、襄渝、武九、京九、沪昆、峰福线,新月', '洛阳-襄阳-武昌-南昌-福州（厦门）', '电力', 275, 175);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (76, '陇海、包西、神大', '宝鸡-西安-榆林（神木）-包头-呼和浩特', '电力', 275, 175);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (77, '广茂、河茂、黎湛、湛海', '广州～茂名～湛江～海口（三亚）', '内燃', 438, null);
insert into GTTRAINDRAGFEE (NUM, LINETYPE, CROSSROAD, MACTYPE, DRAGFEE, NETFEE)
values (78, '汉丹、合武、宁西、淮南、合宁、京沪', '襄阳～合肥～上海（无锡、南通）', '电力', 265, 175);

