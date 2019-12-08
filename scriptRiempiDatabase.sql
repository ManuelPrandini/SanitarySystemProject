/* ------------ POPULATE TABLE 'module' ----------------------------- */
INSERT INTO hospital.module (oid, moduleID, modulename) VALUES (1,'sv1','doctor');
INSERT INTO hospital.module (oid, moduleID, modulename) VALUES (2,'sv2','pharmacist');
INSERT INTO hospital.module (oid, moduleID, modulename) VALUES (3,'sv3','Patient');
INSERT INTO hospital.module (oid, moduleID, modulename) VALUES (4,'sv5','Admin');
INSERT INTO hospital.module (oid, moduleID, modulename) VALUES (5,'sv6','pronto soccorso');

/* ------------ POPULATE TABLE group --------------------------------- */
INSERT INTO hospital.group (oid,groupname,module_oid) VALUES (1,'doctor',1);
INSERT INTO hospital.group (oid,groupname,module_oid) VALUES (2,'pharmacist',2);
INSERT INTO hospital.group (oid,groupname,module_oid) VALUES (3,'Patient',3);
INSERT INTO hospital.group (oid,groupname,module_oid) VALUES (4,'Admin',4);

/* ------------- POPULATE TABLE country ---------------- */
INSERT INTO hospital.country (oid,name) VALUES (1,'Austria');
INSERT INTO hospital.country (oid,name) VALUES (2,'Belgium');
INSERT INTO hospital.country (oid,name) VALUES (3,'Bulgaria');
INSERT INTO hospital.country (oid,name) VALUES (4,'Croatia');
INSERT INTO hospital.country (oid,name) VALUES (5,'Cyprus');
INSERT INTO hospital.country (oid,name) VALUES (6,'Czech Republic');
INSERT INTO hospital.country (oid,name) VALUES (7,'Denmark');
INSERT INTO hospital.country (oid,name) VALUES (8,'Estonia');
INSERT INTO hospital.country (oid,name) VALUES (9,'Finland');
INSERT INTO hospital.country (oid,name) VALUES (10,'France');
INSERT INTO hospital.country (oid,name) VALUES (11,'Germany');
INSERT INTO hospital.country (oid,name) VALUES (12,'Greece');
INSERT INTO hospital.country (oid,name) VALUES (13,'Hungary');
INSERT INTO hospital.country (oid,name) VALUES (14,'Ireland');
INSERT INTO hospital.country (oid,name) VALUES (15,'Italy');
INSERT INTO hospital.country (oid,name) VALUES (16,'Latvia');
INSERT INTO hospital.country (oid,name) VALUES (17,'Luxembourg');
INSERT INTO hospital.country (oid,name) VALUES (18,'Lithuania');
INSERT INTO hospital.country (oid,name) VALUES (19,'Malta');
INSERT INTO hospital.country (oid,name) VALUES (20,'Netherlands');
INSERT INTO hospital.country (oid,name) VALUES (21,'Poland');
INSERT INTO hospital.country (oid,name) VALUES (22,'Portugal');
INSERT INTO hospital.country (oid,name) VALUES (23,'Romania');
INSERT INTO hospital.country (oid,name) VALUES (24,'Slovak Republic');
INSERT INTO hospital.country (oid,name) VALUES (25,'Slovenia');
INSERT INTO hospital.country (oid,name) VALUES (26,'Spain');
INSERT INTO hospital.country (oid,name) VALUES (27,'Sweden');
INSERT INTO hospital.country (oid,name) VALUES (28,'United Kingdom');

