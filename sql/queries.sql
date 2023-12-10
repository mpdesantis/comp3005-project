-- queries.sql
-- COMP 3005: Project
-- Michael De Santis
-- CUID: 101213450

-- Queries --

-- Query 1. Query the first and last names of all members.
select first_name, last_name 
from Members;

-- Query 2. Query the address of all members who have joined after 2022-06-06
select house_number, street, postal_code
from Members
where join_date > to_date('2022-06-06', 'YYYY-MM-DD');

-- Query 3. Query the total number of workshops being faciliated by each trainer.
select first_name, last_name, count(trainer_id) as workshops_facilitated
from Trainers natural join Workshops
group by first_name, last_name;

-- Query 4. Query the machine type, manufacturer, and complaints of all gym machines with unresolved service requests. 
select type, manufacturer, comment
from Equipment natural join
(
    select equipment_id, comment
    from ServiceRequests
    where date_resolved is null
);

-- Query 5. Query all Administrators who earn over $55000.
select first_name, last_name 
from Administrators
where salary > 55000;

-- Query 6. Register Gary Lasagna for the Power Pilates workshop.
insert into Participates 
(
    member_id,
    workshop_id
)
values 
(
    (
        select member_id
        from Members
        where first_name='Gary' and last_name='Lasagna'
    ),
    (
        select workshop_id
        from Workshops
        where name='Power Pilates'
    )
);

-- Query 7. Give Annie Admin a raise to $62000.
update Administrators 
set salary=62000
where first_name='Annie' and last_name='Admin';

-- Query 8. Fire the Administrator named Peter Pencils.
delete from Administrators
where first_name='Peter' and last_name='Pencils';

--Query 9. Determine the Trainer's name who is running the Burly Bending workshop.
select first_name, last_name
from Workshops natural join Trainers
where name='Burly Bending';

-- Query 10. Determine the name and salary of the lowest paid Trainer.
select first_name, last_name, salary
from Trainers
order by salary asc
limit 1;

