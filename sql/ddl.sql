-- ddl.sql
-- COMP 3005: Project
-- Michael De Santis
-- CUID: 101213450

-- Tables --

-- Table: Members
create table Members  (
    member_id serial unique not null,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    username varchar(255) not null,
    house_number int,
    street varchar(255) not null,
    postal_code varchar(255) not null,
    credit_card int,
    join_date date default current_date,

    primary key (member_id)
);


-- Table: Trainers
create table Trainers  (
    trainer_id serial unique not null,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    salary int,

    primary key (trainer_id)
);


-- Table: Administrators
create table Administrators  (
    administrator_id serial unique not null,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    salary int,

    primary key (administrator_id)
);


-- Table: Equipment
create table Equipment  (
    equipment_id serial unique not null,
    type varchar(255) not null,
    manufacturer varchar(255) not null,

    primary key (equipment_id)
);

-- Table: Tiers
create table Tiers  (
    tier_level serial unique not null,
    monthly_amount int,
    base_amount int,
    tax_amount int,

    primary key (tier_level)
);


-- Table: Sessions
create table Sessions (
    session_id serial unique not null,
    trainer_id int,
    focus varchar(255) not null,
    start_time time without time zone,
    end_time time without time zone,
    start_date date, 
    end_date date, 

    primary key (session_id),
    foreign key (trainer_id)
        references Trainers
);


-- Table: Workshops
create table Workshops (
    workshop_id serial unique not null,
    trainer_id int,
    name varchar(255) not null,
    day_of_week varchar(255) not null,
    capacity int,
    start_time time without time zone,
    end_time time without time zone,
    start_date date, 
    end_date date, 

    primary key (workshop_id),
    foreign key (trainer_id)
        references Trainers
);


-- Table: ServiceRequests
create table ServiceRequests (
    equipment_id int,
    member_id int,
    administrator_id int,
    date_filed date,
    date_resolved date,
    comment varchar(255) not null,

    primary key (equipment_id, member_id, administrator_id),

    foreign key (equipment_id)
        references Equipment,
    foreign key (member_id)
        references Members,
    foreign key (administrator_id)
        references Administrators
);


-- Table: Subscriptions
create table Subscriptions (
    member_id int,
    administrator_id int, 
    tier_level int,

    primary key (member_id),

    foreign key (administrator_id)
        references Administrators,
    foreign key (tier_level)
        references Tiers
);


-- Table: Participates
create table Participates (
    member_id int,
    workshop_id int,

    primary key (member_id, workshop_id),

    foreign key (member_id)
        references Members,
    foreign key (workshop_id)
        references Workshops
);


-- Table: Attends
create table Attends (
    member_id int,
    session_id int,

    primary key (member_id, session_id),

    foreign key (member_id)
        references Members,
    foreign key (session_id)
        references Sessions
);


-- Table: Phones
create table Phones (
    member_id int,
    number int,

    primary key (member_id, number),

    foreign key (member_id)
        references Members
);


-- Table: Emails
create table Emails (
    member_id int,
    address varchar(255) not null,

    primary key (member_id, address),

    foreign key (member_id)
        references Members
);

