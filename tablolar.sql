
--create database DBeczane
use DBeczane;



--create table eczane(
--vergi_no int not null,
--primary key (vergi_no),
--adress nvarchar(50) ,
--eczane_isim nvarchar(50) not null,
--eczane_t�r� nvarchar(14) not null,
--constraint eczane_tur_kontrol check (eczane_t�r� in ('n�bet�i' , 'n�bet�i de�il')) ,


--)

--create table f�rma(
--ad nvarchar(50),
--telefon char(11),
--adres nvarchar(50),
--fvergi_no int not null,
--primary key(fvergi_no),
--)

--create table ilac(
--ilac_ad nvarchar(50),
--id int not null,  -- 
--tablet smallint,
--constraint tablet_kontrol check (tablet>0),
--fiyat money,
--constraint fiyat_kontrol check (fiyat>0),
--�retim_thr date not null,
--sonKullanma_thr date not null,
--etkin_madde nvarchar(50),
--�retici_firmaID int,
--kullan�lacak_alan nvarchar(50),
--foreign key (�retici_firmaId) references f�rma(fvergi_no),
--primary key(id),
--)

--create table depo(
--miktar int not null,
--ila�Ad nvarchar(50),
--id int not null,
--kayit_thr date not null ,
-- FOREIGN KEY (id) REFERENCES ilac(id),
--)

--create table hasta(

--isim nvarchar(50) not null,
--tc char(11) not null,
--SSN  int not null,
--constraint Tc_kontrol check (LEN(tc)>=11 and LEN(tc)<=11),
--dogum_trh date not null,
--cinsiyet nvarchar(5) ,
--  PRIMARY KEY(tc,SSN),
--  --primary key(SSN),
   
--)
--create table re�ete(
--re�ete_id int not null,
--primary key (re�ete_id),
--ila�Id int Not nUll ,
--hasta_tc char(11) not null,
--SSn int not null,
--tarih date,
--foreign key(hasta_tc,SSn) references  hasta(tc,SSN),


--)

--create table satilan_ila�lar(
--re�ete_id int,
--ila�_id int ,
--kutuAdedi int,
--eczane_no int,
--sati�_trh date,
--foreign key(re�ete_id) references re�ete(re�ete_id),
--foreign key (ila�_id) references ilac(id),
--foreign key (eczane_no) references eczane(vergi_no)
--)


--insert into f�rma values('abdibrahim','05369210554','esenyurt/istanbul',11393)
--insert into f�rma values('merck','05349851631','darmstadt/almanya',11765)
--insert into f�rma values('bilim ilac','05424550206','kapakl�/tekirda�',25096)
--insert into f�rma values('biofarma','05363887563','sancaktepe/istanbul',20237)
--insert into f�rma values('vem','05446337824','kapakl�/tekirda�',23218)
--insert into f�rma values('berko','05347891564','s�ltanbeyli/istanbul',25086)
--insert into f�rma values('recordat�','05446789451','kapakl�/tekirda�',17149)
--insert into f�rma values('novelfarma','05463214758','esenyurt/istanbul',20147)
--insert into f�rma values('atabay','05370496457','kad�k�y/istanbul',23249)
--insert into f�rma values('pharmactive','05463784621','kapakl�/tekirda�',2171)
--insert into f�rma values('ilko','05498632145','san�aktepe/istanbul', 15451)
--insert into f�rma values('sanof�','05465893128','l�leburgaz/k�rklareli',21580)



