create table account
    (account_id numeric(12) generated always as identity,
    account_number varchar(20) not null,
    type varchar(10) default 'checking' not null,
    interest_rate numeric(5, 3) default 0 not null,
    min_balance numeric(4, 0) default 0 not null,
    created timestamp with time zone default current_timestamp not null,
    primary key (account_id),
    unique (account_number));