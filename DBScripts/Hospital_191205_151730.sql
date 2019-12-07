-- GEN FK: Emergency_Room --> Room
alter table `emergency_room`   add index fk_emergency_room_room (), add constraint fk_emergency_room_room foreign key () references `room` ();


