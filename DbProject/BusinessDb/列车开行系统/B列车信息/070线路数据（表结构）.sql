/*
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


