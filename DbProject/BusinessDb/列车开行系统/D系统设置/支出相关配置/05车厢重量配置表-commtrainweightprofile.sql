 IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'commtrainweightprofile')
	BEGIN
		DROP  Table commtrainweightprofile
	END
GO

/**
  硬座	软座	双层硬座	双层软座	硬卧	软卧	19K高软	19T高软	餐车	发电车
*/
create table commtrainweightprofile
(
  num          integer,										--序号
  traintype    varchar(50) not null primary key,			--车型
  
  yzweight     numeric(18,2),								--硬座重量
  rzweight     numeric(18,2),								--软座重量
  syzweight    numeric(18,2),								--双层硬座
  srzweight    numeric(18,2),								--双层软座重量
    
  ywweight     numeric(18,2),								--硬卧重量
  rwweight     numeric(18,2),								--软卧重量
  grw19kweight numeric(18,2),								--19K高软重量
  grw19tweight numeric(18,2),								--19T高软重量
  
  caweight     numeric(18,2),								--餐车重量
  kdweight     numeric(18,2),								--发电车重量
	
  grwweight    numeric(18,2),								-- ？？
  syweight     numeric(18,2),								-- ？？
  
  yzprice      numeric(18,2),
  ywprice      numeric(18,2),
  rwprice      numeric(18,2),
  grwprice     numeric(18,2),
  caprice      numeric(18,2),
  kdprice      numeric(18,2),
  rzprice      numeric(18,2),
  syprice      numeric(18,2),
  
  
  yzcost1      numeric(18,2),
  ywcost1      numeric(18,2),
  rwcost1      numeric(18,2),
  grwcost1     numeric(18,2),
  cacost1      numeric(18,2),
  kdcost1      numeric(18,2),
  rzcost1      numeric(18,2),
  sycost1      numeric(18,2),
  yzcost2      numeric(18,2),
  ywcost2      numeric(18,2),
  rwcost2      numeric(18,2),
  grwcost2     numeric(18,2),
  cacost2      numeric(18,2),
  kdcost2      numeric(18,2),
  rzcost2      numeric(18,2),
  sycost2      numeric(18,2),
  yzcost3      numeric(18,2),
  ywcost3      numeric(18,2),
  rwcost3      numeric(18,2),
  grwcost3     numeric(18,2),
  cacost3      numeric(18,2),
  kdcost3      numeric(18,2),
  rzcost3      numeric(18,2),
  sycost3      numeric(18,2),
  oil          numeric(18,2),
  speed        numeric(18,2),
  a2cost       numeric(18,2),
  a3cost       numeric(18,2),
  a4cost       numeric(18,2),
  a5cost       numeric(18,2),
  syzprice     numeric(18,2),
  
  syzcost1     numeric(18,2),
  syzcost2     numeric(18,2),
  syzcost3     numeric(18,2),
  srzprice     numeric(18,2),
  
  srzcost1     numeric(18,2),
  srzcost2     numeric(18,2),
  srzcost3     numeric(18,2),
  grw19kprice  numeric(18,2),
  
  grw19kcost1  numeric(18,2),
  grw19kcost2  numeric(18,2),
  grw19kcost3  numeric(18,2),
  grw19tprice  numeric(18,2),
 
  grw19tcost1  numeric(18,2),
  grw19tcost2  numeric(18,2),
  grw19tcost3  numeric(18,2),
  yza4         numeric(18,2),
  rza4         numeric(18,2),
  syza4        numeric(18,2),
  srza4        numeric(18,2),
  ywa4         numeric(18,2),
  rwa4         numeric(18,2),
  caa4         numeric(18,2),
  kda4         numeric(18,2),
  rw19ta4      numeric(18,2),
  rw19ka4      numeric(18,2)
)
GO
--插入数据


