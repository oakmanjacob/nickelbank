create table branch
    (branch_id numeric(8) generated always as identity,
    address_id numeric(12) not null,
    type varchar(8) default 'full' not null,
    primary key (branch_id),
    foreign key (address_id) references address);