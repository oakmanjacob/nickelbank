create table card
    (card_id numeric(12) generated always as identity,
    person_id numeric(12),
    type varchar(8) default 'debit' not null,
    card_number varchar(16) not null,
    cvc varchar(4) not null,
    status varchar(16) default 'active' not null,
    created timestamp with time zone default current_timestamp not null,
    modified timestamp with time zone,
    primary key (card_id),
    foreign key (person_id) references person,
    unique (card_number));