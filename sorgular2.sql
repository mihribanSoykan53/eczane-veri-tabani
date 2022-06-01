use DBeczane
----ilac tablosuda ki ilaçlarýn ideleri satýlan ilaç id lerine eþit olan ilaçlarýn satýlan adedi
--select ilac_ad ,kutuAdedi from ilac inner join satilan_ilaçlar
--on
-- ilac.id=satilan_ilaçlar.ilaç_id



--hangi cinsiyet hangi tarihlerde reçete almýþ
--select  cinsiyet ,tarih from hasta inner join (reçete inner join satilan_ilaçlar on  reçete.reçete_id=satilan_ilaçlar.reçete_id)
--on 
--reçete.hasta_tc=hasta.tc




----hangi cinsiyet hangi ilaçlarý kullanýyor
--select cinsiyet, kullanýlacak_alan from hasta inner join (ilac inner join reçete on ilac.id=reçete.ilaçId)
--on
--reçete.hasta_tc=hasta.tc




----hangi tarihte hangi ilaçlar satýlmýþ
--select ilac_ad ,satiþ_trh from ilac inner join satilan_ilaçlar
--on 
--satilan_ilaçlar.ilaç_id=ilac.id



----hangi ilaç hangi eczanede satýldý 
--select ilac_ad , eczane_isim from ilac inner join (satilan_ilaçlar inner join eczane on eczane.vergi_no = satilan_ilaçlar.eczane_no)
--on 
--ilac.id=satilan_ilaçlar.ilaç_id



----hangi firma hangi ilacý üretmiþ 
--select ad ,ilac_ad from fýrma inner join ilac
--on 
--ilac.üretici_firmaID=fýrma.fvergi_no



---- hangi ezanede hangi firmanýn ürettiði ilaç satýlýyor
--select ad ,ilac_ad ,eczane_isim from fýrma inner join (ilac inner join (eczane inner join satilan_ilaçlar on eczane.vergi_no=satilan_ilaçlar.eczane_no)
--on
--ilac.id=satilan_ilaçlar.ilaç_id)
--on
--fýrma.fvergi_no=ilac.üretici_firmaID


---- hangi ilaçlarý hangi semtler  hangi sayýda  kullanýlýyor 
--select kullanýlacak_alan ,adress ,count (adress) as 'kullaným sayýsý' from ilac inner join (eczane inner join satilan_ilaçlar on eczane.vergi_no=satilan_ilaçlar.eczane_no)
--on 
--ilac.id=satilan_ilaçlar.ilaç_id group by adress ,kullanýlacak_alan order by adress



----hangi hasta hangi ilacý almýþ
--select isim , ilac_ad from hasta inner join (ilac inner join reçete  on ilac.id=reçete.ilaçId)
--on 
--hasta.tc=reçete.hasta_tc



----hangi hasta hangi ilacý ne için kulanmýþ 
--select isim ,kullanýlacak_alan, ilac_ad from hasta inner join (ilac inner join reçete  on ilac.id=reçete.ilaçId)
--on
--hasta.tc=reçete.hasta_tc


----hangi firma  ne kadar ilaç üretmiþ 
--select üretici_firmaID ,count (ilac_ad) as 'üretilen ilac sayýsý' from ilac group by üretici_firmaID


---- firmalarýn ürettiði  ilaaçlardan kazandýðý ücret
--select üretici_firmaID ,sum(fiyat ) as 'toplam Kazanýlan fiyat' from ilac group by üretici_firmaID



----firmalarýn ürettiði ilaçlarýn max ve min fiyatý 
--select üretici_firmaID ,min(fiyat) as  'min fiyat', max (fiyat ) as'max fiyat'  from ilac group by üretici_firmaID 


---- fiyatý 20 liradan büyük olan ilaçlarý getiriyor
--select ilac_ad ,fiyat  as ' fiyat' from ilac where fiyat>=20




----depoda ki ilaç miktarý 
--select ilaçAd ,sum(miktar) as 'depoda ki miktar' from depo group by ilaçAd


---- belirtilen tarihler arasýnda satýlan ilaçlarýn id numarasý 
--select satiþ_trh  ,ilaç_id from satilan_ilaçlar  where satiþ_trh between '2021-11-01 'and '2022-04-21' order by satiþ_trh



---- belirtilen isimde ki ilaçlarý alan hastalarýn doum tarihi
--select dogum_trh from  hasta   inner join (reçete inner join ilac on ilac.id=reçete.ilaçId)
--on 
--reçete.hasta_tc=hasta.tc
-- where ilac_ad='FLAREX'



----hangi firmanýn ürettiði ilaç depoya hangi tarihte kaydedilmiþ 
--select kayit_thr ,ilac_ad ,ad from depo inner join (ilac inner join fýrma  on  ilac.üretici_firmaID=fýrma.fvergi_no)
--on 
--depo.id=ilac.id


----hangi ilaç ne zaman satýlmýþ
--select ilac_ad , kullanýlacak_alan, eczane_türü from ilac inner join (eczane inner join satilan_ilaçlar on eczane.vergi_no=satilan_ilaçlar.eczane_no)
--on 
--ilac.id=satilan_ilaçlar.ilaç_id


 --  --verilen firmanýn ürettiði ilaçlarýn etkin maddesi
 --select ad ,ilac_ad ,etkin_madde from  fýrma inner join ilac
 --on 
 --ilac.üretici_firmaID=fýrma.fvergi_no
 --where ad='abdibrahim'

 
 ----hangi ilaç nerede kime satýlmýþ 
 --select isim, kullanýlacak_alan , adress  from hasta inner join (eczane  inner join(ilac inner join (satilan_ilaçlar inner join reçete
 --on reçete.reçete_id=satilan_ilaçlar.reçete_id)
 --on ilac.id=satilan_ilaçlar.ilaç_id)
 --on eczane.vergi_no=satilan_ilaçlar.eczane_no)
 --on reçete.hasta_tc=hasta.tc



----kullanýlan ilaçlara göre cinsiyet sayýsý

-- select cinsiyet, kullanýlacak_alan ,count(cinsiyet) as 'kullanan kiþi sayýsý' from hasta inner join (ilac inner join reçete on ilac.id=reçete.ilaçId)
--on
--reçete.hasta_tc=hasta.tc group by cinsiyet ,kullanýlacak_alan order by cinsiyet



-----kulak damlasýný kullanan erkek ve kadýnlarýn sayýsý
--select cinsiyet, kullanýlacak_alan ,count(cinsiyet) as 'kullanan kiþi sayýsý' from hasta inner join (ilac inner join reçete on ilac.id=reçete.ilaçId)
--on
--reçete.hasta_tc=hasta.tc
--where kullanýlacak_alan ='kulak damlasý'
--group by cinsiyet ,kullanýlacak_alan order by cinsiyet




