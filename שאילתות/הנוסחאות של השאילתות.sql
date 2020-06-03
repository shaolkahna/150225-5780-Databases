
select name from LAWYER where seniority <30 and cost> 18000;


select * from lawyer where cost in (select max(cost) from lawyer);

select lid from BUILDING_PERMIT where permit_status != 'Ended';

select cid,lid from CLAIMS where claim_status = 'at court';

select name, cell_number from lawyer
where lid in(
          select distinct lid from building_permit natural JOIN claims
          where building_permit.permit_status = 'close' 
          and building_permit.aid = 333 ) ;

select areaname, aid from area
where aid in(
          select distinct aid from building_permit 
             where building_permit.permit_status = 'before'
             and building_permit.lid >100000899) ; 

   
select areaname, aid from area
where aid in(
          select aid from building_permit 
              where building_permit.lid in (
                    select lid from lawyer
                    where lawyer.seniority<2
                    )
                    and building_permit.permit_status = 'close'
               ) ;  

SELECT COUNT(claim_status), claim_status FROM claims
where lid in (select lid from lawyer
                    where lawyer.seniority >5
                    and lawyer.cost>23000  ;(  
GROUP BY claim_status;

