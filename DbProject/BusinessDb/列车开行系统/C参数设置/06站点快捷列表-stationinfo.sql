/*--站点快捷列表--*/
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'stationinfo')
	BEGIN
		DROP  Table stationinfo
	END
GO

CREATE TABLE stationinfo
(
   
  stationname varchar(50) not null primary key ,		--站名
  abbname     varchar(50) not null,						--站名缩写
  wholespell  varchar(50) not null						--站名全拼

)
GO

insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('武汉', 'wh', 'wuhan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('乌鲁木齐', 'wlmq', 'wulumuqi');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('汉口', 'hk', 'hankou');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('武昌', 'wc', 'wuchang');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('哈尔滨', 'heb', 'hanerbin');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('哈尔滨西', ' hebx', 'hanerbinxi');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('沈阳', 'sy', 'shenyang');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('沈阳北', 'syb', 'shenyangbei');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('大连', 'dl', 'dalian');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('天津西', 'tjx', 'tianjinxi');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('天津', 'tj', 'tianjin');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('天津南', 'tjn', 'tianjinnan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('北京', 'bj', 'beijing');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('北京西', 'bjx', 'beijingxi');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('北京南', 'bjn', 'beijingnan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('上海', 'sh', 'shanghai');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('上海虹桥', 'shhq', 'shanghaihongqiao');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('上海南', 'shn', 'shanghainan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('郑州', 'zz', 'zhengzhou');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('郑州东', 'zzd', 'zhengzhoudong');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('杭州', 'hz', 'hangzhou');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('杭州东', 'hzd', 'hangzhoudong');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('南京', 'nj', 'nanjing');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('南京南', 'njn', 'nanjingnan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('合肥', 'hf', 'hefei');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('南昌', 'nc', 'nanchang');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('南昌西', 'ncx', 'nanchangxi');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('福州', 'fz', 'fuzhou');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('福州南', 'fzn', 'fuzhounan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('广州', 'gz', 'guangzhou');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('广州南', 'gzn', 'guangzhounan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('广州东', 'gzd', 'guangzhoudong');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('广州北', 'gzb', 'guangzhoubei');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('西安', 'xa', 'xian');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('西安北', 'xab', 'xianbei');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('长沙', 'cs', 'changsha');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('长沙南', 'csn', 'changshanan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('成都', 'cd', 'chengdu');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('成都东', 'cdd', 'chengdudong ');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('重庆', 'cq', 'chongqing');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('重庆北', 'cqb', 'chongqingbei');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('兰州', 'lz', 'lanzhou');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('石家庄', 'sjz', 'shijiazhuang');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('石家庄北', 'sjzb', 'shijiazhuangbei');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('合肥南', 'hfn', 'hefeinan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('南宁', 'nn', 'nanning');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('西宁西', 'xnx', 'xiningxi');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('拉萨', 'ls', 'lasha');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('包头', 'bt', 'baotou');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('包头东', 'btd', 'baotoudong');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('太原', 'ty', 'taiyuan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('太原东', 'tyd', 'taiyuandong');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('昆明', 'km', 'kunming');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('贵阳', 'gy', 'guiyang');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('银川', 'yc', 'yinchuan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('济南', 'jn', 'jinan');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('济南西', 'jnx', 'jinanxi');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('济南东', 'jnd', 'jinandong');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('长春', 'cc', 'changchun');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('长春西', 'ccx', 'changchunxi');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('呼和浩特', 'hhht', 'huhehaote');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('呼和浩特东', 'hhhtd', 'huhehaotedong');
insert into STATIONINFO (STATIONNAME, ABBNAME, WHOLESPELL)
values ('测试', 'cs', 'ceshi');


