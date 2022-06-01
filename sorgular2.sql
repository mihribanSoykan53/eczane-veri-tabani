use DBeczane
----ilac tablosuda ki ila�lar�n ideleri sat�lan ila� id lerine e�it olan ila�lar�n sat�lan adedi
--select ilac_ad ,kutuAdedi from ilac inner join satilan_ila�lar
--on
-- ilac.id=satilan_ila�lar.ila�_id



--hangi cinsiyet hangi tarihlerde re�ete alm��
--select  cinsiyet ,tarih from hasta inner join (re�ete inner join satilan_ila�lar on  re�ete.re�ete_id=satilan_ila�lar.re�ete_id)
--on 
--re�ete.hasta_tc=hasta.tc




----hangi cinsiyet hangi ila�lar� kullan�yor
--select cinsiyet, kullan�lacak_alan from hasta inner join (ilac inner join re�ete on ilac.id=re�ete.ila�Id)
--on
--re�ete.hasta_tc=hasta.tc




----hangi tarihte hangi ila�lar sat�lm��
--select ilac_ad ,sati�_trh from ilac inner join satilan_ila�lar
--on 
--satilan_ila�lar.ila�_id=ilac.id



----hangi ila� hangi eczanede sat�ld� 
--select ilac_ad , eczane_isim from ilac inner join (satilan_ila�lar inner join eczane on eczane.vergi_no = satilan_ila�lar.eczane_no)
--on 
--ilac.id=satilan_ila�lar.ila�_id



----hangi firma hangi ilac� �retmi� 
--select ad ,ilac_ad from f�rma inner join ilac
--on 
--ilac.�retici_firmaID=f�rma.fvergi_no



---- hangi ezanede hangi firman�n �retti�i ila� sat�l�yor
--select ad ,ilac_ad ,eczane_isim from f�rma inner join (ilac inner join (eczane inner join satilan_ila�lar on eczane.vergi_no=satilan_ila�lar.eczane_no)
--on
--ilac.id=satilan_ila�lar.ila�_id)
--on
--f�rma.fvergi_no=ilac.�retici_firmaID


---- hangi ila�lar� hangi semtler  hangi say�da  kullan�l�yor 
--select kullan�lacak_alan ,adress ,count (adress) as 'kullan�m say�s�' from ilac inner join (eczane inner join satilan_ila�lar on eczane.vergi_no=satilan_ila�lar.eczane_no)
--on 
--ilac.id=satilan_ila�lar.ila�_id group by adress ,kullan�lacak_alan order by adress



----hangi hasta hangi ilac� alm��
--select isim , ilac_ad from hasta inner join (ilac inner join re�ete  on ilac.id=re�ete.ila�Id)
--on 
--hasta.tc=re�ete.hasta_tc



----hangi hasta hangi ilac� ne i�in kulanm�� 
--select isim ,kullan�lacak_alan, ilac_ad from hasta inner join (ilac inner join re�ete  on ilac.id=re�ete.ila�Id)
--on
--hasta.tc=re�ete.hasta_tc


----hangi firma  ne kadar ila� �retmi� 
--select �retici_firmaID ,count (ilac_ad) as '�retilen ilac say�s�' from ilac group by �retici_firmaID


---- firmalar�n �retti�i  ilaa�lardan kazand��� �cret
--select �retici_firmaID ,sum(fiyat ) as 'toplam Kazan�lan fiyat' from ilac group by �retici_firmaID



----firmalar�n �retti�i ila�lar�n max ve min fiyat� 
--select �retici_firmaID ,min(fiyat) as  'min fiyat', max (fiyat ) as'max fiyat'  from ilac group by �retici_firmaID 


---- fiyat� 20 liradan b�y�k olan ila�lar� getiriyor
--select ilac_ad ,fiyat  as ' fiyat' from ilac where fiyat>=20




----depoda ki ila� miktar� 
--select ila�Ad ,sum(miktar) as 'depoda ki miktar' from depo group by ila�Ad


---- belirtilen tarihler aras�nda sat�lan ila�lar�n id numaras� 
--select sati�_trh  ,ila�_id from satilan_ila�lar  where sati�_trh between '2021-11-01 'and '2022-04-21' order by sati�_trh



---- belirtilen isimde ki ila�lar� alan hastalar�n doum tarihi
--select dogum_trh from  hasta   inner join (re�ete inner join ilac on ilac.id=re�ete.ila�Id)
--on 
--re�ete.hasta_tc=hasta.tc
-- where ilac_ad='FLAREX'



----hangi firman�n �retti�i ila� depoya hangi tarihte kaydedilmi� 
--select kayit_thr ,ilac_ad ,ad from depo inner join (ilac inner join f�rma  on  ilac.�retici_firmaID=f�rma.fvergi_no)
--on 
--depo.id=ilac.id


----hangi ila� ne zaman sat�lm��
--select ilac_ad , kullan�lacak_alan, eczane_t�r� from ilac inner join (eczane inner join satilan_ila�lar on eczane.vergi_no=satilan_ila�lar.eczane_no)
--on 
--ilac.id=satilan_ila�lar.ila�_id


 --  --verilen firman�n �retti�i ila�lar�n etkin maddesi
 --select ad ,ilac_ad ,etkin_madde from  f�rma inner join ilac
 --on 
 --ilac.�retici_firmaID=f�rma.fvergi_no
 --where ad='abdibrahim'

 
 ----hangi ila� nerede kime sat�lm�� 
 --select isim, kullan�lacak_alan , adress  from hasta inner join (eczane  inner join(ilac inner join (satilan_ila�lar inner join re�ete
 --on re�ete.re�ete_id=satilan_ila�lar.re�ete_id)
 --on ilac.id=satilan_ila�lar.ila�_id)
 --on eczane.vergi_no=satilan_ila�lar.eczane_no)
 --on re�ete.hasta_tc=hasta.tc



----kullan�lan ila�lara g�re cinsiyet say�s�

-- select cinsiyet, kullan�lacak_alan ,count(cinsiyet) as 'kullanan ki�i say�s�' from hasta inner join (ilac inner join re�ete on ilac.id=re�ete.ila�Id)
--on
--re�ete.hasta_tc=hasta.tc group by cinsiyet ,kullan�lacak_alan order by cinsiyet



-----kulak damlas�n� kullanan erkek ve kad�nlar�n say�s�
--select cinsiyet, kullan�lacak_alan ,count(cinsiyet) as 'kullanan ki�i say�s�' from hasta inner join (ilac inner join re�ete on ilac.id=re�ete.ila�Id)
--on
--re�ete.hasta_tc=hasta.tc
--where kullan�lacak_alan ='kulak damlas�'
--group by cinsiyet ,kullan�lacak_alan order by cinsiyet




