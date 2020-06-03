create index index_for_seniority on lawyer(seniority);


select * from lawyer
where lawyer.seniority<5;

create index index_for_cost on lawyer(cost);

select lid from claims natural JOIN building_permit 
where lid in(
          select distinct lid from lawyer
          where lawyer.cost>20000) ;

create index index_for_claim_status on claims(claim_status);
create index index_for_permit_status on building_permit(permit_status);

select * from claims natural JOIN building_permit
where claims.claim_status = 'close' and building_permit.permit_status = 'close' ;
