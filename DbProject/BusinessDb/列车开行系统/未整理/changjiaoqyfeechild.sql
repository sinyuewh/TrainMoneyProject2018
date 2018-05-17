IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'changjiaoqyfeechild')
	BEGIN
		DROP  Table changjiaoqyfeechild
	END
GO

create table changjiaoqyfeechild
(
  num      integer not null primary key,
  lineid   integer not null,
  astation varchar(50) not null,
  bstation varchar(50) not null,
  fee1     integer,
  fee2     integer,
  fee3     integer
)
GO
--插入数据