--insert into ilac values ('parol' ,2554 , 30 , 15 , '2021-01-01' , '2024-01-01' , 'kafein' ,23249,'a�r� kesici')
--insert into ilac values ('balaban' ,2456 , null , 9.5 , '2021-01-01' , '2024-03-01' , 'mupirosin kalsiyum' ,11393,'yara merhemi')
--insert into ilac values ('n-cort' ,1553 , null , 18 , '2021-01-01' , '2023-06-01' , 'triamsinolon asetonid' ,11765, 'burun spray')
--insert into ilac values ('klavon b�d' ,3496 , 14 , 24 , '2021-01-01' , '2026-03-12' , 'amoksisilin' ,25096, 'antibiyotik')
--insert into ilac values ('katarin' ,1379 , 20 , 20 , '2021-01-01' , '2024-02-19' , 'parasetamol' ,20237,'antibiyotik')
--insert into ilac values ('thyromazol' ,1659 , 100 , 15 , '2021-01-01' , '2024-01-01' , 'metimazol' ,23218,'merhem')
--insert into ilac values ('cabral' ,1347 , 24 , 16 , '2021-01-01' , '2025-01-01' , 'feniramidol HCI' ,25086,'a�r� kesici')
--insert into ilac values ('favira' ,2653 , 40 , 14 , '2021-01-01' , '2024-03-27' , 'favipiravir' ,17149,'corona ilac�')
--insert into ilac values ('euthyrox' ,1983 , 50 , 9 , '2021-01-01' , '2025-01-18' , 'levotiroksin' ,20147,'troid ilac�')
--insert into ilac values ('betablok' ,2183 , 20 , 15 , '2021-01-01' , '2024-01-01' , 'metoprolol s�ksinat' ,2171,'troid ilac�')
--insert into ilac values ('dideral' ,3564 , 50 , 17 , '2021-01-01' , '2024-01-01' , 'propranolol HCI' ,15451,'antibiyotik')
--insert into ilac values ('dexofen' ,6456 , 20 , 15 , '2021-01-01' , '2027-01-01' , 'deksketoprofen trometamol' ,21580,'troid ilac�')
--insert into ilac values ('minoxil' ,1751 , null , 15 , '2021-01-01' , '2024-01-01' , 'minoksidil' ,23249,'�ks�r�k ilac�')
--insert into ilac values ('kreval' ,1997 , null , 20 , '2021-01-01' , '2025-01-18' , 'butamirat sitrat' ,11393,'�ks�r�k ilac�')
--insert into ilac values ('iburamin' ,2000 , 24 , 6 , '2021-01-01' , '2022-02-19' , 'klorfeniramin meleat' ,11393,'soguk alg�nl���')
--insert into ilac values ('d�ffumal' ,1479 , 30 , 56 , '2021-01-01' , '2024-01-01' , 'teofilin anhidrat' ,23249,'so�uk alg�nl���')
--insert into ilac values ('kofuril' ,1546 , 20 , 45 , '2021-01-01' , '2026-01-01' , 'n�furoksaz�d' ,15451,'cilt lekeleri')
--insert into ilac values ('onadron' ,4563 , null , 25 , '2021-01-01' , '2024-01-01' , 'dekzometazon' ,11393,'cilt lekeleri')
--insert into ilac values ('l�dodeks' ,5643 , null , 16 , '2021-01-01' , '2023-01-01' , 'l�dokan�n hidroklor�r' ,25086,'merhem')
--insert into ilac values ('izotonik' ,1234 , null , 10 , '2021-01-01' , '2024-01-01' , 'sodyum klor�r' ,25096,'spray')
--insert into ilac values ('noacne' ,2001 , null , 90 , '2021-01-01' , '2026-03-03' , 'mupirosin kalsiyum' ,11393,'sivilce merhemi')
--insert into ilac values ('ALOMIDE' ,02365 , null , 80 , '2021-01-01' , '2026-05-09' , 'steril ' ,11393,'g�z damlas�')
--insert into ilac values ('EMAD�NE' ,85974 , null , 50 , '2021-01-01' , '2026-03-03' , ' emedastin' ,25086,' g�z damlas�')
--insert into ilac values ('TOBREX' ,85479 , null , 90 , '2022-01-01' , '2024-03-06' , ' tobramisin' ,17149,' merhem')
--insert into ilac values ('FLAREX' ,852364 , null , 87 , '2022-02-01' , '2025-07-03' , ' florometalon asetat' ,11393,'kulak damlas� ')
--insert into ilac values ('NEVANAC' ,36542 , 20 , 14 , '2021-01-08' , '2026-03-03' , ' nepafenak' ,11393,' antibiyotik')
--insert into ilac values ('PATANOL' ,71349 , 30 , 52 , '2021-01-01' , '2026-03-03' , ' olopatadin hidroklor�r' ,11393,' solunum yolu')
--insert into ilac values ('VIGAMOX' ,65498 , 30 , 15 , '2021-01-01' , '2027-03-03' , 'c�zelti' ,11393,' solunum yolu')
--insert into ilac values ('DEXA-S�NE' ,63000 , null , 36 , '2021-01-01' , '2026-03-03' , '   sodyum fosfat' ,25096,'  a�r� kesici')
--insert into ilac values ('KUZELVA' ,87312 , null , 17 , '2021-01-01' , '2026-03-03' ,  null ,11393,' enjekt�r')
--insert into ilac values ('LUCENTIS' ,265490 , null , 20 , '2021-01-01' , '2026-03-03' , null ,20237,'enjekt�r')
--insert into ilac values ('CILOXAN' ,5755 , null , 52 , '2021-01-01' , '2026-03-03' , '  siprofloksasin hidroklor�r' ,11393,'merhem')
--insert into ilac values ('DUOTRAV' ,87890 , null , 23 , '2021-01-01' , '2026-03-03' , '  travoprost' ,11393,'g�z damlas�')


