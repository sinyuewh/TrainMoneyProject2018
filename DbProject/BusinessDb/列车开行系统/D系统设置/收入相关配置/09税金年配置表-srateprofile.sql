 IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'srateprofile')
	BEGIN
		DROP  Table srateprofile
	END
GO    
--
create table srateprofile
(
  byear integer not null,			--年费
  srate numeric(18,6)				--税金
)
;
alter table srateprofile
  add primary key (byear);
  
--导入数据
insert into SRATEPROFILE (BYEAR, SRATE)
values (2011, .9676);
insert into SRATEPROFILE (BYEAR, SRATE)
values (2012, .967);
insert into SRATEPROFILE (BYEAR, SRATE)
values (2019, .9676);
insert into SRATEPROFILE (BYEAR, SRATE)
values (2016, .9676);
insert into SRATEPROFILE (BYEAR, SRATE)
values (2013, .9676);