-- Accertamento [ent27]
create table `accertamento` (
   `oid`  integer  not null,
   `data`  date,
   `orario`  time,
   `descrizione`  longtext,
  primary key (`oid`)
);


-- Descrizione_Accertamento [ent28]
create table `descrizione_accertamento` (
   `tipologia`  varchar(255)  not null,
  primary key (`tipologia`)
);


-- Recovery_Accertamento [rel10]
alter table `accertamento`  add column  `recovery_oid`  integer;
alter table `accertamento`   add index fk_accertamento_recovery (`recovery_oid`), add constraint fk_accertamento_recovery foreign key (`recovery_oid`) references `recovery` (`action_oid`);


-- Accertamento_Descrizione_Accertamento [rel21]
alter table `accertamento`  add column  `descrizione_accertamento_tipol`  varchar(255);
alter table `accertamento`   add index fk_accertamento_descrizione_ac (`descrizione_accertamento_tipol`), add constraint fk_accertamento_descrizione_ac foreign key (`descrizione_accertamento_tipol`) references `descrizione_accertamento` (`tipologia`);