--insert into depo values(500,'DUOTRAV' ,87890 ,'2021-02-09')
--insert into depo values(500,'CILOXAN' ,5755 ,'2020-01-01')
--insert into depo values(85,'LUCENTIS' ,265490 ,'2021-11-11')
--insert into depo values(76,'KUZELVA' ,87312,'2021-12-11')
--insert into depo values(89,'DEXA-S�NE' ,63000  ,'2021-11-12')
--insert into depo values(6,'VIGAMOX' ,65498 ,'2021-01-01')
--insert into depo values(12,'PATANOL' ,71349  ,'2021-01-01')
--insert into depo values(550,'NEVANAC' ,36542 ,'2021-01-01')
--insert into depo values(500,'FLAREX' ,852364  ,'2021-01-01')
--insert into depo values(54,'TOBREX' ,85479 ,'2021-01-01')
--insert into depo values(56,'EMAD�NE' ,85974 ,'2021-01-01')
--insert into depo values(256,'ALOMIDE' ,02365 ,'2021-01-01')
--insert into depo values(100,'noacne' ,2001 ,'2021-01-01')
--insert into depo values(56,'izotonik' ,1234 ,'2021-01-01')
--insert into depo values(14,'l�dodeks' ,5643,'2021-01-01')
--insert into depo values(305,'onadron' ,4563 ,'2021-01-01')
--insert into depo values(23,'kofuril' ,1546 ,'2021-01-01')
--insert into depo values(10,'d�ffumal' ,1479 ,'2021-01-01')
--insert into depo values(985,'iburamin' ,2000 ,'2021-01-01')
--insert into depo values(852,'kreval' ,1997  ,'2021-01-01')
--insert into depo values(456,'minoxil' ,1751 ,'2021-01-01')
--insert into depo values(255,'dexofen' ,6456  ,'2021-01-01')
--insert into depo values(987,'dideral' ,3564  ,'2021-01-01')
--insert into depo values(368,'betablok' ,2183 ,'2021-01-01')
--insert into depo values(500,'euthyrox' ,1983 ,'2021-01-01')
--insert into depo values(501,'favira' ,2653 ,'2021-01-01')
--insert into depo values(259,'cabral' ,1347,'2021-01-01')
--insert into depo values(180,'thyromazol' ,1659,'2022-02-01')
--insert into depo values(758,'katarin' ,1379,'2020-02-05')
--insert into depo values(652,'klavon b�d' ,3496,'2020-01-01')
--insert into depo values(700,'n-cort' ,1553,'2021-03-01')
--insert into depo values(563,'balaban' ,2456,'2021-04-01')
--insert into depo values(258,'parol' ,2554,'2021-05-02')












--insert into eczane values (14563,'beylikd�z�/istanbul','�i�ek ezcanesi','n�bet�i')
--insert into eczane values (23579,'beylikd�z�/istanbul','toylum ezcanesi','n�bet�i')
--insert into eczane values (85476,'sultangazi/istanbul','renk ezcanesi','n�bet�i de�il')
--insert into eczane values (65321,'sultanbeyli/istanbul','emre ezcanesi','n�bet�i de�il')
--insert into eczane values (23654,'�sk�dar/istanbul','b�cek ezcanesi','n�bet�i')
--insert into eczane values (85301,'kad�k�y/istanbul','g�kku�a�� ezcanesi','n�bet�i de�il')
--insert into eczane values (38602,'maltepe/istanbul','lokman hekim ezcanesi','n�bet�i de�il')
--insert into eczane values (32098,'k���kyal�/istanbul','s�g�t ezcanesi','n�bet�i de�il')
--insert into eczane values (03269,'esenyurt/istanbul','talep ezcanesi','n�bet�i')
--insert into eczane values (59310,'beylikd�z�/istanbul','kalem ezcanesi','n�bet�i')
--insert into eczane values (09765,'beylikd�z�/istanbul','melek ezcanesi','n�bet�i de�il')
--insert into eczane values (73109,'zeytinburnu/istanbul','bebek ezcanesi','n�bet�i')
--insert into eczane values (32681,'b�y�k�ekmece/istanbul','yurt ezcanesi','n�bet�i de�il')
--insert into eczane values (54532,'k���k�ekmece/istanbul','kalp ezcanesi','n�bet�i de�il')
--insert into eczane values (89631,'avc�lr/istanbul','avc� ezcanesi','n�bet�i de�il')
--insert into eczane values (30980,'okmeydan�/istanbul','okmeydan� ezcanesi','n�bet�i')
--insert into eczane values (83215,'�i�li/istanbul','ba� hekim ezcanesi','n�bet�i de�il')
--insert into eczane values (00033,'�mraniye/istanbul','boncuk ezcanesi','n�bet�i de�il')
--insert into eczane values (00111,'be�ikta�/istanbul','paspas ezcanesi','n�bet�i de�il')
--insert into eczane values (11100,'bebek/istanbul','uyan�� ezcanesi','n�bet�i')
--insert into eczane values (22300,'ni�anta��/istanbul','delikanl� ezcanesi','n�bet�i')


