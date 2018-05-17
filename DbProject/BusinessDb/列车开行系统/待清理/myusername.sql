 IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'myusername')
	BEGIN
		DROP  Table myusername
	END
GO
 
 create table myusername
(
  num       integer,
  username  varchar(50) not null,
  password  varchar(50) not null,
  isadmin   varchar(1) not null,
  lastlogin varchar(50)
)
;
alter table myusername
  add primary key (username);


insert into MYUSERNAME (NUM, USERNAME, PASSWORD, ISADMIN, LASTLOGIN)
values (1, 'admin', 'E10ADC3949BA59ABBE56E057F20F883E', '1', '2018/5/16 20:33:47');
insert into MYUSERNAME (NUM, USERNAME, PASSWORD, ISADMIN, LASTLOGIN)
values (5, 'xsh', 'E10ADC3949BA59ABBE56E057F20F883E', '0', '2016/7/21 19:19:40');
insert into MYUSERNAME (NUM, USERNAME, PASSWORD, ISADMIN, LASTLOGIN)
values (2, 'yangy', '81DC9BDB52D04DC20036DBD8313ED055', '0', '2012-9-21 10:29:57');
insert into MYUSERNAME (NUM, USERNAME, PASSWORD, ISADMIN, LASTLOGIN)
values (3, 'tuyt', '81DC9BDB52D04DC20036DBD8313ED055', '0', '2014-7-16 17:02:18');
insert into MYUSERNAME (NUM, USERNAME, PASSWORD, ISADMIN, LASTLOGIN)
values (1, 'pengjz', '81DC9BDB52D04DC20036DBD8313ED055', '1', '2014-3-3 9:51:04');
insert into MYUSERNAME (NUM, USERNAME, PASSWORD, ISADMIN, LASTLOGIN)
values (4, 'tok', '81DC9BDB52D04DC20036DBD8313ED055', '0', '2016/7/25 9:03:35');


