-- Group [Group]
create table `group` (
   `oid`  integer  not null,
   `groupname`  varchar(255),
  primary key (`oid`)
);


-- Module [Module]
create table `module` (
   `oid`  integer  not null,
   `moduleid`  varchar(255),
   `modulename`  varchar(255),
  primary key (`oid`)
);


-- User [User]
create table `user` (
   `cf`  integer  not null,
   `username`  varchar(255),
   `password`  varchar(255),
   `email`  varchar(255),
   `name`  varchar(255),
   `surname`  varchar(255),
   `birthday`  date,
  primary key (`cf`)
);


-- Pharmacist [ent1]
create table `pharmacist` (
   `user_cf`  integer  not null,
   `pharmacist_code`  varchar(255),
  primary key (`user_cf`)
);


-- Drug [ent2]
create table `drug` (
   `id`  integer  not null,
   `isstandard`  bit,
   `name`  varchar(255),
  primary key (`id`)
);


-- Visit [ent3]
create table `visit` (
   `idvisita`  integer  not null,
   `date`  datetime,
  primary key (`idvisita`)
);


-- treatment [ent5]
create table `treatment` (
   `idtreatment`  integer  not null,
   `enddate`  date,
   `startdate`  date,
  primary key (`idtreatment`)
);


-- Patient [ent6]
create table `patient` (
   `user_cf`  integer  not null,
   `weight`  integer,
   `height`  integer,
  primary key (`user_cf`)
);


-- ClinicalOperation [ent7]
create table `clinicaloperation` (
   `idclinicaloperation`  integer  not null,
   `date`  datetime,
  primary key (`idclinicaloperation`)
);


-- Medical_specialization [ent8]
create table `medical_specialization` (
   `namespecialization`  varchar(255)  not null,
  primary key (`namespecialization`)
);


-- Doctor [ent9]
create table `doctor` (
   `user_cf`  integer  not null,
   `doctor_code`  varchar(255),
  primary key (`user_cf`)
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table `group`  add column  `module_oid`  integer;
alter table `group`   add index fk_group_module (`module_oid`), add constraint fk_group_module foreign key (`module_oid`) references `module` (`oid`);


-- Group_Module [Group2Module_Module2Group]
create table `group_module` (
   `group_oid`  integer not null,
   `module_oid`  integer not null,
  primary key (`group_oid`, `module_oid`)
);
alter table `group_module`   add index fk_group_module_group (`group_oid`), add constraint fk_group_module_group foreign key (`group_oid`) references `group` (`oid`);
alter table `group_module`   add index fk_group_module_module (`module_oid`), add constraint fk_group_module_module foreign key (`module_oid`) references `module` (`oid`);


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table `user`  add column  `group_oid`  integer;
alter table `user`   add index fk_user_group (`group_oid`), add constraint fk_user_group foreign key (`group_oid`) references `group` (`oid`);


-- User_Group [User2Group_Group2User]
create table `user_group` (
   `user_cf`  integer not null,
   `group_oid`  integer not null,
  primary key (`user_cf`, `group_oid`)
);
alter table `user_group`   add index fk_user_group_user (`user_cf`), add constraint fk_user_group_user foreign key (`user_cf`) references `user` (`cf`);
alter table `user_group`   add index fk_user_group_group (`group_oid`), add constraint fk_user_group_group foreign key (`group_oid`) references `group` (`oid`);


-- Patient_Visit [rel11]
alter table `visit`  add column  `patient_cf`  integer;
alter table `visit`   add index fk_visit_patient (`patient_cf`), add constraint fk_visit_patient foreign key (`patient_cf`) references `patient` (`user_cf`);


-- Pharmacist_Drug [rel2]
create table `pharmacist_drug` (
   `pharmacist_cf`  integer not null,
   `drug_id`  integer not null,
  primary key (`pharmacist_cf`, `drug_id`)
);
alter table `pharmacist_drug`   add index fk_pharmacist_drug_pharmacist (`pharmacist_cf`), add constraint fk_pharmacist_drug_pharmacist foreign key (`pharmacist_cf`) references `pharmacist` (`user_cf`);
alter table `pharmacist_drug`   add index fk_pharmacist_drug_drug (`drug_id`), add constraint fk_pharmacist_drug_drug foreign key (`drug_id`) references `drug` (`id`);


-- Visit_Doctor [rel3]
alter table `visit`  add column  `doctor_cf`  integer;
alter table `visit`   add index fk_visit_doctor (`doctor_cf`), add constraint fk_visit_doctor foreign key (`doctor_cf`) references `doctor` (`user_cf`);


-- Doctor_Medical_specialization [rel4]
alter table `doctor`  add column  `name`  varchar(255);
alter table `doctor`   add index fk_doctor_medical_specializati (`name`), add constraint fk_doctor_medical_specializati foreign key (`name`) references `medical_specialization` (`namespecialization`);


-- Visit_treatment [rel6]
alter table `treatment`  add column  `id`  integer;
alter table `treatment`   add index fk_treatment_visit (`id`), add constraint fk_treatment_visit foreign key (`id`) references `visit` (`idvisita`);


-- Drug_Patient [rel7]
alter table `drug`  add column  `patient_cf`  integer;
alter table `drug`   add index fk_drug_patient (`patient_cf`), add constraint fk_drug_patient foreign key (`patient_cf`) references `patient` (`user_cf`);


-- treatment_Drug [rel8]
alter table `drug`  add column  `treatment_id`  integer;
alter table `drug`   add index fk_drug_treatment (`treatment_id`), add constraint fk_drug_treatment foreign key (`treatment_id`) references `treatment` (`idtreatment`);


-- Visit_ClinicalOperation [rel9]
alter table `clinicaloperation`  add column  `id`  integer;
alter table `clinicaloperation`   add index fk_clinicaloperation_visit (`id`), add constraint fk_clinicaloperation_visit foreign key (`id`) references `visit` (`idvisita`);


-- GEN FK: Pharmacist --> User
alter table `pharmacist`   add index fk_pharmacist_user (`user_cf`), add constraint fk_pharmacist_user foreign key (`user_cf`) references `user` (`cf`);


-- GEN FK: Patient --> User
alter table `patient`   add index fk_patient_user (`user_cf`), add constraint fk_patient_user foreign key (`user_cf`) references `user` (`cf`);


-- GEN FK: Doctor --> User
alter table `doctor`   add index fk_doctor_user (`user_cf`), add constraint fk_doctor_user foreign key (`user_cf`) references `user` (`cf`);


