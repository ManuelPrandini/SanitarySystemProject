-- User [User]
alter table `user`  add column  `approved`  bit;


-- Patient_Visit [rel11]
alter table `visit`  add column  `patient_cf`  varchar(255);
alter table `visit`   add index fk_visit_patient_2 (`patient_cf`), add constraint fk_visit_patient_2 foreign key (`patient_cf`) references `patient` (`user_cf`);


-- Visit_Doctor [rel3]
alter table `visit`  add column  `doctor_cf`  varchar(255);
alter table `visit`   add index fk_visit_doctor_2 (`doctor_cf`), add constraint fk_visit_doctor_2 foreign key (`doctor_cf`) references `doctor` (`user_cf`);


