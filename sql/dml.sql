-- dml.sql
-- COMP 3005: Project
-- Michael De Santis
-- CUID: 101213450

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

-- RESET DATA

delete from Members;
delete from Trainers;
delete from Administrators;
delete from Equipment;
delete from Tiers;
delete from Sessions;
delete from Workshops;
delete from ServiceRequests;
delete from Subscriptions;
delete from Participates;
delete from Attends;
delete from Phones;
delete from Emails;
    

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------




-- Populate Members Table
INSERT INTO Members (
    first_name, 
    last_name, 
    username, 
    house_number, 
    street, 
    postal_code, 
    credit_card, 
    join_date
)
VALUES 
(
    'Reggie', 
    'Mustache',
    'rmustache',
    10,
    'Mustache Boulevard',
    'A1A B2B',
    12345678,
    '2023-09-09'
),
(
    'Gary', 
    'Lasagna',
    'glasagna',
    22,
    'Penne Lane',
    'P4S 7AS',
    12345678,
    '2022-12-09'
),
(
    'Rebecca', 
    'Pumpkin',
    'rpumpkin',
    66,
    'Pie Way',
    'B3B B3B',
    44448888,
    '2019-10-11'
),
(
    'Doris', 
    'Doorbell',
    'dingdong42',
    123,
    'Ding Dong Parkway',
    'M3M PAP',
    12345678,
    '2012-07-04'
);

-- Populate Trainers Table
INSERT INTO Trainers (
    first_name,
    last_name,
    salary
)
VALUES 
(
    'Bob', 
    'Bicep',
    66000
),
(
    'Lesley', 
    'Legs',
    76000
),
(
    'Tim', 
    'Trapezoid',
    68000
);


-- Populate Administrators Table
INSERT INTO Administrators (
    first_name,
    last_name,
    salary
)
VALUES 
(
    'Annie', 
    'Admin',
    56000
),
(
    'Sally', 
    'Spreadsheet',
    67000
),
(
    'Rodney', 
    'Rolodex',
    48000
);



-- Populate Equipment Table
INSERT INTO Equipment (
type,
manufacturer
)
VALUES 
( 
    'Ab Machine', 
    'Abme Fitness'
),
( 
    'Chest Press', 
    'Fancy Fitness'
),
( 
    'Leg Press', 
    'Fancy Fitness'
),
( 
    'Rowing Machine', 
    'Fresh Fitness'
),
( 
    'Stationary Bike', 
    'Forward Fitness'
);

-- Pop Tiers Table
INSERT INTO Tiers (
    monthly_amount,
    base_amount,
    tax_amount
)
VALUES 
(
    105,
    100,
    5
),
(
    210,
    200,
    10
),
(
    330,
    300,
    15
);


-- Populate Sessions Table
INSERT INTO Sessions 
(
    trainer_id,
    focus,
    start_time,
    end_time,
    start_date
)
VALUES 
(
    1,
    'cardio',
    '11:00:00',
    '12:00:00',
    '2023-12-19'
),
(
    2,
    'weights',
    '12:00:00',
    '13:00:00',
    '2023-12-20'
),
(
    3,
    'stretch',
    '14:00:00',
    '15:00:00',
    '2023-12-21'
),
(
    2,
    'rolling',
    '15:00:00',
    '16:00:00',
    '2023-12-22'
);

-- Populate Workshops Table
INSERT INTO Workshops 
(
    trainer_id,
    name,
    day_of_week,
    capacity,
    start_time,
    end_time,
    start_date,
    end_date
)
VALUES 
(
    1,
    'Power Pilates',
    'Friday',
    20,
    '15:00:00',
    '16:00:00',
    '2023-12-22',
    '2024-03-22'
),
(
    3,
    'Burly Bending',
    'Tuesday',
    15,
    '09:00:00',
    '10:00:00',
    '2023-12-22',
    '2024-03-22'
),
(
    2,
    'Lethal Legs',
    'Monday',
    25,
    '10:00:00',
    '11:00:00',
    '2023-12-22',
    '2024-03-22'
);

-- Populate ServiceRequests Table
INSERT INTO ServiceRequests 
(
    equipment_id,
    member_id,
    administrator_id,
    date_filed,
    date_resolved,
    comment
)

VALUES 
(
    2,
    3,
    1,
    '2023-12-14',
    '2023-12-16',
    'Machine feels funny.'
),
(
    1,
    2,
    3,
    '2023-12-12',
    NULL,
    'Machine is creaky.'
);

-- Populate Subscriptions Table
INSERT INTO Subscriptions 
(
    member_id,
    administrator_id,
    tier_level
)
VALUES 
(
    1,
    1,
    1
),
(
    2,
    1,
    3
),
(
    3,
    2,
    1
),
(
    4,
    3,
    2
);

-- Populate Participates Table
INSERT INTO Participates 
(
    member_id,
    workshop_id
)
VALUES 
(
    1,
    1
),
(
    1,
    2
),
(
    3,
    1
);

-- Populate Attends Table
INSERT INTO Attends 
(
    member_id,
    session_id
)
VALUES 
(
    2,
    1
),
(
    2,
    3
),
(
    3,
    2
);

-- Populate X Table
INSERT INTO X 
(


)
VALUES 
(
)
);

---- Populate X Table
--INSERT INTO X 
--(
--)
--VALUES 
--(
--)
--);

---- Populate X Table
--INSERT INTO X 
--(
--)
--VALUES 
--(
--)
--);

---- Populate X Table
--INSERT INTO X 
--(
--)
--VALUES 
--(
--)
--);

---- Populate X Table
--INSERT INTO X 
--(
--)
--VALUES 
--(
--)
--);

---- Populate X Table
--INSERT INTO X 
--(
--)
--VALUES 
--(
--)
--);

---- Populate X Table
--INSERT INTO X 
--(
--)
--VALUES 
--(
--)
--);
