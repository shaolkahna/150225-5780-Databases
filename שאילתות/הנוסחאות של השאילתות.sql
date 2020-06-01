שאילתא כל עורך דין עם ותק פחות מ30 ועלות יותר 18000

select name from LAWYER where seniority <30 and cost> 18000;


עורך דין שלוקח הכי הרבה
select * from lawyer where cost in (select max(cost) from lawyer);

מספר אישור בניה של כל האישורי בניה שלא הסתיימו
select lid from BUILDING_PERMIT where permit_status != 'Ended';

cid ן lid איפה שהסטטוס שווה "נמצא בבית משפט  
select cid,lid from CLAIMS where claim_status = 'at court';

נותן את השמות והמספרי פלאפון של עורכי דין שיש להם תביעות או אישורי בניה שלא סגור ומאזור 333
select name, cell_number from lawyer
where lid in(
          select distinct lid from building_permit natural JOIN claims
          where building_permit.permit_status = 'close' 
          and building_permit.aid = 333 ) ;

נותן את השמות והמספרי ערים של האזורים שיש להם  אישורי בניה שלא התחיל  וגם שהעורך המטפל תעודת זהות שלו גדול מ 1000000899
select areaname, aid from area
where aid in(
          select distinct aid from building_permit 
             where building_permit.permit_status = 'before'
             and building_permit.lid >100000899) ; 

   
  כל שמות ומספרי האזורים שיש בהם אישורי בניה שהעורך דין המטפל בזה יש לו ותק פחות מ2 שנים וגם הסטטוס של האישור זה נסגר
select areaname, aid from area
where aid in(
          select aid from building_permit 
              where building_permit.lid in (
                    select lid from lawyer
                    where lawyer.seniority<2
                    )
                    and building_permit.permit_status = 'close'
               ) ;  

 נותן את כל מספר יהתביעה והסטטוס שלו שבהם לעורך שמטפל בזה יש ותק יותר מ5 שנה וגם העלות שלו יותר מ23000
select cid, claim_status from claims
where lid in(
          select lid from lawyer
                    where lawyer.seniority >5
                    and lawyer.cost>23000 ) ; 




 