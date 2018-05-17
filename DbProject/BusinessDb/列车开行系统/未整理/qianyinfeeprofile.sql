 IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'qianyinfeeprofile')
	BEGIN
		DROP  Table qianyinfeeprofile
	END
GO  
--
create table qianyinfeeprofile
(
  qianyintype integer not null,
  qianyinname varchar(50) not null,
  fee1        numeric(18,2),
  fee2        numeric(18,2),
  fee3        numeric(18,2)
)
;
alter table qianyinfeeprofile
  add primary key (qianyintype);
alter table qianyinfeeprofile
  add unique (qianyinname);

--导入数据
insert into QIANYINFEEPROFILE (QIANYINTYPE, QIANYINNAME, FEE1, FEE2, FEE3)
values (0, '电力机车', 320, 270, 310);
insert into QIANYINFEEPROFILE (QIANYINTYPE, QIANYINNAME, FEE1, FEE2, FEE3)
values (1, '内燃机车', 430, 340, 460);