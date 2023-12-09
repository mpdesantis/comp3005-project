-- reset.sql
-- COMP 3005: Project
-- Michael De Santis
-- CUID: 101213450

drop table 
(
    Members,
    Trainers,
    Administrators,
    Equipment,
    Tiers,
    Sessions,
    Workshops,
    ServiceRequests,
    Subscriptions,
    Participates,
    Attends,
    Phones,
    Emails
    CASCADE
);
    