insert into COMMTRAINWEIGHTPROFILE (NUM, TRAINTYPE, YZWEIGHT, YWWEIGHT, RWWEIGHT, GRWWEIGHT, CAWEIGHT, KDWEIGHT, RZWEIGHT, SYWEIGHT, YZPRICE, YWPRICE, RWPRICE, GRWPRICE, CAPRICE, KDPRICE, RZPRICE, SYPRICE, YZCOST1, YWCOST1, RWCOST1, GRWCOST1, CACOST1, KDCOST1, RZCOST1, SYCOST1, YZCOST2, YWCOST2, RWCOST2, GRWCOST2, CACOST2, KDCOST2, RZCOST2, SYCOST2, YZCOST3, YWCOST3, RWCOST3, GRWCOST3, CACOST3, KDCOST3, RZCOST3, SYCOST3, OIL, SPEED, A2COST, A3COST, A4COST, A5COST, SYZPRICE, SYZWEIGHT, SYZCOST1, SYZCOST2, SYZCOST3, SRZPRICE, SRZWEIGHT, SRZCOST1, SRZCOST2, SRZCOST3, GRW19KPRICE, GRW19KWEIGHT, GRW19KCOST1, GRW19KCOST2, GRW19KCOST3, GRW19TPRICE, GRW19TWEIGHT, GRW19TCOST1, GRW19TCOST2, GRW19TCOST3, YZA4, RZA4, SYZA4, SRZA4, YWA4, RWA4, CAA4, KDA4, RW19TA4, RW19KA4)
values (1, '25B', 62.2, 57.6, 56.4, 60, 59.2, 0, 57.1, 60, 115.15, 119.18, 198.98, null, 177.2, null, 250.98, null, 51, 50, 50, 50, 50, 50, 50, 50, 3, 3, 3, 3, 3, 3, 3, 3, 2.8, 7, 6, 0, 0, 0, null, 0, 0, 80, 3, 3, 3, null, 198.72, 67.3, null, null, null, 231.28, 62.6, null, null, null, null, 0, null, null, null, null, 0, null, null, null, 22.2, 43.1, 60, 75, 25, 43.1, 44.19, 0, 0, 0);
insert into COMMTRAINWEIGHTPROFILE (NUM, TRAINTYPE, YZWEIGHT, YWWEIGHT, RWWEIGHT, GRWWEIGHT, CAWEIGHT, KDWEIGHT, RZWEIGHT, SYWEIGHT, YZPRICE, YWPRICE, RWPRICE, GRWPRICE, CAPRICE, KDPRICE, RZPRICE, SYPRICE, YZCOST1, YWCOST1, RWCOST1, GRWCOST1, CACOST1, KDCOST1, RZCOST1, SYCOST1, YZCOST2, YWCOST2, RWCOST2, GRWCOST2, CACOST2, KDCOST2, RZCOST2, SYCOST2, YZCOST3, YWCOST3, RWCOST3, GRWCOST3, CACOST3, KDCOST3, RZCOST3, SYCOST3, OIL, SPEED, A2COST, A3COST, A4COST, A5COST, SYZPRICE, SYZWEIGHT, SYZCOST1, SYZCOST2, SYZCOST3, SRZPRICE, SRZWEIGHT, SRZCOST1, SRZCOST2, SRZCOST3, GRW19KPRICE, GRW19KWEIGHT, GRW19KCOST1, GRW19KCOST2, GRW19KCOST3, GRW19TPRICE, GRW19TWEIGHT, GRW19TCOST1, GRW19TCOST2, GRW19TCOST3, YZA4, RZA4, SYZA4, SRZA4, YWA4, RWA4, CAA4, KDA4, RW19TA4, RW19KA4)
values (2, '25G', 58, 55.5, 54.5, 60, 50.5, 69.1, 0, 60, 239, 209.26, 239.76, null, 222.1, 417.33, 257.14, null, 50, 50, 50, 50, 50, 50, 50, 50, 3, 3, 3, 3, 3, 3, 3, 3, 4.6, 10, 9, 0, 0, 0, 4.8, 0, 32.1, 100, 3, 3, 3, null, null, 0, null, null, 5.8, null, 0, null, null, 6.6, null, 0, null, null, null, null, 0, null, null, null, 40.5, 43.11, 0, 0, 41.85, 43.11, 44.19, 85, 0, 0);
insert into COMMTRAINWEIGHTPROFILE (NUM, TRAINTYPE, YZWEIGHT, YWWEIGHT, RWWEIGHT, GRWWEIGHT, CAWEIGHT, KDWEIGHT, RZWEIGHT, SYWEIGHT, YZPRICE, YWPRICE, RWPRICE, GRWPRICE, CAPRICE, KDPRICE, RZPRICE, SYPRICE, YZCOST1, YWCOST1, RWCOST1, GRWCOST1, CACOST1, KDCOST1, RZCOST1, SYCOST1, YZCOST2, YWCOST2, RWCOST2, GRWCOST2, CACOST2, KDCOST2, RZCOST2, SYCOST2, YZCOST3, YWCOST3, RWCOST3, GRWCOST3, CACOST3, KDCOST3, RZCOST3, SYCOST3, OIL, SPEED, A2COST, A3COST, A4COST, A5COST, SYZPRICE, SYZWEIGHT, SYZCOST1, SYZCOST2, SYZCOST3, SRZPRICE, SRZWEIGHT, SRZCOST1, SRZCOST2, SRZCOST3, GRW19KPRICE, GRW19KWEIGHT, GRW19KCOST1, GRW19KCOST2, GRW19KCOST3, GRW19TPRICE, GRW19TWEIGHT, GRW19TCOST1, GRW19TCOST2, GRW19TCOST3, YZA4, RZA4, SYZA4, SRZA4, YWA4, RWA4, CAA4, KDA4, RW19TA4, RW19KA4)
values (4, '25T', 62, 60.5, 59.3, 60, 53.5, 0, 0, 60, 424.4, 434.54, 478.48, null, 442.55, null, null, null, 50, 50, 50, 50, 50, 50, 50, 50, 3, 3, 3, 3, 3, 3, 3, 3, 5.3, 13, 12, 0, 0, 0, null, 0, 0, 120, 3, 3, 3, null, null, 0, null, null, null, null, 0, null, null, null, null, 0, null, null, null, 598.09, 57.1, null, null, null, 107.7, 0, 0, 0, 109, 121, 109.4, 0, 161.5, 0);
insert into COMMTRAINWEIGHTPROFILE (NUM, TRAINTYPE, YZWEIGHT, YWWEIGHT, RWWEIGHT, GRWWEIGHT, CAWEIGHT, KDWEIGHT, RZWEIGHT, SYWEIGHT, YZPRICE, YWPRICE, RWPRICE, GRWPRICE, CAPRICE, KDPRICE, RZPRICE, SYPRICE, YZCOST1, YWCOST1, RWCOST1, GRWCOST1, CACOST1, KDCOST1, RZCOST1, SYCOST1, YZCOST2, YWCOST2, RWCOST2, GRWCOST2, CACOST2, KDCOST2, RZCOST2, SYCOST2, YZCOST3, YWCOST3, RWCOST3, GRWCOST3, CACOST3, KDCOST3, RZCOST3, SYCOST3, OIL, SPEED, A2COST, A3COST, A4COST, A5COST, SYZPRICE, SYZWEIGHT, SYZCOST1, SYZCOST2, SYZCOST3, SRZPRICE, SRZWEIGHT, SRZCOST1, SRZCOST2, SRZCOST3, GRW19KPRICE, GRW19KWEIGHT, GRW19KCOST1, GRW19KCOST2, GRW19KCOST3, GRW19TPRICE, GRW19TWEIGHT, GRW19TCOST1, GRW19TCOST2, GRW19TCOST3, YZA4, RZA4, SYZA4, SRZA4, YWA4, RWA4, CAA4, KDA4, RW19TA4, RW19KA4)
values (3, '25K', 56.9, 54.3, 52.1, 60, 58.9, 67.9, 54.9, 60, 303.32, 265.17, 248.59, null, 263.56, 453.98, null, null, 50, 50, 50, 50, 50, 50, 50, 50, 3, 3, 3, 3, 3, 3, 3, 3, 4.6, 10, 9, 0, 0, 0, 4.8, 0, 32.7, 100, 3, 3, 3, null, null, 0, null, null, 5.8, null, 0, null, null, 6.6, 419.7, 54.6, null, null, null, null, 0, null, null, null, 76, 81.03, 103.3, 110.09, 78.6, 81.03, 83.11, 118, 0, 161.5);


