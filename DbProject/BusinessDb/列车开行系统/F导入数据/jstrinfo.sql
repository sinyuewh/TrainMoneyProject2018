 --在表 JStrInfo中增加字段syskind // SYSKINDVARCHAR2(1)	Y	
delete from Jstrinfo
	
--插入数据
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (1, '基本硬座费率', null, null, null, '硬座的基本费率', null, '0.05861');

insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (2, '空调费率', null, null, null, '空调费系数', null, '0.25');

insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (3, '保险费率', null, null, null, '保险费系数', null, '0');

insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (29, '卧铺订票费', null, null, null, '卧铺订票费', null, '10');


insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (29, '普列折旧费率', null, null, null, null, '0', '4.8');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (30, '动列折旧费率', null, null, null, null, '0', '4.8');

insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (4, '普通列车售票服务费比例', null, null, null, '为票价全年总收入的百分比%', '0', '1');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (5, '普通列车旅客服务费标准', null, null, null, '按每乘客３元计算，计算公司为：乘客满员时数量*标准 ', '0', '3');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (6, '普通列车上水站费用标准', null, null, null, '每个水站的费用，单位为元，计算公式为：列车经停的上水站数量*标准*２*３６５', '0', '20');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (7, '普通列车人年工资成本标准', null, null, null, '普通列车人年工资成本标准，单位为元（动车的标准相同），计算公式为：工作人员数*班次*标准*（1+输入附加系数）', '0', '60002');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (8, '普通列车人年工资附加费标准', null, null, null, '为工资费用的百分比%（动车的标准相同）', '0', '2');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (9, '普通列车人年其他费用标准', null, null, null, '普通列车每人每年其他费用标准，单位为元（动车的标准相同），计算公式为：工作人员数*标准', '0', '3000');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (10, '普通列车用油的定额标准', null, null, null, '单位为公斤/千公里，空调车用油的计算公式：18（车辆数）*里程*定额标准*油的单价*２*３６５', '0', '32.5');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (11, '油价标准', null, null, null, '每公斤油价格，单位为元', '0', '8.5');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (12, '固定利率', null, null, null, '固定利率百分比', '0', '6.55');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (13, '200公里动车车厢重量', null, null, null, '单位为万吨，用于计算200公里动车组接触网使用费和电费，计算公式如下：标准*动量（万吨）*里程（公里）*编组数', '0', '2');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (14, '300公里动车车厢重量', null, null, null, '单位为万吨，用于计算300公里动车组接触网使用费和电费，计算公式如下：标准*动量（万吨）*里程（公里）*编组数', '0', '2.5');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (15, '动车售票服务费比例', null, null, null, '为票价全年总收入的百分比%', '0', '1');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (16, '动车旅客服务费标准', null, null, null, '按每乘客5元计算，计算公司为：乘客满员时数量*标准', '0', '5');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (17, '动车上水站费用标准', null, null, null, '动车每个水站的费用，单位为元，计算公式为：列车经停的上水站数量*标准*２*３６５ ', '0', '24');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (18, '8节动座服务人员数', null, null, null, '8节动座工作人员数', '0', '6');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (19, '16节动座服务人员数', null, null, null, '16节动座工作人员数', '0', '10');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (20, '16节动卧服务人员', null, null, null, '16节动卧工作人员数', '0', '13');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (21, '200公里动车日常检修成本', null, null, null, '单位为元/编组数.车底数，计算公式：标准*车底数（是1位小数）*编组数量（8或16）', '0', '20000');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (22, '300公里动车日常检修成本', null, null, null, '单位为元/编组数.车底数，计算公式：标准*车底数（是1位小数）*编组数量（8或16）', '0', '30000');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (23, '200公里车辆定期检修成本', null, null, null, '单位为元/公里，计算公式：标准*运行里程 *2*编组数（？）', '0', '200');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (24, '300公里车辆定期检修成本', null, null, null, '单位为元/公里，计算公式：标准*运行里程 *2*编组数（？）', '0', '300');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (25, '200公里动车客运消耗备用备品成本', null, null, null, '单位为元/编组数，计算公式：标准*编组数', '0', '20000');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (26, '300公里动车客运消耗备用备品成本', null, null, null, '单位为元/编组数，计算公式：标准*编组数', '0', '3000');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (27, '200公里动车购买成本标准', null, null, null, '单位为元/编组数，计算公式：标准*编组数', '0', '20000');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (28, '300公里动车购买成本标准', null, null, null, '单位为元/编组数，计算公式：标准*编组数', '0', '30000');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (31, '空调客车轮渡费', null, null, null, '空调客车轮渡费', '0', '100');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (32, '非空调客车轮渡费', null, null, null, '非空调客车轮渡费', '0', '70');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (33, '直供电内燃牵引附加费', null, null, null, '直供电内燃牵引附加费', '0', '50');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (34, '直供电电力牵引附加费', null, null, null, '直供电电力牵引附加费', '0', '25');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (null, 'KIP', null, null, null, null, null, '10.102.36.208,10.102.25.66,10.102.36.252,10.102.25.144,10.102.46.139,10.102.46.124,10.102.46.254,10.102.36.101,10.102.24.210,10.102.25.117,10.102.4.114,::1');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (35, '动车检备率', null, null, null, '动车检备率', '0', '15');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (36, '列车检备率', null, null, null, '列车检备率', '0', '20');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (29, '宿营车定员', null, null, null, '宿营车定员', '0', '42');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (37, '间接费用分摊', null, null, null, '间接费用分摊', '0', '0.2822');
insert into JSTRINFO (NUM, STRID, AUTHOR, CREATETIME, MODELID, REMARK, SYSKIND, STRTEXT)
values (38, '检修费率系数', null, null, null, '检修费率系数', '0', '1');	


 