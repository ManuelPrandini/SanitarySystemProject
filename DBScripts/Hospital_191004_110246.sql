-- Emergency_Room [ent16]
create table `emergency_room` (
   `oid`  integer  not null,
  primary key (`oid`)
);


-- Emergency_operation [ent17]
create table `emergency_operation` (
   `action_oid`  integer  not null,
  primary key (`action_oid`)
);


-- Emergency_code [ent18]
create table `emergency_code` (
   `code`  varchar(255)  not null,
  primary key (`code`)
);


-- Hospital_Emergency_Room [rel26]
alter table `emergency_room`  add column  `hospital_id_hospital`  integer;
alter table `emergency_room`   add index fk_emergency_room_hospital (`hospital_id_hospital`), add constraint fk_emergency_room_hospital foreign key (`hospital_id_hospital`) references `hospital` (`id_hospital`);


-- Assignement_Drug_Prescription [rel33]
alter table `with_prescription`  add column  `drug_prescription_oid`  integer;
alter table `with_prescription`   add index fk_with_prescription_drug_pr_2 (`drug_prescription_oid`), add constraint fk_with_prescription_drug_pr_2 foreign key (`drug_prescription_oid`) references `drug_prescription` (`oid`);


-- Emergency_operation_Emergency_code [rel34]
alter table `emergency_operation`  add column  `emergency_code_code`  varchar(255);
alter table `emergency_operation`   add index fk_emergency_operation_emergen (`emergency_code_code`), add constraint fk_emergency_operation_emergen foreign key (`emergency_code_code`) references `emergency_code` (`code`);


-- Emergency_operation_Emergency_Room [rel35]
alter table `emergency_operation`  add column  `emergency_room_oid`  integer;
alter table `emergency_operation`   add index fk_emergency_operation_emerg_2 (`emergency_room_oid`), add constraint fk_emergency_operation_emerg_2 foreign key (`emergency_room_oid`) references `emergency_room` (`oid`);


-- GEN FK: Emergency_operation --> Action
alter table `emergency_operation`   add index fk_emergency_operation_action (`action_oid`), add constraint fk_emergency_operation_action foreign key (`action_oid`) references `action` (`oid`);


