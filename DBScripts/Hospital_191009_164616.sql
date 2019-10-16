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
   `address`  varchar(255),
   `telephone`  varchar(255),
   `gender`  varchar(255),
  primary key (`cf`)
);


-- Pharmacist [ent1]
create table `pharmacist` (
   `pharmacist_code`  varchar(255)  not null,
   `approved`  integer,
  primary key (`pharmacist_code`)
);


-- Room [ent10]
create table `room` (
   `id_room`  integer  not null,
   `floor`  varchar(255),
   `name`  varchar(255),
  primary key (`id_room`)
);


-- Country [ent11]
create table `country` (
   `oid`  integer  not null,
   `name`  varchar(255),
  primary key (`oid`)
);


-- City [ent12]
create table `city` (
   `oid`  integer  not null,
   `name`  varchar(255),
  primary key (`oid`)
);


-- Hospital_department [ent13]
create table `hospital_department` (
   `id_department`  integer  not null,
   `name`  varchar(255),
  primary key (`id_department`)
);


-- Building [ent14]
create table `building` (
   `id_building`  integer  not null,
   `name`  varchar(255),
  primary key (`id_building`)
);


-- Without_Prescription [ent15]
create table `without_prescription` (
   `assignement_oid`  integer  not null,
  primary key (`assignement_oid`)
);


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


-- Pharmacy [ent19]
create table `pharmacy` (
   `oid`  integer  not null,
   `name`  varchar(255),
   `address`  varchar(255),
   `telephone`  varchar(255),
   `website`  varchar(255),
  primary key (`oid`)
);


-- Drug [ent2]
create table `drug` (
   `id`  integer  not null,
   `isstandard`  bit,
   `name`  varchar(255),
  primary key (`id`)
);


-- Recovery_Room [ent20]
create table `recovery_room` (
   `room_id_room`  integer  not null,
  primary key (`room_id_room`)
);


-- Quantity_Drug [ent21]
create table `quantity_drug` (
   `quantity`  integer,
   `oid`  integer  not null,
  primary key (`oid`)
);


-- Drug_Description [ent22]
create table `drug_description` (
   `name`  varchar(255)  not null,
  primary key (`name`)
);


-- Visit_Room [ent23]
create table `visit_room` (
   `room_id_room`  integer  not null,
  primary key (`room_id_room`)
);


-- Surgery_Room [ent24]
create table `surgery_room` (
   `room_id_room`  integer  not null,
  primary key (`room_id_room`)
);


-- Bed_place [ent25]
create table `bed_place` (
   `oid`  integer  not null,
  primary key (`oid`)
);


-- Visit [ent29]
create table `visit` (
   `action_oid`  integer  not null,
  primary key (`action_oid`)
);


-- Clinical_Surgery [ent30]
create table `clinical_surgery` (
   `action_oid`  integer  not null,
  primary key (`action_oid`)
);


-- Recovery [ent31]
create table `recovery` (
   `action_oid`  integer  not null,
  primary key (`action_oid`)
);


-- Calendar [ent32]
create table `calendar` (
   `oid`  integer  not null,
   `endtime`  time,
   `starttime`  time,
   `enddate`  date,
   `startdate`  date,
  primary key (`oid`)
);


-- Visit_Calendar [ent33]
create table `visit_calendar` (
   `calendar_oid`  integer  not null,
  primary key (`calendar_oid`)
);


-- Surgery_Calendar [ent34]
create table `surgery_calendar` (
   `calendar_oid`  integer  not null,
  primary key (`calendar_oid`)
);


-- Recovery_Calendar [ent35]
create table `recovery_calendar` (
   `calendar_oid`  integer  not null,
  primary key (`calendar_oid`)
);


-- Drug_Prescription [ent36]
create table `drug_prescription` (
   `oid`  integer  not null,
   `quantity`  integer,
   `description`  longtext,
   `assigned`  integer,
  primary key (`oid`)
);


-- Assignement [ent37]
create table `assignement` (
   `oid`  integer  not null,
   `quantity`  integer,
   `date`  datetime,
  primary key (`oid`)
);


-- Hospital [ent4]
create table `hospital` (
   `id_hospital`  integer  not null,
   `address`  varchar(255),
   `name`  varchar(255),
   `telephone`  varchar(255),
   `website`  varchar(255),
  primary key (`id_hospital`)
);


-- Action [ent5]
create table `action` (
   `oid`  integer  not null,
   `title`  varchar(255),
   `description`  longtext,
  primary key (`oid`)
);


-- Patient [ent6]
create table `patient` (
   `weight`  integer,
   `height`  integer,
   `approved`  integer,
   `patient_code`  varchar(255)  not null,
  primary key (`patient_code`)
);


-- With_Prescription [ent7]
create table `with_prescription` (
   `assignement_oid`  integer  not null,
  primary key (`assignement_oid`)
);


