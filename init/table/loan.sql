create table loan
    (loan_id numeric(12) generated always as identity,
    person_id numeric(12),
    type varchar(10) default 'unsecured' not null,
    amount numeric(10,2) not null,
    interest_rate numeric(5,3) default 0 not null,
    monthly_payment numeric(10,2)default 0 not null,
    created timestamp with time zone default current_timestamp not null,
    primary key (loan_id),
    foreign key (person_id) references person);