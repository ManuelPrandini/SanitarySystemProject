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
   `cf`  varchar(255)  not null,
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
   `user_cf`  varchar(255)  not null,
   `pharmacist_code`  varchar(255),
  primary key (`user_cf`)
);


-- Rooms [ent10]
create table `rooms` (
   `id_room`  integer  not null,
   `floor`  varchar(255),
  primary key (`id_room`)
);


-- Hospital_department [ent13]
create table `hospital_department` (
   `id_department`  integer  not null,
   `name`  varchar(255),
  primary key (`id_department`)
);


-- building [ent14]
create table `building` (
   `id_building`  integer  not null,
   `name`  varchar(255),
  primary key (`id_building`)
);


-- Recovery [ent15]
create table `recovery` (
   `id_recovery`  integer  not null,
   `description`  varchar(255),
   `startdate`  date,
   `enddate`  date,
  primary key (`id_recovery`)
);


-- Room_type [ent16]
create table `room_type` (
   `type`  varchar(255)  not null,
  primary key (`type`)
);


-- Check_Visit [ent17]
create table `check_visit` (
   `visit_idvisita`  integer  not null,
  primary key (`visit_idvisita`)
);


-- Prerecovery_Visit [ent18]
create table `prerecovery_visit` (
   `visit_idvisita`  integer  not null,
  primary key (`visit_idvisita`)
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
   `date`  date,
  primary key (`idvisita`)
);


-- Hospital [ent4]
create table `hospital` (
   `id_hospital`  integer  not null,
   `state`  varchar(255),
   `city`  varchar(255),
   `address`  varchar(255),
   `name`  varchar(255),
  primary key (`id_hospital`)
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
   `user_cf`  varchar(255)  not null,
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
   `user_cf`  varchar(255)  not null,
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
   `user_cf`  varchar(255) not null,
   `group_oid`  integer not null,
  primary key (`user_cf`, `group_oid`)
);
alter table `user_group`   add index fk_user_group_user (`user_cf`), add constraint fk_user_group_user foreign key (`user_cf`) references `user` (`cf`);
alter table `user_group`   add index fk_user_group_group (`group_oid`), add constraint fk_user_group_group foreign key (`group_oid`) references `group` (`oid`);


-- Hospital_Hospital_pavilion [rel1]
alter table `hospital_department`  add column  `hospital_id_hospital`  integer;
alter table `hospital_department`   add index fk_hospital_department_hospita (`hospital_id_hospital`), add constraint fk_hospital_department_hospita foreign key (`hospital_id_hospital`) references `hospital` (`id_hospital`);


-- Rooms_building [rel10]
alter table `rooms`  add column  `building_id_building`  integer;
alter table `rooms`   add index fk_rooms_building (`building_id_building`), add constraint fk_rooms_building foreign key (`building_id_building`) references `building` (`id_building`);


-- Patient_Visit [rel11]
alter table `visit`  add column  `patient_cf`  varchar(255);
alter table `visit`   add index fk_visit_patient (`patient_cf`), add constraint fk_visit_patient foreign key (`patient_cf`) references `patient` (`user_cf`);


-- Doctor_Hospital [rel12]
create table `doctor_hospital` (
   `doctor_cf`  varchar(255) not null,
   `hospital_id_hospital`  integer not null,
  primary key (`doctor_cf`, `hospital_id_hospital`)
);
alter table `doctor_hospital`   add index fk_doctor_hospital_doctor (`doctor_cf`), add constraint fk_doctor_hospital_doctor foreign key (`doctor_cf`) references `doctor` (`user_cf`);
alter table `doctor_hospital`   add index fk_doctor_hospital_hospital (`hospital_id_hospital`), add constraint fk_doctor_hospital_hospital foreign key (`hospital_id_hospital`) references `hospital` (`id_hospital`);


-- Recovery_Rooms [rel14]
alter table `recovery`  add column  `rooms_id_room`  integer;
alter table `recovery`   add index fk_recovery_rooms (`rooms_id_room`), add constraint fk_recovery_rooms foreign key (`rooms_id_room`) references `rooms` (`id_room`);


-- Rooms_Room_type [rel16]
alter table `rooms`  add column  `room_type_type`  varchar(255);
alter table `rooms`   add index fk_rooms_room_type (`room_type_type`), add constraint fk_rooms_room_type foreign key (`room_type_type`) references `room_type` (`type`);


