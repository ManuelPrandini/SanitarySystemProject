-- CodaProntoSoccorso [ent27]
create table `codaprontosoccorso` (
   `oid`  integer  not null,
  primary key (`oid`)
);


-- Hospital_CodaProntoSoccorso [rel10]
alter table `codaprontosoccorso`  add column  `hospital_id_hospital`  integer;
alter table `codaprontosoccorso`   add index fk_codaprontosoccorso_hospital (`hospital_id_hospital`), add constraint fk_codaprontosoccorso_hospital foreign key (`hospital_id_hospital`) references `hospital` (`id_hospital`);


-- Emergency_operation_CodaProntoSoccorso [rel12]
alter table `codaprontosoccorso`  add column  `emergency_operation_oid`  integer;
alter table `codaprontosoccorso`   add index fk_codaprontosoccorso_emergenc (`emergency_operation_oid`), add constraint fk_codaprontosoccorso_emergenc foreign key (`emergency_operation_oid`) references `emergency_operation` (`action_oid`);


