create table property
   (person_id numeric(12),
   address_id numeric(12),
   primary key (person_id, address_id),
   foreign key (person_id) references person
   on delete cascade,
   foreign key (address_id) references address
   on delete cascade);