-- Recovery_ClinicalOperation [rel18]
alter table `clinicaloperation`  add column  `recovery_id_recovery`  integer;
alter table `clinicaloperation`   add index fk_clinicaloperation_recovery (`recovery_id_recovery`), add constraint fk_clinicaloperation_recovery foreign key (`recovery_id_recovery`) references `recovery` (`id_recovery`);


-- ClinicalOperation_Rooms [rel19]
alter table `clinicaloperation`  add column  `rooms_id_room`  integer;
alter table `clinicaloperation`   add index fk_clinicaloperation_rooms (`rooms_id_room`), add constraint fk_clinicaloperation_rooms foreign key (`rooms_id_room`) references `rooms` (`id_room`);


-- Pharmacist_Drug [rel2]
create table `pharmacist_drug` (
   `pharmacist_cf`  varchar(255) not null,
   `drug_id`  integer not null,
  primary key (`pharmacist_cf`, `drug_id`)
);
alter table `pharmacist_drug`   add index fk_pharmacist_drug_pharmacist (`pharmacist_cf`), add constraint fk_pharmacist_drug_pharmacist foreign key (`pharmacist_cf`) references `pharmacist` (`user_cf`);
alter table `pharmacist_drug`   add index fk_pharmacist_drug_drug (`drug_id`), add constraint fk_pharmacist_drug_drug foreign key (`drug_id`) references `drug` (`id`);


-- Visit_Rooms [rel20]
alter table `visit`  add column  `rooms_id_room`  integer;
alter table `visit`   add index fk_visit_rooms (`rooms_id_room`), add constraint fk_visit_rooms foreign key (`rooms_id_room`) references `rooms` (`id_room`);


-- Prerecovery_Visit_Recovery [rel21]
alter table `recovery`  add column  `prerecovery_visit_idvisita`  integer;
alter table `recovery`   add index fk_recovery_prerecovery_visit (`prerecovery_visit_idvisita`), add constraint fk_recovery_prerecovery_visit foreign key (`prerecovery_visit_idvisita`) references `prerecovery_visit` (`visit_idvisita`);


-- Check_Visit_treatment [rel22]
alter table `treatment`  add column  `check_visit_idvisita`  integer;
alter table `treatment`   add index fk_treatment_check_visit (`check_visit_idvisita`), add constraint fk_treatment_check_visit foreign key (`check_visit_idvisita`) references `check_visit` (`visit_idvisita`);


-- Visit_Doctor [rel3]
alter table `visit`  add column  `doctor_cf`  varchar(255);
alter table `visit`   add index fk_visit_doctor (`doctor_cf`), add constraint fk_visit_doctor foreign key (`doctor_cf`) references `doctor` (`user_cf`);


-- Doctor_Medical_specialization [rel4]
alter table `doctor`  add column  `name`  varchar(255);
alter table `doctor`   add index fk_doctor_medical_specializati (`name`), add constraint fk_doctor_medical_specializati foreign key (`name`) references `medical_specialization` (`namespecialization`);


-- Hospital_department_building [rel5]
alter table `building`  add column  `hospital_department_id_departm`  integer;
alter table `building`   add index fk_building_hospital_departmen (`hospital_department_id_departm`), add constraint fk_building_hospital_departmen foreign key (`hospital_department_id_departm`) references `hospital_department` (`id_department`);


-- treatment_Drug [rel8]
alter table `drug`  add column  `treatment_id`  integer;
alter table `drug`   add index fk_drug_treatment (`treatment_id`), add constraint fk_drug_treatment foreign key (`treatment_id`) references `treatment` (`idtreatment`);


-- GEN FK: Check_Visit --> Visit
alter table `check_visit`   add index fk_check_visit_visit (`visit_idvisita`), add constraint fk_check_visit_visit foreign key (`visit_idvisita`) references `visit` (`idvisita`);


-- GEN FK: Prerecovery_Visit --> Visit
alter table `prerecovery_visit`   add index fk_prerecovery_visit_visit (`visit_idvisita`), add constraint fk_prerecovery_visit_visit foreign key (`visit_idvisita`) references `visit` (`idvisita`);


-- GEN FK: Pharmacist --> User
alter table `pharmacist`   add index fk_pharmacist_user (`user_cf`), add constraint fk_pharmacist_user foreign key (`user_cf`) references `user` (`cf`);


-- GEN FK: Patient --> User
alter table `patient`   add index fk_patient_user (`user_cf`), add constraint fk_patient_user foreign key (`user_cf`) references `user` (`cf`);


-- GEN FK: Doctor --> User
alter table `doctor`   add index fk_doctor_user (`user_cf`), add constraint fk_doctor_user foreign key (`user_cf`) references `user` (`cf`);


