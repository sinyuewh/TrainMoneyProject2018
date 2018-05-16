/*
  线路站点（线路的子表）
*/

IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'linestation')
	BEGIN
		DROP  Table linestation
	END
GO

CREATE TABLE linestation
(
	  id         integer not null primary key,				--数据ID
	  lineid     integer,									--线路ID
	  num        integer,									--序号
	  astation   varchar(50) not null,						--起点
	  bstation   varchar(50) not null,						--终点
	  miles      integer,									--里程（km)
	  milesclass integer,									--里程类别
	  direction  integer,									--方向
	  jnflag     integer,									--局内标志（1局内 空非局内）
	  dqh        varchar(10),								--电气化标志（1电气化 空非电气化）
	  shipflag   varchar(1),								--轮渡标志（1轮渡 空-非轮渡）
	  fee1       integer,
	  fee2       integer,
	  fee3       integer,
	  fee4       integer,
	  gtllx      varchar(10),								--高铁联络线标志（1是联络线 空-不是）
	  kzid       integer,
	  cjlid      integer
)
GO