-- Medical_specialization [ent8]
create table `medical_specialization` (
   `namespecialization`  varchar(255)  not null,
  primary key (`namespecialization`)
);


-- Doctor [ent9]
create table `doctor` (
   `doctor_code`  varchar(255)  not null,
   `approved`  integer,
  primary key (`doctor_code`)
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
alter table `room`  add column  `building_id_building`  integer;
alter table `room`   add index fk_room_building (`building_id_building`), add constraint fk_room_building foreign key (`building_id_building`) references `building` (`id_building`);


-- Patient_Visit [rel11]
alter table `action`  add column  `patient_patient_code`  varchar(255);
alter table `action`   add index fk_action_patient (`patient_patient_code`), add constraint fk_action_patient foreign key (`patient_patient_code`) references `patient` (`patient_code`);


-- Doctor_Hospital [rel12]
create table `doctor_hospital` (
   `doctor_doctor_code`  varchar(255) not null,
   `hospital_id_hospital`  integer not null,
  primary key (`doctor_doctor_code`, `hospital_id_hospital`)
);
alter table `doctor_hospital`   add index fk_doctor_hospital_doctor (`doctor_doctor_code`), add constraint fk_doctor_hospital_doctor foreign key (`doctor_doctor_code`) references `doctor` (`doctor_code`);
alter table `doctor_hospital`   add index fk_doctor_hospital_hospital (`hospital_id_hospital`), add constraint fk_doctor_hospital_hospital foreign key (`hospital_id_hospital`) references `hospital` (`id_hospital`);


-- Pharmacy_City [rel13]
alter table `pharmacy`  add column  `city_oid`  integer;
alter table `pharmacy`   add index fk_pharmacy_city (`city_oid`), add constraint fk_pharmacy_city foreign key (`city_oid`) references `city` (`oid`);


-- User_Patient [rel14]
alter table `patient`  add column  `user_cf`  varchar(255);
alter table `patient`   add index fk_patient_user (`user_cf`), add constraint fk_patient_user foreign key (`user_cf`) references `user` (`cf`);


-- Pharmacy_Pharmacist [rel15]
alter table `pharmacist`  add column  `pharmacy_oid`  integer;
alter table `pharmacist`   add index fk_pharmacist_pharmacy (`pharmacy_oid`), add constraint fk_pharmacist_pharmacy foreign key (`pharmacy_oid`) references `pharmacy` (`oid`);


-- Visit_Visit_Room [rel16]
alter table `visit`  add column  `visit_room_id_room`  integer;
alter table `visit`   add index fk_visit_visit_room (`visit_room_id_room`), add constraint fk_visit_visit_room foreign key (`visit_room_id_room`) references `visit_room` (`room_id_room`);


-- Pharmacy_Quantity_Drug [rel17]
alter table `quantity_drug`  add column  `pharmacy_oid`  integer;
alter table `quantity_drug`   add index fk_quantity_drug_pharmacy (`pharmacy_oid`), add constraint fk_quantity_drug_pharmacy foreign key (`pharmacy_oid`) references `pharmacy` (`oid`);


-- Clinical_Surgery_Surgery_Room [rel18]
alter table `clinical_surgery`  add column  `surgery_room_id_room`  integer;
alter table `clinical_surgery`   add index fk_clinical_surgery_surgery_ro (`surgery_room_id_room`), add constraint fk_clinical_surgery_surgery_ro foreign key (`surgery_room_id_room`) references `surgery_room` (`room_id_room`);


-- Patient_Without_Prescription [rel19]
alter table `without_prescription`  add column  `patient_patient_code`  varchar(255);
alter table `without_prescription`   add index fk_without_prescription_patien (`patient_patient_code`), add constraint fk_without_prescription_patien foreign key (`patient_patient_code`) references `patient` (`patient_code`);


-- City_Hospital [rel2]
alter table `hospital`  add column  `city_oid`  integer;
alter table `hospital`   add index fk_hospital_city (`city_oid`), add constraint fk_hospital_city foreign key (`city_oid`) references `city` (`oid`);


-- Recovery_Bed_place [rel20]
alter table `recovery`  add column  `bed_place_oid`  integer;
alter table `recovery`   add index fk_recovery_bed_place (`bed_place_oid`), add constraint fk_recovery_bed_place foreign key (`bed_place_oid`) references `bed_place` (`oid`);


-- Action_Calendar [rel21]
alter table `action`  add column  `calendar_oid`  integer;
alter table `action`   add index fk_action_calendar (`calendar_oid`), add constraint fk_action_calendar foreign key (`calendar_oid`) references `calendar` (`oid`);


-- User_Pharmacist [rel22]
alter table `pharmacist`  add column  `user_cf`  varchar(255);
alter table `pharmacist`   add index fk_pharmacist_user (`user_cf`), add constraint fk_pharmacist_user foreign key (`user_cf`) references `user` (`cf`);


-- Quantity_Drug_Drug [rel23]
alter table `quantity_drug`  add column  `drug_id`  integer;
alter table `quantity_drug`   add index fk_quantity_drug_drug (`drug_id`), add constraint fk_quantity_drug_drug foreign key (`drug_id`) references `drug` (`id`);


-- Drug_Drug_Description [rel24]
alter table `drug_description`  add column  `drug_id`  integer;
alter table `drug_description`   add index fk_drug_description_drug (`drug_id`), add constraint fk_drug_description_drug foreign key (`drug_id`) references `drug` (`id`);


-- Drug_Without_Prescription [rel25]
alter table `without_prescription`  add column  `drug_id`  integer;
alter table `without_prescription`   add index fk_without_prescription_drug (`drug_id`), add constraint fk_without_prescription_drug foreign key (`drug_id`) references `drug` (`id`);


-- Hospital_Emergency_Room [rel26]
alter table `emergency_room`  add column  `hospital_id_hospital`  integer;
alter table `emergency_room`   add index fk_emergency_room_hospital (`hospital_id_hospital`), add constraint fk_emergency_room_hospital foreign key (`hospital_id_hospital`) references `hospital` (`id_hospital`);


-- Visit_Calendar_Visit_Room [rel27]
alter table `visit_calendar`  add column  `visit_room_id_room`  integer;
alter table `visit_calendar`   add index fk_visit_calendar_visit_room (`visit_room_id_room`), add constraint fk_visit_calendar_visit_room foreign key (`visit_room_id_room`) references `visit_room` (`room_id_room`);


-- Surgery_Calendar_Surgery_Room [rel28]
alter table `surgery_calendar`  add column  `surgery_room_id_room`  integer;
alter table `surgery_calendar`   add index fk_surgery_calendar_surgery_ro (`surgery_room_id_room`), add constraint fk_surgery_calendar_surgery_ro foreign key (`surgery_room_id_room`) references `surgery_room` (`room_id_room`);


-- Recovery_Calendar_Bed_place [rel29]
alter table `recovery_calendar`  add column  `bed_place_oid`  integer;
alter table `recovery_calendar`   add index fk_recovery_calendar_bed_place (`bed_place_oid`), add constraint fk_recovery_calendar_bed_place foreign key (`bed_place_oid`) references `bed_place` (`oid`);


-- Visit_Doctor [rel3]
alter table `action`  add column  `doctor_doctor_code`  varchar(255);
alter table `action`   add index fk_action_doctor (`doctor_doctor_code`), add constraint fk_action_doctor foreign key (`doctor_doctor_code`) references `doctor` (`doctor_code`);


-- Visit_Drug_Prescription [rel30]
alter table `drug_prescription`  add column  `visit_oid`  integer;
alter table `drug_prescription`   add index fk_drug_prescription_visit (`visit_oid`), add constraint fk_drug_prescription_visit foreign key (`visit_oid`) references `visit` (`action_oid`);


-- Drug_Drug_Prescription [rel31]
alter table `drug_prescription`  add column  `drug_id`  integer;
alter table `drug_prescription`   add index fk_drug_prescription_drug (`drug_id`), add constraint fk_drug_prescription_drug foreign key (`drug_id`) references `drug` (`id`);


-- Pharmacist_Assignement [rel32]
alter table `assignement`  add column  `pharmacist_pharmacist_code`  varchar(255);
alter table `assignement`   add index fk_assignement_pharmacist (`pharmacist_pharmacist_code`), add constraint fk_assignement_pharmacist foreign key (`pharmacist_pharmacist_code`) references `pharmacist` (`pharmacist_code`);


-- Assignement_Drug_Prescription [rel33]
alter table `with_prescription`  add column  `drug_prescription_oid`  integer;
alter table `with_prescription`   add index fk_with_prescription_drug_pres (`drug_prescription_oid`), add constraint fk_with_prescription_drug_pres foreign key (`drug_prescription_oid`) references `drug_prescription` (`oid`);


-- Emergency_operation_Emergency_code [rel34]
alter table `emergency_operation`  add column  `emergency_code_code`  varchar(255);
alter table `emergency_operation`   add index fk_emergency_operation_emergen (`emergency_code_code`), add constraint fk_emergency_operation_emergen foreign key (`emergency_code_code`) references `emergency_code` (`code`);


-- Emergency_operation_Emergency_Room [rel35]
alter table `emergency_operation`  add column  `emergency_room_oid`  integer;
alter table `emergency_operation`   add index fk_emergency_operation_emerg_2 (`emergency_room_oid`), add constraint fk_emergency_operation_emerg_2 foreign key (`emergency_room_oid`) references `emergency_room` (`oid`);


-- User_Doctor [rel36]
alter table `doctor`  add column  `user_cf`  varchar(255);
alter table `doctor`   add index fk_doctor_user (`user_cf`), add constraint fk_doctor_user foreign key (`user_cf`) references `user` (`cf`);


-- Doctor_Medical_specialization [rel4]
alter table `doctor`  add column  `medical_specialization_namespe`  varchar(255);
alter table `doctor`   add index fk_doctor_medical_specializati (`medical_specialization_namespe`), add constraint fk_doctor_medical_specializati foreign key (`medical_specialization_namespe`) references `medical_specialization` (`namespecialization`);


-- Hospital_department_building [rel5]
alter table `building`  add column  `hospital_department_id_departm`  integer;
alter table `building`   add index fk_building_hospital_departmen (`hospital_department_id_departm`), add constraint fk_building_hospital_departmen foreign key (`hospital_department_id_departm`) references `hospital_department` (`id_department`);


-- Country_City [rel6]
alter table `city`  add column  `country_oid`  integer;
alter table `city`   add index fk_city_country (`country_oid`), add constraint fk_city_country foreign key (`country_oid`) references `country` (`oid`);


-- Live_City_User [rel7]
alter table `user`  add column  `city_oid`  integer;
alter table `user`   add index fk_user_city (`city_oid`), add constraint fk_user_city foreign key (`city_oid`) references `city` (`oid`);


-- Bed_place_Recovery_Room [rel8]
alter table `bed_place`  add column  `recovery_room_id_room`  integer;
alter table `bed_place`   add index fk_bed_place_recovery_room (`recovery_room_id_room`), add constraint fk_bed_place_recovery_room foreign key (`recovery_room_id_room`) references `recovery_room` (`room_id_room`);


-- Born_City_User [rel9]
alter table `user`  add column  `city_oid_2`  integer;
alter table `user`   add index fk_user_city_2 (`city_oid_2`), add constraint fk_user_city_2 foreign key (`city_oid_2`) references `city` (`oid`);


-- GEN FK: Without_Prescription --> Assignement
alter table `without_prescription`   add index fk_without_prescription_assign (`assignement_oid`), add constraint fk_without_prescription_assign foreign key (`assignement_oid`) references `assignement` (`oid`);


-- GEN FK: Emergency_operation --> Action
alter table `emergency_operation`   add index fk_emergency_operation_action (`action_oid`), add constraint fk_emergency_operation_action foreign key (`action_oid`) references `action` (`oid`);


-- GEN FK: Recovery_Room --> Room
alter table `recovery_room`   add index fk_recovery_room_room (`room_id_room`), add constraint fk_recovery_room_room foreign key (`room_id_room`) references `room` (`id_room`);


-- GEN FK: Visit_Room --> Room
alter table `visit_room`   add index fk_visit_room_room (`room_id_room`), add constraint fk_visit_room_room foreign key (`room_id_room`) references `room` (`id_room`);


-- GEN FK: Surgery_Room --> Room
alter table `surgery_room`   add index fk_surgery_room_room (`room_id_room`), add constraint fk_surgery_room_room foreign key (`room_id_room`) references `room` (`id_room`);


-- GEN FK: Visit --> Action
alter table `visit`   add index fk_visit_action (`action_oid`), add constraint fk_visit_action foreign key (`action_oid`) references `action` (`oid`);


-- GEN FK: Clinical_Surgery --> Action
alter table `clinical_surgery`   add index fk_clinical_surgery_action (`action_oid`), add constraint fk_clinical_surgery_action foreign key (`action_oid`) references `action` (`oid`);


-- GEN FK: Recovery --> Action
alter table `recovery`   add index fk_recovery_action (`action_oid`), add constraint fk_recovery_action foreign key (`action_oid`) references `action` (`oid`);


-- GEN FK: Visit_Calendar --> Calendar
alter table `visit_calendar`   add index fk_visit_calendar_calendar (`calendar_oid`), add constraint fk_visit_calendar_calendar foreign key (`calendar_oid`) references `calendar` (`oid`);


-- GEN FK: Surgery_Calendar --> Calendar
alter table `surgery_calendar`   add index fk_surgery_calendar_calendar (`calendar_oid`), add constraint fk_surgery_calendar_calendar foreign key (`calendar_oid`) references `calendar` (`oid`);


-- GEN FK: Recovery_Calendar --> Calendar
alter table `recovery_calendar`   add index fk_recovery_calendar_calendar (`calendar_oid`), add constraint fk_recovery_calendar_calendar foreign key (`calendar_oid`) references `calendar` (`oid`);


-- GEN FK: With_Prescription --> Assignement
alter table `with_prescription`   add index fk_with_prescription_assigneme (`assignement_oid`), add constraint fk_with_prescription_assigneme foreign key (`assignement_oid`) references `assignement` (`oid`);


