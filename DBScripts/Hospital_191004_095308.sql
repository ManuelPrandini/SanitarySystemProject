-- Without_Prescription [ent15]
create table `without_prescription` (
   `assignement_oid`  integer  not null,
  primary key (`assignement_oid`)
);


-- With_Prescription [ent7]
create table `with_prescription` (
   `assignement_oid`  integer  not null,
  primary key (`assignement_oid`)
);


-- Patient_Without_Prescription [rel19]
alter table `without_prescription`  add column  `patient_cf`  varchar(255);
alter table `without_prescription`   add index fk_without_prescription_patien (`patient_cf`), add constraint fk_without_prescription_patien foreign key (`patient_cf`) references `patient` (`user_cf`);


-- Drug_Without_Prescription [rel25]
alter table `without_prescription`  add column  `drug_id`  integer;
alter table `without_prescription`   add index fk_without_prescription_drug (`drug_id`), add constraint fk_without_prescription_drug foreign key (`drug_id`) references `drug` (`id`);


-- GEN FK: Without_Prescription --> Assignement
alter table `without_prescription`   add index fk_without_prescription_assign (`assignement_oid`), add constraint fk_without_prescription_assign foreign key (`assignement_oid`) references `assignement` (`oid`);


-- GEN FK: With_Prescription --> Assignement
alter table `with_prescription`   add index fk_with_prescription_assigneme (`assignement_oid`), add constraint fk_with_prescription_assigneme foreign key (`assignement_oid`) references `assignement` (`oid`);


