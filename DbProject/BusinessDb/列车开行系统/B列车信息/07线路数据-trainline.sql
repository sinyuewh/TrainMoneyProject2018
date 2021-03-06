﻿/*
  列车线路表
  线路类型说明：
    <option value="1">特一类</option>
	<option value="2">特二类</option>
	<option selected="selected" value="3">一类上浮</option>
	<option value="4">一类</option>
	<option value="5">二类上浮</option>
	<option value="6">二类</option>
	<option value="7">三类</option>
	<option value="8">三类下浮</option>
	
	整体线路是否电气化
	<option selected="selected" value="">否</option>
	<option value="是">是</option>
*/


IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'trainline')
	BEGIN
		DROP  Table trainline
	END
GO

CREATE TABLE trainline
(
	lineid          integer not null primary key,		--线路代码
	num             integer,							--序号（排序用）
	linename        varchar(100) not null,				--线路名称
	linetype        varchar(100) not null,				--线路类型
	lineclass       varchar(50) not null,				--线路级别（暂没用）
	remark          varchar(200),						--备注
	astation        varchar(50),						--起点
	bstation        varchar(50),						--讫点
	miles           integer,							--长度(km)
	chanquan        varchar(200),						--
	chanquanguishou varchar(500),						--
	dqh             varchar(10),						--整条线路是否电气化
	springwinter    varchar(10)
)
GO