/* ------------- POPULATE TABLE city -------------------- */
INSERT INTO hospital.city (oid,name,country_oid) VALUES(1,'Torino',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(2,'Vercelli',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(3,'Novara',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(4,'Cuneo',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(5,'Asti',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(6,'Alessandria',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(7,'Aosta - Aoste',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(8,'Imperia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(9,'Savona',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(10,'Genova',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(11,'La Spezia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(12,'Varese',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(13,'Como',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(14,'Sondrio',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(15,'Milano',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(16,'Bergamo',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(17,'Brescia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(18,'Pavia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(19,'Cremona',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(20,'Mantova',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(21,'Bolzano - Bozen',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(22,'Trento',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(23,'Verona',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(24,'Vicenza',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(25,'Belluno',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(26,'Treviso',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(27,'Venezia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(28,'Padova',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(29,'Rovigo',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(30,'Udine',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(31,'Gorizia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(32,'Trieste',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(33,'Piacenza',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(34,'Parma',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(35,'Reggio Nell Emilia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(36,'Modena',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(37,'Bologna',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(38,'Ferrara',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(39,'Ravenna',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(40,'Forli-Cesena',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(41,'Pesaro E Urbino',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(42,'Ancona',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(43,'Macerata',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(44,'Ascoli Piceno',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(45,'Massa-Carrara',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(46,'Lucca',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(47,'Pistoia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(48,'Firenze',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(49,'Livorno',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(50,'Pisa',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(51,'Arezzo',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(52,'Siena',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(53,'Grosseto',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(54,'Perugia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(55,'Terni',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(56,'Viterbo',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(57,'Rieti',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(58,'Roma',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(59,'Latina',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(60,'Frosinone',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(61,'Caserta',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(62,'Benevento',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(63,'Napoli',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(64,'Avellino',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(65,'Salerno',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(66,'L Aquila',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(67,'Teramo',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(68,'Pescara',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(69,'Chieti',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(70,'Campobasso',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(71,'Foggia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(72,'Bari',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(73,'Taranto',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(74,'Brindisi',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(75,'Lecce',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(76,'Potenza',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(77,'Matera',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(78,'Cosenza',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(79,'Catanzaro',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(80,'Reggio Di Calabria',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(81,'Trapani',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(82,'Palermo',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(83,'Messina',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(84,'Agrigento',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(85,'Caltanissetta',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(86,'Enna',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(87,'Catania',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(88,'Ragusa',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(89,'Siracusa',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(90,'Sassari',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(91,'Nuoro',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(92,'Cagliari',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(93,'Pordenone',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(94,'Isernia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(95,'Oristano',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(96,'Biella',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(97,'Lecco',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(98,'Lodi',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(99,'Rimini',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(100,'Prato',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(101,'Crotone',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(102,'Vibo Valentia',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(103,'Verbano-Cusio-Ossola',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(104,'Olbia Tempio',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(105,'Ogliastra',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(106,'Medio Campidano',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(107,'Carbonia Iglesias',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(108,'Monza E Della Brianza',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(109,'Fermo',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(110,'Barletta-Andria-Trani',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(111,'Sud Sardegna',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(701,'Fiume',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(702,'Pola',15);
INSERT INTO hospital.city (oid,name,country_oid) VALUES(703,'Zara',15);

/* -------------- POPULATE TABLE pharmacy ---------------------------- */
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (1,'SAN FRANCESCO DA PAOLA','Via San Francesco Da Paola, 10',1);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (2,'ALGOSTINO E DEMICHELIS','Piazza Vittorio Veneto, 10',1);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (3,'GALLO MARIO','Piazza Vittorio Veneto, 10',1);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (5,'FERRERO','Via del Carmine, 1',1);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (6,'Regia Farmacia Di Monchiero Luca & C. S.a.s.','Via Xx Settembre, 87',1);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (7,'REGIA FARMACIA XX SETTEMBRE','Via XX Settembre, 87',1);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (8,'SAN CAMILLO Paglia Carlo','Via Pio VII, 164/c',1);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (9,'ALCHEMICA 1961','Corso Filippo Turati, 74',1);

INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (10,'Farmacia Valle Santa S.n.c. Dei Dottori Casarella Vincenzo E Grimaldi Anna','Via Di Boccea, 1056',58);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (11,'Farmacia Porta Di Roma Snc Dei Dottori Ma Riapia Leggiero, Antonio Bellantoni E Salvatore Palmieri','Via Adolfo Celi, 65',58);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (12,'Farmacia Infernetto Sas Delle Dottoresse Simona Goretti, A. Pizzuti E R. Pizzuti','Via Umberto Giordano, 93/a',58);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (13,'Farmacia Riace Del Dottor Roberto Splendiani & C. S.n.c.','Via Anagnina, 470',58);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (14,'Farmacia I Granai S.n.c. Di Ameruso Mariapia E Cupelli Sandra','Via Tazio Nuvolari, 305',58);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (15,'Farmacia Castel Di Leva Snc Delle Dr.sse Silvia Di Giammarino E Maria Lanotte','Via Di Castel Di Leva, 263',58);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (16,'Farmacia Messidoro S.n.c. Delle Dottoresse Daniela Mattiuzzo E Francesca Novarini','Via Delle Messi D Oro, 197',58);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (17,'Farmacia Internazionale Snc Delle Dr.sse Flavia Giannini E Teresafabiola Miscioscia','Viale Caduti Guerra Liberazione, 392',58);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (18,'Farmacia Fiume Giallo S.a.s.','Via Fiume Giallo, 399/401',58);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (19,'Farmacia Mezzocammino Snc Di Calabrese Giuseppe, Diego E Bordi Federica','Viale Gianluigi Bonelli, 84a/b/bi',58);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (20,'Farmacia Torrenova S.a.s. Della Dott.ssa Caterina Mattia','Via Di Torrenova, 78',58);

INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (21,'BERTA SNC','Viale Monza 43/B',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (22,'FARMACEUTICA BRAMANTE','Via Pacini, 30',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (23,'PIMPINELLI','Via Aldini, 108',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (24,'CALATAFIMI SAS DR. ZANETTI ANDREA & C.','Piazzale di Porta Lodovica, 2',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (25,'CALATAFIMI','P.le Lodovica, 2',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (26,'CINQUE GIORNATE SNC','Piazza Cinque Giornate, 7',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (27,'CANTONE','Piazza 5 Giornate, 7',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (28,'CENISIO BONTADINI FRANCESCA','Via S. Galdino, 11',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (29,'CERINI','Via A. Saffi, 6',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (30,'BOVISA','Piazza Bausan, 3',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (31,'COMOTTI','Piazza Cavour, 5',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (32,'CONCORDIA - DR. PAPA','Corso Concordia, 16',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (33,'COOP.FARM.DUOMO','Via Orefici, 2',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (34,'COOP.FARM.VITTORIA','Via Fontana 1 - Angolo C.so Porta Vittoria, 36',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (35,'DEL DUOMO DEI DOTTORI RAFFAELE BALSAMO E IRENE BONADUCE & C. SAS','Via Larga, 6',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (36,'VESUVIO DR. BONANDRINI ACHILLE','Piazza Vesuvio, 14',15);
INSERT INTO hospital.pharmacy (oid,name,address,city_oid) VALUES (37,'DEI PADRI FATEBENEFRATELLI SRL','Via S. Vittore, 12',15);

/* ------------ POPULATE TABLE hospital ------------------------------ */
INSERT INTO hospital.hospital (id_hospital, address, name, telephone, website, city_oid) VALUES (1,'Largo Agostino Gemelli 8','Policlinico Agostino Gemelli',' 06 8880.5560','https://www.policlinicogemelli.it/',58);
INSERT INTO hospital.hospital (id_hospital, address, name, telephone, website, city_oid) VALUES (2,'Via Olgettina 60','Ospedale San Raffaele','02.2643.2643','www.hsr.it',15);



/* ----------- POPULATE ROOM ----------------------------------- */
INSERT INTO hospital.room (id_room,floor,name,hospital_id_hospital) VALUES (1,5,'Sala Chirurgia 1',1);
INSERT INTO hospital.room (id_room,floor,name,hospital_id_hospital) VALUES (2,1,'Sala Urologia 2',1);
INSERT INTO hospital.room (id_room,floor,name,hospital_id_hospital) VALUES (3,2,'Sala Odontoiatria 1',1);
INSERT INTO hospital.room (id_room,floor,name,hospital_id_hospital) VALUES (4,1,'Sala Ricoveri 1',1);
INSERT INTO hospital.room (id_room,floor,name,hospital_id_hospital) VALUES (5,1,'Pronto Soccorso 1',1);

/* ----------- POPULATE SURGERY ROOM ----------------------------- */
INSERT INTO hospital.surgery_room (room_id_room) VALUES (1);



/* ----------- POPULATE EMERGENCY ROOM ----------------------------- */
INSERT INTO hospital.emergency_room (room_id_room) VALUES (5);


/* ----------- POPULATE RECOVERY ROOM ----------------------------- */
INSERT INTO hospital.recovery_room (room_id_room) VALUES (4);


/* ----------- POPULATE MEDICAL SPECIALIZATION ---------------- */
INSERT INTO hospital.medical_specialization  (namespecialization) VALUES ('chirurgo');
INSERT INTO hospital.medical_specialization  (namespecialization) VALUES ('ortopedico');
INSERT INTO hospital.medical_specialization  (namespecialization) VALUES ('dermatologo');
INSERT INTO hospital.medical_specialization  (namespecialization) VALUES ('neurologo');
INSERT INTO hospital.medical_specialization  (namespecialization) VALUES ('pediatra');
INSERT INTO hospital.medical_specialization  (namespecialization) VALUES ('dentista');
INSERT INTO hospital.medical_specialization  (namespecialization) VALUES ('urologo');
INSERT INTO hospital.medical_specialization  (namespecialization) VALUES ('radiologo');
INSERT INTO hospital.medical_specialization  (namespecialization) VALUES ('cardiologo');
INSERT INTO hospital.medical_specialization  (namespecialization) VALUES ('pronto soccorso');

/* ----------- POPULATE VISIT ROOM ----------------------------- */
INSERT INTO hospital.visit_room (room_id_room,medical_specialization_namespe) VALUES (2,'urologo');
INSERT INTO hospital.visit_room (room_id_room,medical_specialization_namespe) VALUES (3,'dentista');

/* --------- POPOLATE ADMIN ----------------------- */
INSERT INTO hospital.user (cf,username,password,email,group_oid) 
values 						('admin','admin','password','admin@admin',4);
