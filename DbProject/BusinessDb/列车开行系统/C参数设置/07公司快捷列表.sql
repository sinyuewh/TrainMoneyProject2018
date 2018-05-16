/*
公司快捷信息
*/

IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'corpinfo')
	BEGIN
		DROP  Table corpinfo
	END
GO

CREATE TABLE corpinfo
(
   
  corpname   varchar(50) not null primary key,			--公司名称
  abbname    varchar(50) not null,						--公司缩写
  wholespell varchar(50) not null						--公司全拼

)
GO

insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('京津城际', 'jjcj', 'jingjinchengji');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('石太客专', 'stkz', 'shitaikezhuan');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('郑西客专', 'zxkz', 'zhengxikezhuan');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('沪汉蓉公司', 'hhrgs', 'huhanronggongsi');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('武广客专', 'wgkz', 'wuguangkezhuan');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('胶济客专', 'jjkz', 'jiaojikezhaun');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('沪宁公司', 'hngs', 'huninggongsi');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('沪杭公司', 'hhgs', 'huhanggongsi');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('合武安徽', 'hwah', 'hewuanhui');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('浙江沿海', 'zjyh', 'zhejiangyanhai');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('昌九城际', 'cjcj', 'changjiuchengji');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('东南沿海', 'dnyh', 'dongnanyanhai');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('市域公司', 'sygs', 'shiyugongsi');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('哈大客专', 'hdkz', 'hadakezhuan');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('京石客专', 'jskz', 'jingshikezhuan');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('石武客专', 'swkz', 'shiwukezhuan');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('长吉城际', 'cjcj', 'changjichengji');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('广深港公司', 'gsggs', 'guangshenganggongsi');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('广珠城际', 'gzcj', 'guangzhuchengji');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('海南东环', 'hndh', 'hainandonghuan');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('京沪客专', 'jhkz', 'jinghukezhuan');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('龙岩公司(龙彰线)', 'lygs', 'longyangongsi');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('北京铁路局', 'bj', 'beijingtieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('郑州铁路局', 'zz', 'zhengzhoutieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('哈尔滨铁路局', 'heb', 'haerbintieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('沈阳铁路局', 'sy', 'shenyangtieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('呼和浩特铁路局', 'hh', 'huhehaotetieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('太原铁路局', 'ty', 'taiyuantieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('武汉铁路局', 'wh', 'wuhan');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('西安铁路局', 'xa', 'xiantieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('济南铁路局', 'jn', 'jinantieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('上海铁路局', 'sh', 'shanghaitieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('南昌铁路局', 'nc', 'nanchangtieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('广州铁路集团公司', 'gt', 'gangzhoutielujituangongsi');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('青藏铁路公司', 'qz', 'qingzangtielugongsi');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('南宁铁路局', 'nn', 'nanningtieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('成都铁路局', 'cd', 'chengdutieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('昆明铁路局', 'km', 'kunmingtieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('兰州铁路局', 'lz', 'lanzhoutieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('乌鲁木齐铁路局', 'wlmq', 'wulumuqitieluju');
insert into CORPINFO (CORPNAME, ABBNAME, WHOLESPELL)
values ('测试铁路局', 'cs', 'ceshitieluju');
