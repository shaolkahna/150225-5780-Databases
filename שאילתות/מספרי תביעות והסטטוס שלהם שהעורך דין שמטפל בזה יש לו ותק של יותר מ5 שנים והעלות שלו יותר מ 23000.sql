prompt Importing table claims...
set feedback off
set define off
insert into claims (CLAIM_STATUS, COUNT(CLAIM_STATUS))
values ('before', 386);

insert into claims (CLAIM_STATUS, COUNT(CLAIM_STATUS))
values ('at court', 414);

insert into claims (CLAIM_STATUS, COUNT(CLAIM_STATUS))
values ('close', 428);

insert into claims (CLAIM_STATUS, COUNT(CLAIM_STATUS))
values ('appeal', 396);

prompt Done.
