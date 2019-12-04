-- FAQ [ent14]
create table `faq` (
   `oid`  integer  not null,
   `question`  longtext,
   `answer`  longtext,
  primary key (`oid`)
);


-- AutoIncrementOID [ent26]
create table `autoincrementoid` (
   `oid`  integer  not null,
  primary key (`oid`)
);