--插入数据的SQL语句
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (696, 202, '合九线', '4', '0', '33', '合肥西', '孔垄', 281, '国铁', '上海局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (651, 203, '鹰厦线 ', '7', '0', null, '鹰潭', '厦门', 694, '国铁', '南昌局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1628, 205, '吉井线', '6', '0', null, '吉安', '井冈山', 91, '国铁', '南昌局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1629, 206, '外南线', '7', '0', null, '外洋', '南平南', 30, '国铁', '南昌局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (654, 207, '福马线', '2', '0', null, '樟林', '福州南', 13, '国铁', '南昌局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (661, 209, '赣龙线', '6', '0', null, '赣州东', '龙岩', 290, '国铁', '南昌局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (662, 210, '向梁线 ', '6', '0', null, '向塘', '梁家渡', 7, '国铁', '南昌局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (663, 211, '向潭线 ', '6', '0', null, '江家', '潭岗', 5, '国铁', '南昌局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (667, 212, '向乐线 ', '8', '0', '35', '三江镇', '江边村', 107, '国铁', '南昌局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (641, 213, '上铅线', '6', '0', null, '上饶', '铅山西', 47, '国铁', '南昌局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (668, 214, '张塘线', '8', '0', '13', '张家山站', '上塘站', 48, '国铁', '南昌局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (669, 215, '张建线', '8', '0', '13', '董家站', '建山站', 35, '国铁', '南昌局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (671, 216, '上新线', '8', '0', '13', '新余站', '上高站', 54, '国铁', '南昌局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (672, 217, '分文线 ', '8', '0', '13', '分宜站', '文竹站', 153, '国铁', '南昌局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (626, 218, '九江西线', '6', '0', '13', '九里垄站', '九江西站', 7, '国铁', '南昌局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (642, 219, '乐德线', '7', '0', '13', '乐平市站', '香屯站', 44, '国铁', '南昌局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (703, 220, '醴茶线', '8', '0', null, '醴陵', '茶陵', 119, '国铁', '南昌局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (701, 221, '韶山线 ', '7', '0', null, '向韶', '韶山', 21, '国铁', '广铁（集团）公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (702, 222, '益永线', '4', '0', '36', '益阳东', '永州', 325, '国铁', '广铁（集团）公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (705, 223, '资许线', '8', '0', '13', '许家洞站', '三都站', 35, '国铁', '广铁（集团）公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (751, 224, '屯秋线', '8', '0', '13', '洛埠站', '拉洞站', 43, '国铁', '南宁局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (752, 225, '黎湛线 ', '4', '0', null, '黎塘', '湛江', 318, '国铁', '南宁局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (801, 226, '广普线', '8', '0', '37', '广元南', '普济', 83, '国铁', '成都局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (802, 227, '德天线', '8', '0', null, '德阳', '汉旺', 41, '国铁', '成都局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (803, 228, '广岳线', '8', '0', '38', '广汉', '岳家山', 65, '国铁', '成都局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (804, 229, '成汶线', '8', '0', '13', '青白江', '蒲阳', 60, '国铁', '成都局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (805, 230, '成渝线', '7', '0', null, '八里', '重庆', 500, '国铁', '成都局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (807, 231, '内六线', '6', '0', '39', '内江', '梅花山', 503, '国铁', '成都局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (808, 232, '宜珙线', '8', '0', null, '宜宾', '巡场', 51, '国铁', '成都局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (809, 233, '小梨线', '7', '0', '13', '小南海', '梨树湾', 27, '国铁', '成都局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (812, 234, '川黔线', '7', '0', null, '小南海', '贵阳', 430, '国铁', '成都局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (813, 235, '三万线 ', '8', '0', null, '三江', '万盛', 32, '国铁', '成都局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (814, 236, '开阳线', '8', '0', '13', '小寨坝', '楠木坪', 40, '国铁', '成都局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (822, 238, '湖林线', '8', '0', '13', '湖潮', '林歹', 35, '国铁', '成都局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (823, 239, '水大线 ', '8', '0', null, '六盘水', '大湾', 41, '国铁', '成都局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (834, 240, '渡口线', '7', '0', null, '攀枝花', '格里坪', 42, '国铁', '成都局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (840, 241, '遂渝线', '4', '0', null, '遂宁', '北碚', 129, '国铁', '成都局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (824, 242, '羊场线', '8', '0', null, '格以头', '喜鹊乐', 54, '国铁', '昆明局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (826, 243, '盘西线 ', '7', '0', null, '沾益', '红果', 94, '国铁', '昆明局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (828, 244, '东川线 ', '8', '0', '41', '小新街', '东川', 97, '国铁', '昆明局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (831, 245, '昆阳线 ', '7', '0', null, '读书铺', '中谊村', 30, '国铁', '昆明局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (835, 246, '威红线', '7', '0', null, '威舍', '红果', 68, '国铁', '昆明局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (881, 247, '昆河线(窄轨)', '7', '0', null, '昆明北站', '河口站', 468, '国铁', '昆明局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (884, 248, '蒙宝线(窄轨)', '7', '0', null, '蒙自站', '宝秀站', 143, '国铁', '昆明局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (885, 249, '草官线(窄轨)', '7', '0', null, '草坝站', '官家山站', 31, '国铁', '昆明局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (901, 250, '平汝线', '8', '0', null, '石嘴山', '汝箕沟', 82, '国铁', '兰州局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (903, 251, '干武线 ', '6', '0', null, '干塘', '武威南', 172, '国铁', '兰州局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (904, 252, '红会线', '8', '0', '42', '白银西', '红会', 114, '国铁', '兰州局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (911, 253, '嘉镜线 ', '8', '0', null, '嘉峪关', '镜铁山', 74, '国铁', '兰州局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (912, 254, '玉门南线', '8', '0', '13', '玉门', '玉门南', 33, '国铁', '兰州局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (953, 255, '乌将线', '6', '0', null, '乌北', '将军庙', 257, '国铁', '乌鲁木齐局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (954, 256, '南疆线 ', '6', '0', null, '吐鲁番', '喀什', 1445, '国铁', '乌鲁木齐局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (87, 257, '兰新线西段', '6', '0', null, '乌西', '阿拉山口', 457, '国铁', '乌鲁木齐局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (959, 258, '红岭线', '8', '0', '13', '鱼儿沟站', '红岭站', 42, '国铁', '乌鲁木齐局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (908, 259, '柴达尔线', '8', '0', '13', '哈尔盖', '柴达尔', 51, '国铁', '青藏铁路公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (909, 260, '宁大线', '8', '0', '13', '西宁', '大通县', 39, '国铁', '青藏铁路公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (914, 261, '茶卡线', '8', '0', '13', '察汉诺站', '茶卡站', 37, '国铁', '青藏铁路公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2304, 264, '口泉线 ', '6', '0', null, '大同', '乔村', 46, '股份', '大秦股份公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2305, 265, '宁岢线 ', '6', '0', null, '宁武', '岢岚', 95, '股份', '大秦股份公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2313, 266, '大秦线', '6', '0', null, '大同站', '秦皇岛站', 653, '股份', '大秦股份公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2391, 267, '云岗线', '6', '0', null, '大同', '燕子山', 39, '股份', '大秦股份公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2706, 269, '广九线', '3', '0', null, '广州', '深圳', 147, '股份', '广深股份公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2299, 270, '沙鲅线', '6', '0', '13', '沙岗站', '鲅鱼圈港站', 16, '股份', '铁龙股份公司沙鲅分公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2105, 271, '林碧线 ', '6', '0', null, '林海', '碧水', 115, '地铁', '黑龙江省铁路集团有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2180, 273, '向哈线', '6', '0', '13', '向阳川', '哈鱼岛', 79, '合资', '同江铁路有限公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2192, 274, '友宝线', '6', '0', '13', '新友谊', '宝清', 62, '地铁', '宝清地方铁路公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2291, 275, '铁法西线', '6', '0', '13', '大青站', '东官屯站', 60, '企业', '铁法矿务局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2292, 276, '城庄线', '6', '0', '13', '城子坦', '庄河', 49, '合资', '庄河地方铁路公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (412, 278, '桑锡线', '6', '0', null, '锡林浩特', '桑根达来', 153, '合资', '集通铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2418, 279, '集通线', '6', '0', '43', '贲红', '通辽北', 945, '合资', '集通铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2450, 280, '长荆线', '6', '0', null, '长江埠', '荆门', 176, '合资', '湖北长荆铁路有限责任公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2457, 281, '包西线', '4', '0', null, '包头', '新丰镇', 864, '合资', '西延铁路有限责任公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2554, 282, '邯济线', '6', '0', '44', '晏城北', '邯郸南', 232, '合资', '邯济铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2555, 283, '聊城东线', '6', '0', null, '聊城', '聊城东', 6, '合资', '邯济铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2591, 284, '桃威线', '6', '0', null, '桃村', '威海', 138, '地铁', '威海地方铁路局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2612, 285, '宁启线', '4', '0', null, '林场', '南通', 269, '合资', '新长铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2647, 286, '新长线', '4', '0', null, '新沂', '长兴', 562, '合资', '新长铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (24, 287, '杭甬线', '4', '0', null, '杭州', '宁波', 171, '合资', '萧甬铁路有限责任公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2638, 288, '北仑线', '8', '0', '13', '宁波', '北仑站', 36, '合资', '萧甬铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2682, 289, '浦东线', '4', '0', null, '阮巷', '四团', 41, '合资', '上海浦东铁路发展有限公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2665, 290, '芦潮港线', '4', '0', null, '四团', '芦潮港', 10, '合资', '上海铁路集装箱中心站发展有限公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2641, 291, '峰福线（合资段）', '6', '0', null, '南平南', '永平', 222, '合资', '武夷山铁路公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2656, 292, '漳龙线 ', '6', '0', null, '漳平', '龙川', 374, '合资', '龙岩铁路公司(漳平—琥市,147km)                                  广梅汕铁路公司(琥市—龙川,227km)', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (658, 293, '漳泉线 ', '6', '0', '45', '梅水坑', '泉州东', 164, '合资', '泉州铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2697, 295, '安庆线', '6', '0', null, '安庆西', '安庆', 40, '合资', '合九铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2699, 296, '金温线', '6', '0', null, '金华西', '温州', 262, '合资', '金温铁道开发有限公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2708, 297, '广茂线', '4', '0', null, '广州', '茂名', 371, '股份', '广深股份公司（广州站-广州西站，2km）$$三茂铁路股份公司（广州西站-茂名站，369km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2715, 298, '平南线', '6', '0', null, '平湖', '深圳西', 35, '合资', '平南铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2716, 299, '汕头线', '6', '0', null, '畲江', '汕头', 136, '合资', '广梅汕铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2717, 300, '石长线', '4', '0', null, '石门县北', '捞刀河', 264, '合资', '石长铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2718, 301, '湛海线', '6', '0', null, '塘口', '海安南', 139, '合资', '粤海铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2728, 302, '粤海轮渡线', '6', '0', null, '海安南', '海口', 180, '合资', '粤海铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2721, 303, '海南西环线', '4', '0', null, '海口', '三亚', 363, '合资', '粤海铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2791, 304, '南防线', '6', '0', '46', '南宁南', '防城港', 173, '合资', '广西沿海铁路公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2792, 305, '钦北线', '6', '0', null, '钦州', '北海', 100, '合资', '广西沿海铁路公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2816, 306, '达成线', '6', '0', '47', '三汇镇', '龙潭寺', 347, '合资', '达成铁路有限责任公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (817, 307, '达万线', '6', '0', null, '达州', '万州', 157, '合资', '达成铁路有限责任公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1840, 308, '水红线', '6', '0', '40', '六盘水', '红果', 166, '合资', '水红铁路有限责任公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1825, 309, '广大线', '6', '0', null, '广通', '大理', 206, '合资', '滇西铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2801, 310, '昆玉线', '6', '0', '13', '中谊村', '玉溪', 55, '地铁', '昆玉铁路公司', null, null);

GO

insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2902, 311, '敦煌线', '4', '0', null, '柳沟', '敦煌', 162, '合资', '敦煌铁路有限责任公司', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (990, 312, '神朔线', '6', '0', null, '朔州', '神木北', 234, '合资', '神华铁路有限责任公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2082, 314, '漯阜线', '6', '0', '2014年7月1日开通', '漯河', '阜阳', 211, '合资', '漯阜铁路有限责任公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3010, 315, '京津城际线', '1', '0', null, '北京南', '天津', 120, '合资', '京津城际铁路有限责任公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2432, 316, '康延线', '6', '0', null, '康庄', '延庆', 12, '合资', '北京城市铁路投资发展有限公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3012, 317, '石太客专线', '2', '0', null, '石家庄', '太原南', 232, '合资', '石太铁路客运专线有限责任公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (480, 39, '神大线', '6', '0', null, '神木北', '大保档', 78, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3005, 319, '沪宁高速线', '1', '0', null, '南京', '上海', 301, '合资', '合宁铁路有限责任公司', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2453, 600, '滠武线1', '4', '0', null, '滠口', '何刘', 30, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2452, 600, '滠武线2', '4', '0', null, '丹水池', '武汉', 21, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (28, 600, '京包线', '6', '0', null, '北京北', '包头', 808, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (57, 604, '宝成线', '7', '0', null, '宝鸡', '成都', 669, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980056, 31, '沪昆高铁杭贵段', '1', '0', null, '杭州东', '贵阳北', 1630, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (477, 401, '宁蓉线合宁段', '2', '0', null, '永宁镇', '三十里铺', 123, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (439, 404, '宁蓉线合武段', '2', '0', null, '长安集', '汉口', 333, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (442, 406, '杭深客专线', '2', '0', null, '宁波', '深圳北', 1309, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (212, 85, '烟白线', '8', '0', '13', '烟筒山', '白山镇', 152, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (213, 86, '团杉线 ', '8', '0', '17', '团林', '杉松岗', 42, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (214, 87, '梅集线 ', '6', '0', '18', '梅河口', '鸭园', 151, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1214, 88, '鸭集线 ', '7', '0', '18', '鸭园站', '集安站', 94, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (216, 89, '鸭大线 ', '7', '0', '19', '鸭园', '白山市', 39, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (217, 91, '浑白线', '8', '0', '北河到白山市为浑白线，白山市到大栗子为鸭大线东段', '白山市', '大栗子', 291, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (231, 92, '沈大线', '4', '0', null, '沈阳北', '大连', 400, '国铁', '沈阳局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (232, 93, '开源线', '6', '0', null, '开原', '辽源', 114, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (233, 94, '铁法线', '6', '0', null, '铁岭', '大青', 22, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (235, 95, '抚顺线', '4', '0', null, '浑河', '抚顺北', 57, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (236, 96, '辽溪线 ', '6', '0', null, '辽阳', '本溪', 73, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (237, 97, '溪田线', '8', '0', null, '本溪', '田师府', 75, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (238, 98, '沈丹线', '4', '0', '20', '苏家屯', '丹东', 261, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (241, 99, '凤上线', '8', '0', null, '凤凰城', '上河口', 154, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (242, 100, '营口线 ', '6', '0', null, '大石桥', '营口', 22, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (243, 101, '田五线', '7', '0', '13', '田家', '长兴岛', 78, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3016, 37, '广珠城际线', '2', '0', null, '广州南', '珠海', 116, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (245, 103, '金城线 ', '6', '0', null, '金州', '城子坦', 102, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (247, 104, '旅顺线', '6', '0', null, '大连', '旅顺', 61, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (261, 105, '大郑线', '4', '0', null, '大虎山', '郑家屯', 370, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (262, 106, '高新线 ', '4', '0', '其中高台山到兴隆店17公里为沈山线，一类上浮。为保持线路连接，故按78公里计算', '高台山', '新立屯', 78, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (263, 107, '新义线 ', '6', '0', null, '义县', '新立屯', 132, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (264, 108, '北票线', '8', '0', '13', '北票南', '北票', 17, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (265, 109, '叶赤线 ', '6', '0', null, '叶柏寿', '赤峰东', 139, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (266, 110, '南票线 ', '8', '0', '23', '女儿河', '南票', 31, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (267, 111, '葫芦岛线', '8', '0', '13', '锦西站', '葫芦岛站', 14, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (268, 112, '魏塔线 ', '8', '0', '24', '魏杖子', '塔山', 248, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (269, 113, '朝马线', '8', '0', '13', '朝阳', '马山', 18, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (270, 114, '通霍线', '6', '0', null, '通辽', '霍林河', 417, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (296, 115, '白和线', '4', '0', null, '和龙', '白河', 103, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1202, 116, '小新线', '7', '0', null, '小姑家', '新站', 9, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1206, 117, '皇姑屯线', '4', '0', null, '沈阳', '沈阳西', 12, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1260, 118, '盘五线', '7', '0', null, '盘锦北', '五七', 5, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (314, 119, '西良线', '4', '0', null, '北京西', '良乡', 31, '国铁', '北京局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (320, 120, '津霸线 ', '6', '0', null, '霸州', '北仓', 73, '国铁', '北京局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (322, 121, '塘沽线 ', '7', '0', '25', '塘沽', '塘沽南', 5, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (324, 122, '津蓟线 ', '6', '0', '26', '汉沟镇', '蓟县', 92, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (327, 123, '京承线', '6', '0', null, '双桥', '承德', 244, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (332, 124, '丰沙线 ', '6', '0', null, '西道口', '沙城', 100, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (333, 125, '大台线', '8', '0', '13', '三家店', '木城涧', 37, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (334, 126, '宣庞线', '8', '0', '13', '宣化站', '庞家堡站', 45, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (345, 127, '保满线', '8', '0', '13', '保定站', '神星站', 37, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (348, 128, '良陈线', '8', '0', '13', '良乡站', '白草洼站', 35, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (352, 129, '唐遵线', '8', '0', '13', '唐山南', '石人沟', 111, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (373, 130, '石德线 ', '4', '0', null, '石家庄', '德州', 184, '国铁', '北京局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (384, 131, '马磁线 ', '7', '0', null, '马头', '磁山', 47, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (385, 132, '峰峰线', '7', '0', null, '新坡', '峰峰', 8, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1336, 133, '张家口线', '7', '0', null, '张家口南', '张家口', 10, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (431, 134, '武清线', '1', '0', '2013年8号文件确定为2类线，地图册上标记为客运专线', '武清', '天津西', 64, '国铁', '北京局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (432, 135, '沙河线', '6', '0', null, '北京东', '沙河', 40, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (301, 136, '北同蒲线', '6', '0', '28', '大同', '太原', 355, '国铁', '太原局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (306, 137, '忻河线 ', '8', '0', null, '忻州', '河边', 40, '国铁', '太原局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (307, 138, '上兰村线 ', '6', '0', null, '太原', '上兰村', 25, '国铁', '太原局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (308, 139, '太岚线', '7', '0', '29', '太原北', '镇城底', 55, '国铁', '太原局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (309, 140, '玉门沟线', '6', '0', null, '太原', '桃杏', 33, '国铁', '太原局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (310, 141, '介西线', '6', '0', null, '介休', '阳泉曲', 46, '国铁', '太原局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (312, 142, '礼垣线', '8', '0', '13', '礼元站', '垣曲站', 44, '国铁', '太原局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (401, 143, '集二线 ', '6', '0', null, '集宁南', '二连', 333, '国铁', '呼和浩特局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (402, 144, '郭查线', '8', '0', null, '郭尔奔敖包', '查干诺尔', 46, '国铁', '呼和浩特局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (403, 145, '包环线', '6', '0', null, '包头东', '昆独仑召', 30, '国铁', '呼和浩特局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (404, 146, '包石线', '8', '0', '30', '二道沙河', '石拐', 30, '国铁', '呼和浩特局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (405, 147, '包白线 ', '6', '0', null, '包头西', '白云鄂博', 150, '国铁', '呼和浩特局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (406, 148, '海公线', '8', '0', '13', '乌海站', '公乌素站', 53, '国铁', '呼和浩特局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (407, 149, '吉兰泰线', '8', '0', null, '乌海西', '吉兰泰', 130, '国铁', '呼和浩特局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (421, 150, '安李线 ', '8', '0', '13', '安阳', '岗子窑', 40, '国铁', '郑州局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (422, 151, '石林线 ', '8', '0', '13', '石涧站', '林县站', 20, '国铁', '郑州局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (423, 152, '汤鹤线', '8', '0', '13', '汤阴', '鹤壁北', 19, '国铁', '郑州局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (425, 153, '新密线', '8', '0', '13', '新郑站', '新密站', 41, '国铁', '郑州局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (427, 154, '洛宜线', '8', '0', '13', '洛阳东', '宜阳', 42, '国铁', '郑州局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1981, 155, '南阳西线', '7', '0', null, '南阳', '南阳西', 8, '国铁', '郑州局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1983, 156, '南阳东线', '7', '0', null, '南阳', '南阳东', 16, '国铁', '郑州局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (430, 157, '汉丹线', '4', '0', null, '汉口', '老河口东', 372, '国铁', '武汉局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1430, 158, '老丹线', '7', '0', '13', '老河口东', '丹江站', 46, '国铁', '武汉局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (433, 159, '小历线', '7', '0', null, '小林', '厉山', 70, '国铁', '武汉局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (434, 160, '新黄线', '8', '0', '13', '新下陆站', '黄石东站', 16, '国铁', '武汉局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (435, 161, '灵山线 ', '8', '0', '13', '铁山站', '灵乡站', 29, '国铁', '武汉局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (436, 162, '铜录山线', '8', '0', '13', '铜录山站', '大冶站', 3, '国铁', '武汉局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (451, 163, '鸦宜线 ', '6', '0', null, '鸦雀岭', '宜昌', 37, '国铁', '武汉局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (690, 164, '黄石东线', '8', '0', null, '铁山', '黄石东', 21, '国铁', '武汉局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (428, 165, '西康线', '6', '0', '31', '灞桥', '吕河', 216, '国铁', '西安局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (454, 166, '西户线', '8', '0', '13', '西安', '余下', 45, '国铁', '西安局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (455, 167, '咸铜线 ', '6', '0', null, '咸阳', '阎良', 72, '国铁', '西安局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1455, 168, '阎铜线 ', '7', '0', null, '阎良', '铜川', 63, '国铁', '西安局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (456, 169, '阳安线 ', '6', '0', null, '阳平关', '安康', 357, '国铁', '西安局', '是', null);

GO

insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (458, 171, '下桑线', '8', '0', '13', '下峪口站', '桑树坪站', 13, '国铁', '西安局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (459, 172, '梅七线 ', '8', '0', '13', '梅家坪', '前河镇', 71, '国铁', '西安局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (501, 173, '胶济线 ', '4', '0', null, '济南', '青岛', 393, '国铁', '济南局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (502, 174, '蓝烟线 ', '6', '0', null, '蓝村', '烟台', 183, '国铁', '济南局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (503, 175, '辛泰线 ', '7', '0', null, '临淄', '泰山', 162, '国铁', '济南局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (505, 176, '坊子线', '8', '0', '13', '潍坊站', '坊子站', 15, '国铁', '济南局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (506, 177, '张东线 ', '8', '0', null, '淄博', '东营', 91, '国铁', '济南局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (508, 178, '博山线', '8', '0', null, '淄博', '博山', 39, '国铁', '济南局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (525, 180, '磁莱线', '7', '0', null, '磁窑', '莱芜东', 120, '国铁', '济南局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (529, 181, '枣庄线', '6', '0', null, '枣庄站', '枣庄东站', 32, '国铁', '济南局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (530, 182, '前贾线', '8', '0', '13', '前亭站', '贾旺站', 16, '国铁', '济南局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (539, 183, '胶新线', '6', '0', null, '胶州', '新沂西', 303, '国铁', '济南局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1582, 184, '临沂北线', '7', '0', null, '沭埠岭', '临沂北', 7, '国铁', '济南局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1583, 185, '临沂南线', '6', '0', null, '沭埠岭', '临沂南', 9, '国铁', '济南局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (598, 186, '济南线', '3', '0', null, '桥南', '党家庄', 33, '国铁', '济南局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (593, 187, '陇海线(东段)', '4', '0', '2', '连云港东', '徐州', 210, '国铁', '上海局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (601, 188, '濉阜线', '6', '0', null, '青龙山', '阜阳', 147, '国铁', '上海局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1603, 190, '淮张线', '6', '0', '13', '淮南西站', '张楼站', 22, '国铁', '上海局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (604, 191, '淮南线 ', '6', '0', null, '蚌埠', '芜湖', 272, '国铁', '上海局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (605, 192, '阜水线', '4', '0', null, '阜阳', '水家湖', 151, '国铁', '上海局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (468, 405, '沪昆高速线沪杭段', '1', '0', null, '上海虹桥', '杭州东', 159, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (450, 401, '京广高铁武广段', '1', '0', null, '武汉', '广州南', 1069, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (478, 407, '京沪高速线', '1', '0', null, '北京南', '上海虹桥', 1318, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (656, 603, '宁蓉线联络线', '1', '0', null, '南京南', '亭子山', 40, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (356, 456, '仙宁线', '1', '0', null, '南京南', '仙林', 23, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (355, 355, '丰广线', '6', '0', null, '北京西', '丰台', 11, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (96, 405, '太中线', '4', '0', null, '北六堡', '黄羊湾', 697, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (4052, 405, '定银线', '4', '0', null, '定边', '银川南', 183, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (500, 500, '沪蓉线宜凉段', '4', '0', null, '宜昌东', '凉雾', 288, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (843, 502, '万凉线', '4', '0', null, '凉雾', '万州', 89, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (5031, 503, '宁蓉线汉宜段', '2', '0', null, '汉口', '宜昌东', 292, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (5051, 505, '下隔线', '6', '0', null, '下辛店', '隔蒲', 23, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (961, 13, '鸣北线', '4', '0', null, '鸣李', '北六堡', 12, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (98006, 505, '合肥东线', '4', '0', null, '合肥', '长安集', 31, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3021, 55, '广深港高速线', '1', '0', null, '广州南', '深圳北', 102, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1772, 1, '马玉线', '4', '0', null, '马路圩', '玉林', 93, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (9816, 103, '益湛线', '6', '0', null, '永州', '电白', 626, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (9819, 56, '黎钦线', '6', '0', null, '沙江', '马黄', 110, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (181, 37, '伊阿线', '7', '0', null, '伊敏', '阿尔山', 200, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (720, 37, '广珠城际江门线', '2', '0', null, '小榄', '新会', 27, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3013, 37, '徐兰高速线', '1', '0', null, '郑州东', '西安北', 523, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1070, 30, '伊满线', '8', '0', null, '伊图里河', '满归', 205, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3017, 37, '昌九城际线', '2', '0', '应增设永修站，南昌到永修46公里，永修到庐山70公里', '九江', '南昌', 135, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3014, 37, '成灌线', '2', '0', null, '成都', '青城山', 65, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (956, 37, '精霍线', '6', '0', null, '精河', '霍尔果斯', 285, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980013, 37, '东平线', '6', '0', null, '东都', '平邑', 60, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (415, 30, '集包线', '4', '0', null, '包头西', '古营盘', 317, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980017, 37, '西安北环线', '3', '0', null, '新丰镇', '茂陵', 67, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980018, 37, '天津西线', '3', '0', null, '天津北', '天津西', 6, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2380, 37, '威宁线', '4', '0', null, '本溪', '石桥子', 25, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (825, 37, '大丽线', '6', '0', null, '大理', '丽江', 159, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (126, 30, '鹤北线', '7', '0', null, '鹤岗', '鹤北', 44, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (9541, 37, '喀和线', '6', '0', null, '喀什', '和田', 485, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (957, 37, '奎北线', '6', '0', null, '奎屯', '北屯镇', 462, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2284, 30, '哈长联络线', '4', '0', null, '杨家粉坊', '崔家营子', 4, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2425, 37, '郑州东北联络线', '6', '0', null, '郑州东', '圃田西', 9, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2424, 37, '郑州东西南联络线', '4', '0', null, '圃田西', '二郎庙', 10, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3001, 37, '京广高铁京武段', '1', '0', null, '杜家坎所', '武汉', 1212, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (30011, 37, '京西联络线', '4', '0', null, '北京西', '杜家坎所', 17, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3024, 37, '合蚌高速线', '1', '0', null, '蚌埠南', '合肥北城', 110, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3019, 37, '哈大客运专线', '1', '0', '夏季300公里特一类，秋季200公里特二类', '哈尔滨西', '大连北', 921, null, null, '是', '1');
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2283, 37, '长西联络线', '4', '0', null, '长春', '长春西', 12, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980037, 37, '大连支线', '4', '0', null, '普湾', '大连', 58, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1528, 37, '京济联络线', '4', '0', null, '济南西', '济南', 20, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1527, 37, '济沪联络线', '4', '0', null, '济南', '崔马庄所', 17, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3023, 38, '天津西联络线', '4', '0', null, '津沪所', '天津西', 11, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (6609, 38, '徐州联络线', '6', '0', null, '大湖', '徐州东', 5, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (353, 38, '武昌南环线', '4', '0', null, '武昌南', '何刘', 24, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (692, 38, '南昌西环线', '4', '0', null, '乐化', '向塘', 62, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (962, 39, '榆北线', '4', '0', null, '榆次', '北六堡', 14, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2652, 39, '福连线', '2', '0', null, '福州', '连江', 40, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980045, 39, '樟福线', '2', '0', null, '樟林', '福州南', 13, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3028, 39, '宁杭高铁', '1', '0', '南京南、江宁、句容西、溧水、瓦屋山、溧阳、宜兴、长兴、湖州、德清、杭州东11个车站', '南京南', '杭州东', 256, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3120, 39, '杭甬高铁', '1', '0', '杭州东、杭州南、绍兴北、上虞北、余姚北、庄桥和宁波7个车站', '杭州东', '宁波', 155, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3011, 39, '胶济客专', '2', '0', null, '济南', '青岛', 393, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (215, 30, '鸭集线', '7', '0', null, '鸭园', '集安', 94, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2492, 30, '何临联络线', '4', '0', null, '何寨', '临潼东', 10, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2493, 30, '临窑线', '4', '0', '西安站与徐兰高速的联络线', '临潼东', '窑村', 16, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (652, 30, '峰福线（国铁1）', '7', '0', null, '横峰', '永平', 29, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (653, 30, '峰福线（国铁2）', '7', '0', null, '南平南', '福州', 155, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (659, 30, '漳州线', '7', '0', null, '漳州', '漳州东', 11, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (408, 30, '包神线', '6', '0', null, '包头', '神东', 172, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (29, 30, '张集线', '4', '0', null, '古营盘', '孔家庄', 158, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (612, 30, '宁启联络线', '4', '0', null, '永宁镇', '六合', 39, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (800, 30, '广巴线', '7', '0', null, '广元', '巴中', 157, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2830, 30, '玉蒙线', '6', '0', null, '玉溪', '蒙自北', 150, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2648, 30, '黄渡联络线', '4', '0', null, '黄渡所', '南翔北所', 4, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (30171, 31, '昌九城际1', '2', '0', '乐化城际场至南昌西纳入昌九城际，与原庐山-南昌的既有昌九城际形成两个区段，为标识故用3018代替，也与南昌西环线分开', '永修', '南昌西', 53, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3035, 31, '昌福线', '2', '0', '数据根据2013-9-26正式开通时间公布的里程修改', '南昌西', '福州', 547, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3036, 31, '永莆线', '2', '0', '数据根据2013-9-26开通公布的里程修正', '永泰', '莆田', 59, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3034, 31, '衡柳线', '4', '0', '具体里程根据2013年9月30日正式运营开通数据修正', '衡阳东', '柳州', 498, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980046, 31, '柳南线', '2', '0', null, '柳州', '南宁', 223, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980047, 31, '衡阳联络线', '4', '0', '京广线与衡柳线联络线', '衡阳', '泰山所', 12, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980048, 31, '沪蓉线凉渝段', '2', '0', null, '凉雾', '重庆北', 265, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980049, 31, '徐兰高速西宝段', '2', '0', null, '西安北', '宝鸡南', 167, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980050, 31, '余花联络线', '2', '0', null, '余家湾', '南湖东', 12, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980051, 31, '武咸城际', '2', '0', null, '南湖东', '咸宁南', 76, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (7, 31, '京哈线', '3', '0', null, '北京', '哈尔滨', 1249, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980055, 31, '阜六线', '6', '0', '阜六铁路公司', '袁寨', '分路口', 139, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980057, 31, '北京直线', '3', '0', null, '北京', '北京西', 9, null, null, '是', null);

GO

insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980058, 31, '西平线', '6', '0', null, '茂陵', '平凉南', 265, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980060, 31, '大西客专', '2', '0', '现行开通太原南--西安北', '太原南', '西安北', 579, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980061, 31, '贵广客专', '2', '0', null, '贵阳北', '广州南', 864, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980063, 31, '宁蓉线合肥线', '2', '0', null, '长安集', '肥东', 48, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980064, 33, '烟台联络线', '4', '0', '兰烟线终点与青荣城际联络线', '烟台', '烟台南', 20, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980066, 31, '即墨联络线(济南)', '4', '0', null, '即墨北', '即墨', 16, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980067, 31, '合福高铁', '1', '0', null, '合肥北城', '福州', 850, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980068, 33, '合肥联络线', '1', '0', '连接合肥与合福高铁,合蚌高铁', '合肥', '合肥北城', 22, null, null, '是', '1');
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (26562, 58, '杏厦线', '4', '0', null, '厦门北', '杏林', 11, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (9820, 56, '邕南线', '6', '0', null, '邕宁', '那罗', 31, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2462, 58, '襄阳东线', '6', '0', null, '襄阳', '襄阳东', 6, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2464, 37, '汉西联络线', '6', '0', null, '汉西', '新墩', 5, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3020, 37, '长吉城际线', '2', '0', null, '长春', '吉林', 111, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3018, 37, '海南东环线', '2', '0', null, '海口', '三亚', 308, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2421, 37, '郑荥线', '2', '0', null, '郑州西', '荥阳南', 19, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2475, 37, '甘钟线', '6', '0', null, '甘泉北', '钟家村', 227, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980015, 37, '临策线', '6', '0', null, '临河', '额济纳', 684, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980019, 37, '承隆线', '6', '0', null, '承德', '隆化', 56, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980020, 37, '张双线', '6', '0', null, '张百湾', '双峰寺', 51, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (18250, 37, '大理段', '6', '0', null, '大理东', '大理北', 8, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980027, 37, '无锡联络线', '6', '0', null, '无锡西', '无锡北', 7, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2618, 37, '虹安线', '2', '0', null, '安亭北', '上海虹桥', 29, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (693, 39, '龙漳线', '2', '0', null, '龙岩', '漳州', 114, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1826, 30, '广丽联络线', '6', '0', null, '大理东', '大理北', 8, null, null, null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (617, 39, '笕桥线', '4', '0', null, '笕桥', '余杭', 13, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (437, 30, '合武联络线', '3', '0', null, '红安西', '滠口', 53, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (10, 31, '良石线', '3', '0', '石家庄到保定有两个距离，131/135。', '良乡', '石家庄', 246, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (30121, 31, '石获线', '6', '0', '铁总运电[2013]85号公布，线路归属于石太客专公司', '石家庄北', '获鹿所', 30, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980065, 31, '青荣城际', '2', '0', null, '荣城', '即墨北', 270, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980053, 31, '武石城际', '2', '0', null, '肖马杨所', '大冶北', 90, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980054, 31, '武冈城际', '2', '0', null, '葛店南', '黄冈东', 36, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980059, 31, '兰新客专', '2', '0', null, '兰州西', '乌鲁木齐南', 1777, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (980062, 31, '南广客专', '2', '0', null, '南宁东', '广州南', 563, null, null, '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (130, 61, '勃七线 ', '6', '0', null, '勃利', '七台河', 36, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (131, 62, '林密线', '6', '0', '15', '林口', '密山', 171, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (132, 63, '密东线', '8', '0', '15', '密山', '东方红', 160, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (134, 64, '城鸡线', '7', '0', '13', '下城子', '鸡西', 107, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (135, 65, '福前线', '6', '0', null, '福利屯', '前进镇', 226, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (150, 66, '苇亚线', '6', '0', null, '苇河', '亚布力南', 24, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (151, 67, '滨绥线 ', '4', '0', null, '哈尔滨', '绥芬河', 548, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (153, 68, '火龙沟线', '8', '0', '16', '敖头', '长汀镇', 42, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1101, 69, '齐昂线', '6', '0', null, '榆树屯', '昂昂溪', 6, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1102, 70, '齐红线', '6', '0', null, '榆树屯', '红旗营', 5, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1114, 71, '哈环线', '7', '0', null, '滨江', '哈尔滨', 25, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1133, 72, '王万线', '7', '0', '13', '王岗', '万乐', 36, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (154, 73, '陶舒线', '6', '0', null, '陶赖昭', '舒兰', 117, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (201, 74, '沈吉线', '6', '0', null, '沈阳北', '吉林', 443, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (202, 75, '长图线 ', '6', '0', null, '长春', '图们', 529, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (203, 76, '长白线 ', '6', '0', null, '长春', '白城', 333, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (204, 77, '白阿线 ', '8', '0', null, '白城', '伊尔施', 354, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (205, 78, '四梅线', '6', '0', null, '四平', '梅河口', 155, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (206, 79, '沈山线', '3', '0', null, '沈阳', '山海关', 426, '国铁', '沈阳局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (207, 80, '沟海线 ', '4', '0', null, '沟帮子', '唐王山', 101, '国铁', '沈阳局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (208, 81, '朝开线 ', '8', '0', '13', '朝阳川', '开山屯', 58, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (209, 82, '和龙线 ', '8', '0', '13', '龙井', '和龙', 51, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (210, 83, '吉舒线', '6', '0', null, '江北', '舒兰', 83, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (211, 84, '龙丰线', '8', '0', '13', '龙潭山站', '大丰满站', 23, '国铁', '沈阳局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (3, 3, '陇海线', '3', '0', '2', '徐州', '兰州', 1536, '国铁', '上海局（徐州站—虞城县站,126km）$$郑州局（虞城县站—太要站,590km）                      西安局（太要站—天水站,472km）                             兰州局（天水站—兰州站,348km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (4, 4, '焦柳线', '6', '0', null, '月山', '柳州', 1651, '国铁', '郑州局（月山站—郜营站,486km）                          武汉局（郜营站—西斋站,312km）                      广铁（集团）公司（西斋站—牙屯堡站,583km）$$ 南宁局（牙屯堡站—柳州站,270km） ', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (5, 5, '京九线', '4', '0', '3', '北京西', '东莞', 2315, '国铁', '北京局（北京西站—临清站,380km）             济南局（临清站—梁堤头站,272km）                           郑州局（梁堤头站—王楼站,81km）                        上海局（王楼站—淮滨站,183km）            武汉局（淮滨站—蔡山站,357km）                     南昌局（蔡山站—定南站,736km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (6, 6, '西合线', '4', '0', '4', '长安集', '零口', 914, '国铁', '西安局（零口站—商南站,234km）                          郑州局（商南站—小林站,323km）                    武汉局（小林站—叶集站,239km）                  上海局（叶集站—合肥西站,130km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (8, 8, '沪昆线 ', '4', '0', null, '上海', '昆明', 2690, '国铁', '上海局（上海站—新塘边站,530km）                                                       南昌局（新塘边站—株洲站,625km）                                  广铁集团（株洲站—玉屏站,560km）$$成都局（玉屏站—凤凰山站,710km）$$', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (11, 9, '图佳线', '6', '0', '5', '图们', '佳木斯', 580, '国铁', '沈阳局（图们站—鹿道站,146km）                             哈尔滨局（鹿道站—佳木斯站,434km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (12, 10, '拉滨线 ', '6', '0', null, '香坊', '拉法', 259, '国铁', '哈尔滨局（哈尔滨站—五常站,115km）                               沈阳局（五常站—拉法站,151km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (14, 11, '通让线', '4', '0', null, '通辽东', '让湖路', 413, '国铁', '沈阳局（通辽站—太阳升站,332km）                          哈尔滨局（太阳升站—让湖路站,89km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (15, 12, '平齐线 ', '4', '0', null, '四平', '齐齐哈尔', 571, '国铁', '沈阳局（四平站—泰来站,455km）                               哈尔滨局（泰来站—齐齐哈尔站,116km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (21, 13, '京通线 ', '6', '0', null, '昌平', '通辽西', 798, '国铁', '北京局（昌平站—隆化站,242km）                           沈阳局（隆化站—通辽站,562km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (22, 14, '锦承线 ', '6', '0', null, '锦州', '上板城', 418, '国铁', '沈阳局（锦州站—平泉站，340km）                            北京局（平泉站—承德站，97km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (23, 15, '津山线', '3', '0', null, '南仓', '秦皇岛', 287, '国铁', '北京局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (31, 17, '邯长线 ', '6', '0', null, '邯郸', '长治北', 220, '国铁', '北京局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (32, 18, '太新线', '7', '0', null, '修文', '新乡', 460, '国铁', '太原局（太原站—夏店站，230km）                                  郑州局（夏店站—新乡站,267km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (33, 19, '南同蒲线 ', '6', '0', null, '太原', '华山', 528, '国铁', '太原局（太原站—风陵渡站,505km）                       西安局（风陵渡站—华山站,23km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (34, 20, '侯西线 ', '6', '0', null, '阎良', '侯马', 289, '国铁', '西安局（阎良站—禹门口站,213km）                      太原局（禹门口站—侯马站,76km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (35, 21, '侯月线', '6', '0', '7', '侯马', '济源', 226, '国铁', '太原局（侯马北站—嘉峰站，153km）                       郑州局（嘉峰站—莲东站，69km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (39, 22, '包兰线', '4', '0', null, '包头', '兰州东', 974, '国铁', '呼和浩特局（包头站—惠农站，409km）                                                 兰州局（惠农站—兰州站，570km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (41, 23, '新石线 ', '6', '0', null, '新乡', '日照', 630, '国铁', '郑州局（新乡站—菏泽南站,167km）                               济南局（菏泽南站—日照站,463km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (46, 24, '武九线', '4', '0', null, '武昌', '庐山', 243, '国铁', '武汉局（武昌站—西河村站,180km）                                              南昌局（西河村站—庐山站,63km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (47, 25, '武麻线', '4', '0', null, '武汉北', '麻城', 80, '国铁', '武汉局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (56, 26, '襄渝线 ', '4', '0', null, '老河口东', '重庆', 841, '国铁', '武汉局（老河口东站—胡家营站,174km）                              西安局（胡家营站—达州站,413km）                              成都局（达州站—重庆站,255km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1, 1, '京广线', '3', '0', null, '丰台', '广州', 2283, '国铁', '北京局（丰台站—安阳站,491km）                  郑州局（安阳站—孟庙站,320km）                    武汉局（孟庙站—蒲圻站,527km）             广铁（集团）公司（蒲圻站—坪石站,637km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (2, 2, '京沪线', '3', '0', null, '北京', '上海', 1463, '国铁', '北京局（北京站—德州站,377km）                             济南局（德州站—利国站,401km）                                      上海局（利国站—上海站,685km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (58, 28, '渝怀线', '4', '0', null, '团结村', '怀化', 621, '国铁', '成都局（团结村站—秀山站，425km）                             昆明局（秀山站—怀化站，196km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (61, 29, '宝中线', '5', '0', null, '虢镇', '柳家庄', 471, '国铁', '西安局（宝鸡站—安口窑站,154km）                             兰州局（安口窑站—中卫站,357km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (63, 30, '符夹线 ', '6', '0', null, '符离集', '夹河寨', 85, '国铁', '上海局（符离集站—夹河寨站,85km）                             ', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (71, 31, '湘桂线 ', '4', '0', null, '衡阳', '凭祥', 1013, '国铁', '广铁（集团）公司（衡阳站—滩头湾站,148km）$$南宁局（滩头湾站—凭祥站,865km）                 ', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (753, 32, '河茂线', '4', '0', null, '河唇', '茂名', 61, '国铁', '南宁局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (81, 33, '黔桂线 ', '4', '0', null, '柳州', '龙里', 569, '国铁', '南宁局（柳州站—麻尾站,314km）                           成都局（麻尾站—龙里站,255km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (82, 34, '南昆线', '4', '0', null, '江西村', '昆明东', 795, '国铁', '南宁局（江西村站—威舍站,494km）                                昆明局（威舍站—昆明东站,301km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (86, 35, '兰新线', '4', '0', null, '兰州', '乌西', 1912, '国铁', '兰州局（兰州站—安北站,995km）                                                   乌鲁木齐局（安北站—乌西站,917km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (302, 36, '京原线 ', '6', '0', null, '石景山南', '原平', 419, '国铁', '北京局（北京站—灵丘站,263km）                                 太原局（灵丘站—原平站,181km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (303, 37, '石太线 ', '7', '0', null, '石家庄', '榆次', 204, '国铁', '北京局（石家庄站—赛鱼站,119km）                                 太原局（赛鱼站—太原站,112km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (426, 38, '孟平线', '4', '0', '10', '孟庙', '平顶山西', 100, '国铁', '武汉局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (621, 39, '皖赣线', '6', '0', null, '芜湖', '贵溪', 550, '国铁', '上海局（芜湖站—倒湖站,349km）                                 南昌局（倒湖站—贵溪站,201km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (830, 40, '成昆线 ', '6', '0', null, '成都', '昆明', 1100, '国铁', '成都局（成都站—攀枝花站，749km）                             昆明局（攀枝花站—昆明站，351km）', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (905, 41, '兰青、青藏线', '4', '0', null, '河口南', '拉萨', 2146, '国铁', '兰州局(兰州站—海石湾站,106km)                                            青藏铁路公司(海石湾站—拉萨站,2082km)', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (680, 42, '铜九线', '4', '0', null, '狮子山', '九江', 251, '国铁', '上海局（狮子山站—香隅站,157km）$$南昌局（香隅站－九江站，94km）', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (101, 43, '齐北线 ', '6', '0', null, '齐齐哈尔', '北安', 231, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (102, 44, '滨洲线', '4', '0', null, '哈尔滨', '满洲里', 935, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (103, 45, '富西线', '6', '0', null, '富裕', '古莲', 860, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (106, 46, '伊加线 ', '6', '0', null, '伊图里河', '加格达奇', 212, '国铁', '哈尔滨局', null, null);

GO

insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (107, 47, '牙林线', '6', '0', '11', '牙克石', '伊图里河', 236, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (108, 49, '朝乌线', '8', '0', '11', '朝中', '莫尔道嘎', 75, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (109, 50, '博林线', '7', '0', '12', '沟口', '塔尔气', 126, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (110, 51, '塔韩线', '8', '0', '13', '塔河', '韩家园', 117, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (111, 52, '伊敏线', '8', '0', null, '海拉尔东', '伊敏', 76, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (121, 53, '滨北线', '4', '0', null, '哈尔滨', '北安', 333, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (122, 54, '北黑线', '8', '0', '13', '北安', '黑河', 303, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (123, 55, '绥佳线', '4', '0', null, '绥化', '佳木斯', 382, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (124, 56, '鹤岗线', '6', '0', '14', '莲江口', '鹤岗', 56, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (127, 58, '佳富线', '6', '0', null, '东佳木斯', '双鸭山', 73, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (128, 59, '南乌线', '8', '0', null, '南岔', '乌伊岭', 257, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (129, 60, '翠峦线 ', '7', '0', '13', '伊春', '翠峦', 21, '国铁', '哈尔滨局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (608, 193, '南京北线', '6', '0', '13', '林场站', '南京北站', 8, '国铁', '上海局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (615, 194, '上海南线', '4', '0', null, '上海南', '春申', 10, '国铁', '上海局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1648, 195, '黄南线', '4', '0', null, '黄渡', '上海南', 35, '国铁', '上海局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (1643, 196, '杭州线 ', '4', '0', null, '笕桥', '白鹿塘', 42, '国铁', '上海局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (618, 197, '宁铜线', '6', '0', null, '南京西', '狮子山', 205, '国铁', '上海局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (630, 198, '金山线 ', '4', '0', null, '新桥', '金山卫', 40, '国铁', '上海局', '是', null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (635, 199, '长牛线', '6', '0', null, '长兴站', '牛头山站', 40, '国铁', '上海局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (639, 200, '金千线 ', '8', '0', null, '金华西', '千岛湖', 79, '国铁', '上海局', null, null);
insert into TRAINLINE (LINEID, NUM, LINENAME, LINETYPE, LINECLASS, REMARK, ASTATION, BSTATION, MILES, CHANQUAN, CHANQUANGUISHOU, DQH, SPRINGWINTER)
values (685, 201, '宣杭线', '4', '0', null, '宣城', '杭州', 240, '国铁', '上海局', null, null); 