--insert into hasta values ('emine say�n','18950662545',45896,'1971-02-05','kad�n')
--insert into hasta values ('banu kaya','14785236985',02356,'1975-02-12','kad�n')
--insert into hasta values ('salim y�ld�r�m','14785213467',55555,'1985-02-05','erkek')
--insert into hasta values ('onurhan kayra','65897302146',66666,'1990-02-05','erkek')
--insert into hasta values ('ramazan kayalar','20365987412',3300,'2000-12-15','erkek')
--insert into hasta values ('ege murat','56210398574',66699,'2010-02-28','erkek')
--insert into hasta values ('mahinev karaduman','23569878451',25896,'1999-11-05','kad�n')
--insert into hasta values ('g�l�ehre karaisao�lu','12589746325',14785,'2000-02-19','kad�n')
--insert into hasta values ('lavin ala�an','52698746325',85479,'2001-03-03','kad�n')
--insert into hasta values ('efken karaduman','23695417854',987456,'1995-02-19','erkek')
--insert into hasta values ('karan �ak�l','14789658225',546987,'1994-02-13','erkek')
--insert into hasta values ('asi merve','14785245457',478962,'1999-12-05','kad�n')
--insert into hasta values ('kartal ala�an','85479300014',54630,'1996-10-05','erkek')
--insert into hasta values ('ard�l haznedar','12587963333',01258,'1993-09-05','erkek')
--insert into hasta values ('evren kuran','23145692030',458700,'1996-05-02','erkek')
--insert into hasta values ('ceyhun �zt�rk','15897098765',033200,'1995-05-17','erkek')
--insert into hasta values ('asr�n karavaris','12587411470',22200,'1986-09-09','erkek')
--insert into hasta values ('esila karavaris','87965231408',854796,'1988-02-05','kad�n')
--insert into hasta values ('alesya kara','87412036985',23013,'2003-02-05','kad�n')
--insert into hasta values ('zeynep nisa','25896300112',02145,'2006-02-12','kad�n')
--insert into hasta values ('ahmet efe','12589647320',74158,'2010-11-14','erkek')
--insert into hasta values ('hamza ceylan','14785300120',56321,'2009-05-15','erkek')
--insert into hasta values ('fatih �st�n','20369142130',01236,'2006-12-05','erkek')
--insert into hasta values ('irem bayraktar','20147896320',145620,'2009-10-11','kad�n')
--insert into hasta values ('meryem derin','87456301203',202020,'2010-02-05','kad�n')
--insert into hasta values ('�mer kara�ay','10101010101',125746,'2005-02-05','erkek')
--insert into hasta values ('mustafa sa��r ','14784654821',021120,'2000-02-05','erkek')
--insert into hasta values ('medine �ak�r ','85630142520',12351,'1996-02-05','kad�n')
--insert into hasta values ('esme al','02354632140',01256,'2000-02-05','kad�n')



