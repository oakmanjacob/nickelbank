create table person
    (person_id numeric(12) generated always as identity,
    first_name varchar(64) not null,
    last_name varchar(64) not null,
    email varchar(255) not null,
    phone varchar(16) not null,
    birth_date date not null,
    created timestamp with time zone default current_timestamp not null,
    primary key (person_id),
    unique (email));