 IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'profilegroup')
	BEGIN
		DROP  Table profilegroup
	END
GO  
--
create table profilegroup
(
  num    integer,
  id     integer not null,
  remark varchar(200) not null,
  url    varchar(200) not null,
  kind   integer
)
;
alter table profilegroup
  add primary key (id);
 
--导入数据
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (1, 10, '线路使用费', '/TrainWeb/SystemProfile/Fee01_LineProfile.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (2, 11, '机车牵引费', '/TrainWeb/SystemProfile/Fee02_QianYinFeeProfile.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (3, 12, '电网和接触网使用费', '/TrainWeb/SystemProfile/Fee03_DianWangAndJieChuWangFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (4, 13, '售票服务费', '/TrainWeb/SystemProfile/Fee04_TrainServerFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (5, 14, '旅客服务费', '/TrainWeb/SystemProfile/Fee05_LvKeFServerFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (6, 15, '列车上水费', '/TrainWeb/SystemProfile/Fee06_TrainWaterFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (7, 16, '人员工资及附加费', '/TrainWeb/SystemProfile/Fee07_PersonGZAndFuJiaFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (8, 17, '车辆采购价格表', '/TrainWeb/SystemProfile/Fee08_CheLiangZheJiuFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (9, 18, '车辆日常检修费', '/TrainWeb/SystemProfile/Fee09_RiChangJianXiuFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (10, 19, '车辆定期检修费', '/TrainWeb/SystemProfile/Fee10_DiQiJianXiuFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (11, 20, '客运消耗、备用备品', '/TrainWeb/SystemProfile/Fee11_KeYuanXiaoHao.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (12, 21, '空调车用油', '/TrainWeb/SystemProfile/Fee12_KongTiaoCheYongYouFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (13, 22, '人员其他费用', '/TrainWeb/SystemProfile/Fee13_PersonOtherFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (14, 23, '车辆折旧费率和银行贷款利息表', '/TrainWeb/SystemProfile/Fee14_GouMaiCheLiXiFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (1, 30, '基础费率配置', '/TrainWeb/SystemProfile/Shouru01_BaseDataList.aspx', 0);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (2, 31, '普通列车车厢配置', '/TrainWeb/SystemProfile/Shouru02_CommTrainCheXianProfile.aspx', 0);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (3, 32, '动车车厢配置', '/TrainWeb/SystemProfile/Shouru03_HighTrainProfile.aspx', 0);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (4, 33, '列车加快费率', '/TrainWeb/SystemProfile/Shouru04_JiaKuaiProfile.aspx', 0);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (5, 34, '里程区段对应表', '/TrainWeb/SystemProfile/LiChengQuDuanProfile.aspx', 2);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (6, 35, '区段票价递减表', '/TrainWeb/SystemProfile/QuDuanPiaoJiDiJian.aspx', 2);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (7, 37, '普通列车票价参考表', '/TrainWeb/SystemProfile/Shouru05_PiaoJia1.aspx', 0);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (8, 38, '新型空调车票价参考表', '/TrainWeb/SystemProfile/Shouru06_PiaoJia2.aspx', 0);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (16, 42, '列车检备率', '/TrainWeb/SystemProfile/Fee16_JianBeiLv.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (11, 41, '税金年配置表', '/TrainWeb/SystemProfile/Shouru08_SRateList.aspx', 0);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (17, 43, '间接费用分摊', '/TrainWeb/SystemProfile/Fee17_JianJieFee.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (10, 40, '宿营车配置参考表', '/TrainWeb/SystemProfile/Shouru07_SycPerson.aspx', 0);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (9, 39, '动车票价折扣参考表', '/TrainWeb/SystemProfile/DongCheDiscountList.aspx', 0);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (15, 24, '列车人员编制表', '/TrainWeb/SystemProfile/Fee15_TrainPersonList.aspx', 1);
insert into PROFILEGROUP (NUM, ID, REMARK, URL, KIND)
values (18, 44, '检修费率系数', '/TrainWeb/SystemProfile/Fee18_JianXiuFeeRate.aspx', 1);