--insert into re�ete values (1111,2554,'18950662545',45896,'2020-02-05')
--insert into re�ete values (2222,1553,'14785236985',02356,'2021-11-12')
--insert into re�ete values (3333,1983,'14785213467',55555,'2021-11-15')
--insert into re�ete values (4444,1379,'65897302146',66666,'2021-09-05')
--insert into re�ete values (5555,852364,'20365987412',3300,'2022-01-01')
--insert into re�ete values (6666,852364,'56210398574',66699,'2022-02-28')
--insert into re�ete values (7777,9997,'23569878451',25896,'2021-11-05')
--insert into re�ete values (8888,1347,'12589746325',14785,'2021-12-19')
--insert into re�ete values (9999,4563,'52698746325',85479,'2021-11-03')
--insert into re�ete values (1010,71349,'23695417854',987456,'2022-02-19')
--insert into re�ete values (1212,1234,'14789658225',546987,'2022-02-13')
--insert into re�ete values (1313,45498,'14785245457',478962,'2021-12-05')
--insert into re�ete values (1414,45498,'85479300014',54630,'2021-10-05')
--insert into re�ete values (1515,2653,'12587963333',01258,'2021-09-05')
--insert into re�ete values (1616,2653,'23145692030',458700,'2022-05-02')
--insert into re�ete values (1717,1659,'15897098765',033200,'2022-05-17')
--insert into re�ete values (1818,1347,'12587411470',22200,'2021-09-09')
--insert into re�ete values (1919,1553,'87965231408',854796,'2022-02-05')
--insert into re�ete values (2020,2000,'87412036985',23013,'2022-02-05')
--insert into re�ete values (2121,852364,'25896300112',02145,'2022-02-12')
--insert into re�ete values (2323,852364,'12589647320',74158,'2022-01-14')
--insert into re�ete values (2424,852364,'14785300120',56321,'2022-01-15')
--insert into re�ete values (2525,1234,'20369142130',01236,'2021-12-05')
--insert into re�ete values (2626,852364,'20147896320',145620,'2022-01-11')
--insert into re�ete values (2727,852364,'87456301203',202020,'2022-02-05')
--insert into re�ete values (2828,1983,'10101010101',125746,'2022-02-05')
--insert into re�ete values (2929,1379,'14784654821',021120,'2022-02-03')
--insert into re�ete values (3030,852364,'85630142520',12351,'2022-02-01')
--insert into re�ete values (3131,6466,'02354632140',01256,'2022-02-11')




--insert into satilan_ila�lar values (1111,2554,2,14563,'2020-02-05')
--insert into satilan_ila�lar values (2222,1553,1,23579,'2021-11-12')
--insert into satilan_ila�lar values (3333,1983,3,85476,'2021-11-15')
--insert into satilan_ila�lar values (4444,1379,2,23654,'2021-09-05')
--insert into satilan_ila�lar values (5555,852364,1,38602,'2022-01-01')
--insert into satilan_ila�lar values (6666,852364,1,32098,'2022-02-28')
--insert into satilan_ila�lar values (7777,2554,1,89631,'2021-11-05')
--insert into satilan_ila�lar values (8888,1347,2,00033,'2021-12-19')
--insert into satilan_ila�lar values (9999,4563,3,83215,'2021-11-03')
--insert into satilan_ila�lar values (1010,71349,3,03269,'2022-02-19')
--insert into satilan_ila�lar values (1212,1234,2,38602,'2022-02-13')
--insert into satilan_ila�lar values (1313,4563,2,73109,'2021-12-05')
--insert into satilan_ila�lar values (1414,2000,3,23654,'2021-10-05')
--insert into satilan_ila�lar values (1515,2653,2,11100,'2021-09-05')
--insert into satilan_ila�lar values (1616,2653,1,00111,'2022-05-02')
--insert into satilan_ila�lar values (1717,1659,1,09765,'2022-05-17')
--insert into satilan_ila�lar values (1818,1347,2,14563,'2021-09-09')
--insert into satilan_ila�lar values (1919,1553,2,22300,'2022-02-05')
--insert into satilan_ila�lar values (2020,2000,2,30980,'2022-02-05')
--insert into satilan_ila�lar values (2121,852364,1,83215,'2022-02-12')
--insert into satilan_ila�lar values (2323,852364,1,38602,'2022-01-14')
--insert into satilan_ila�lar values (2424,852364,1,73109,'2022-01-15')
--insert into satilan_ila�lar values (2525,1234,3,83215,'2021-12-05')
--insert into satilan_ila�lar values (2626,852364,3,32681,'2022-01-11')
--insert into satilan_ila�lar values (2727,852364,1,23579,'2022-02-05')
--insert into satilan_ila�lar values (2828,1983,1,32098,'2022-02-05')
--insert into satilan_ila�lar values (2929,1379,1,00033,'2022-02-03')
--insert into satilan_ila�lar values (3030,852364,1,09765,'2022-02-01')
--insert into satilan_ila�lar values (3131,2554,1,85301,'2022-02-11')




--select *from ilac
--select * from f�rma
--select * from eczane
--select *from re�ete
--select *from satilan_ila�lar
--select *from hasta





 
