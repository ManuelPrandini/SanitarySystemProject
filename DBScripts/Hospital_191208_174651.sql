-- QueueProntoSoccorso [ent33]
create table `queueprontosoccorso` (
   `oid`  integer  not null,
  primary key (`oid`)
);


-- Emergency_operation_QueueProntoSoccorso [rel29]
alter table `emergency_operation`  add column  `queueprontosoccorso_oid`  integer;
alter table `emergency_operation`   add index fk_emergency_operation_queuepr (`queueprontosoccorso_oid`), add constraint fk_emergency_operation_queuepr foreign key (`queueprontosoccorso_oid`) references `queueprontosoccorso` (`oid`);


-- QueueProntoSoccorso_Hospital [rel39]
alter table `hospital`  add column  `queueprontosoccorso_oid`  integer;
alter table `hospital`   add index fk_hospital_queueprontosoccors (`queueprontosoccorso_oid`), add constraint fk_hospital_queueprontosoccors foreign key (`queueprontosoccorso_oid`) references `queueprontosoccorso` (`oid`);


