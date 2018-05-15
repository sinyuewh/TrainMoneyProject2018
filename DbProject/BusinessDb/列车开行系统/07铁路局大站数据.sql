/*--大站列表（大站子表）---*/
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'bigstationlist')
	BEGIN
		DROP  Table bigstationlist
	END
GO

CREATE TABLE bigstationlist
(
   
	  dataid    integer not null primary key ,			--数据ID
	  num       integer not null,						--序号
	  parentnum integer not null,						--父数据ID
	  name1     varchar(50) not null					--大站名字

)
GO


--插入数据
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1354, 3, 2, '大连');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1355, 4, 2, '大连北');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1356, 5, 2, '长春');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1357, 6, 2, '长春西');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1358, 7, 2, '吉林');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1359, 8, 2, '图们');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1360, 9, 2, '四平');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1361, 10, 2, '通辽');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1362, 11, 2, '锦州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1363, 12, 2, '丹东');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1364, 13, 2, '赤峰');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1365, 14, 2, '白城');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1366, 15, 2, '本溪');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (602, 1, 3, '北京');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (603, 2, 3, '北京西');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (604, 3, 3, '北京南');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (605, 4, 3, '北京北');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (606, 5, 3, '天津西');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (607, 6, 3, '天津');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (608, 7, 3, '石家庄');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (609, 8, 3, '衡水');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (610, 9, 3, '德州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (611, 10, 3, '邯郸');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (612, 11, 3, '秦皇岛');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (613, 12, 3, '承德');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (614, 13, 3, '唐山');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (629, 1, 5, '呼和浩特');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (630, 2, 5, '包头');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (631, 3, 5, '鄂尔多斯');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (632, 4, 5, '集宁南');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (633, 5, 5, '二连');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (634, 6, 5, '额济纳');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1461, 1, 11, '南昌');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1462, 2, 11, '南昌西');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1463, 3, 11, '福州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1464, 4, 11, '福州南');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1465, 5, 11, '厦门');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1466, 6, 11, '厦门北');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1467, 7, 11, '鹰潭');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (642, 1, 7, '武汉');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (643, 2, 7, '武昌');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (644, 3, 7, '汉口');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (645, 4, 7, '漯河');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (646, 5, 7, '信阳');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (647, 6, 7, '襄阳');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (648, 7, 7, '宜昌');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (649, 8, 7, '麻城');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (650, 9, 7, '十堰');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (651, 1, 8, '西安');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (652, 2, 8, '安康');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (653, 3, 8, '阳平关');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (654, 4, 8, '宝鸡');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (655, 5, 8, '西安北');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (656, 6, 8, '延安');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (657, 7, 8, '绥德');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1468, 8, 11, '龙岩');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1469, 9, 11, '九江');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1470, 10, 11, '吉安');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1471, 11, 11, '赣州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1472, 12, 11, '武夷山');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1473, 13, 11, '泉州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1474, 1, 14, '贵阳');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1475, 2, 14, '成都');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1476, 3, 14, '成都东');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1477, 4, 14, '重庆');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1478, 5, 14, '重庆北');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1479, 6, 14, '遂宁');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1480, 7, 14, '遵义');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1481, 8, 14, '宜宾');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1482, 9, 14, '达州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1483, 10, 14, '万州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1484, 11, 14, '六盘水');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1485, 12, 14, '内江');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1486, 13, 14, '攀枝花');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (705, 1, 13, '南宁');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (706, 2, 13, '湛江');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (707, 3, 13, '柳州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (708, 4, 13, '桂林');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (709, 5, 13, '玉林');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (710, 6, 13, '北海');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (711, 7, 13, '防城港');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (712, 8, 13, '钦州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (723, 1, 15, '昆明');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (724, 2, 15, '昆明东');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (725, 3, 15, '大理');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (726, 4, 15, '丽江');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (727, 5, 15, '威舍');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (728, 6, 15, '玉溪');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (729, 7, 15, '河口');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (730, 1, 16, '兰州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (731, 2, 16, '银川');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (732, 3, 16, '中卫');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (733, 4, 16, '定边');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (734, 5, 16, '武威');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (735, 6, 16, '嘉峪关');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (736, 7, 16, '玉门');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (737, 8, 16, '敦煌');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (741, 1, 18, '乌鲁木齐');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (742, 2, 18, '库尔勒');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (743, 3, 18, '喀什');


insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (744, 4, 18, '和田');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (745, 5, 18, '吐鲁番');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (746, 6, 18, '奎屯');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (747, 7, 18, '克拉玛依');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (748, 8, 18, '阿拉山口');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (749, 9, 18, '霍尔果斯');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (750, 10, 18, '精河');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (751, 11, 18, '阿克苏');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1341, 10, 7, '荆门');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1531, 3, 1, '佳木斯');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1532, 4, 1, '牡丹江');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1533, 5, 1, '满洲里');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1529, 1, 1, '绥化');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1530, 2, 1, '绥芬河');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1534, 6, 1, '加格达奇');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1535, 7, 1, '齐齐哈尔');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1352, 1, 2, '沈阳');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1353, 2, 2, '沈阳北');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1536, 8, 1, '海拉尔');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1537, 9, 1, '哈尔滨');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1538, 10, 1, '哈尔滨西');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1395, 3, 10, '上海虹桥');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1396, 4, 10, '杭州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1397, 5, 10, '杭州东');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1398, 6, 10, '宁波');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1399, 7, 10, '宁波东');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1400, 8, 10, '南京');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1401, 9, 10, '南京南');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1402, 10, 10, '合肥');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1403, 11, 10, '苏州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1393, 1, 10, '上海');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1394, 2, 10, '上海南');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1404, 12, 10, '温州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1405, 13, 10, '连云港');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1406, 14, 10, '徐州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1438, 3, 12, '广州北');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1439, 4, 12, '广州东');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1440, 5, 12, '东莞');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1441, 6, 12, '深圳');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1442, 7, 12, '深圳西');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1443, 8, 12, '深圳北');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1444, 9, 12, '惠州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1445, 10, 12, '汕头');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1446, 11, 12, '衡阳');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1447, 12, 12, '衡阳东');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1448, 13, 12, '张家界');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1449, 14, 12, '怀化');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1450, 15, 12, '长沙');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1451, 16, 12, '长沙南');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1452, 17, 12, '株洲');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1453, 18, 12, '永州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1553, 3, 17, '西宁');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1554, 4, 17, '西宁北');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1436, 1, 12, '广州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1437, 2, 12, '广州南');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1385, 1, 9, '济南');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1386, 2, 9, '济南东');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1387, 3, 9, '青岛');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1388, 4, 9, '烟台');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1389, 5, 9, '威海');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1390, 6, 9, '兖州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1391, 7, 9, '临沂');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1392, 8, 9, '菏泽');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1551, 1, 17, '格尔木');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1552, 2, 17, '拉萨');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1557, 3, 6, '洛阳东');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1558, 4, 6, '开封');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1559, 5, 6, '三门峡');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1560, 6, 6, '南阳');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1555, 1, 6, '郑州');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1556, 2, 6, '郑州东');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1561, 7, 6, '长治');
insert into BIGSTATIONLIST (DATAID, NUM, PARENTNUM, NAME1)
values (1562, 8, 6, '新乡');

