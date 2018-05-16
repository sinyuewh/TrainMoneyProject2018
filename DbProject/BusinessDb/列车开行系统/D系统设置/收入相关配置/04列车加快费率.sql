/**--列车加快费率--*/
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'jiakuaiprofile')
	BEGIN
		DROP  Table jiakuaiprofile
	END
GO

CREATE TABLE jiakuaiprofile
(
   
  id          integer not null primary key,		--数据ID
  jiakuaitype varchar(50) not null,				--加快Key
  jiakuainame varchar(50) not null,				--加快类型
  fee         integer not null					--费率100%

)
GO


--插入数据
insert into JIAKUAIPROFILE (ID, JIAKUAITYPE, JIAKUAINAME, FEE)
values (1, 'jk1', '加快', 20);
insert into JIAKUAIPROFILE (ID, JIAKUAITYPE, JIAKUAINAME, FEE)
values (2, 'jk2', '特快', 40);
insert into JIAKUAIPROFILE (ID, JIAKUAITYPE, JIAKUAINAME, FEE)
values (3, 'jk3', '特快附加', 60);
