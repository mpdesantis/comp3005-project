-- queries.sql
-- COMP 3005: Project
-- Michael De Santis
-- CUID: 101213450

-- Queries --


-- Query 1. First and last names of all members.
select first_name, last_name 
from Members;
-- VERIFIED --

-- Query 2. Address of all members who have joined after 2022-06-06
select house_number, street, postal_code
from Members
where join_date > to_date('2022-06-06', 'YYYY-MM-DD');
-- VERIFIED --

-- Query 3. Total number of workshops being faciliated by each trainer.
select first_name, last_name, count(trainer_id) as workshops_facilitated
from Trainers natural join Workshops
group by first_name, last_name;
-- VERIFIED --

---- Query 4. List of authors who have more than one book in the database.
--select first_name, last_name
--from Authors natural join Books
--group by first_name, last_name
--having count(author_id) > 1;
--
---- Query 5. Names of members who have not borrowed any books.
--select first_name, last_name, count(Borrowing.member_id) as books_borrowed
--from Members full outer join Borrowing
--on Members.member_id=Borrowing.member_id
--group by first_name, last_name
--having count(Borrowing.member_id) = 0;
--
---- Query 6. Most recently published book.
--select title, first_name, last_name, published_date
--from Books natural join Authors
--order by published_date desc
--limit 1;
--
---- Query 7. Publishers and the number of books they've published.
--select publisher_name, count(book_id) as books_published
--from Books natural join Publishers
--group by publisher_name;
--
---- Query 8. List of books that have never been borrowed.
--select Books.title
--from Books full outer join Borrowing
--ON Books.book_id=Borrowing.book_id
--group by Books.book_id, Borrowing.borrow_id
--having count(borrow_date) = 0;
--
---- Query 9. Members who have borrowed books written by "J.K. Rowling".
--select member_id, (first_name || ' ' || last_name) as "member_name"
--from Members natural join 
--(
--    select member_id
--    from Borrowing natural join 
--    (
--        select book_id 
--        from Books natural join
--        (
--            select author_id
--            from Authors
--            where first_name = 'J.K.'
--            and last_name = 'Rowling'
--        )
--    )
--);
--
---- Query 10. Authors whose books have been borrowed more than three times.
--select first_name, last_name, count(book_id) as books_borrowed
--from Authors natural join 
--    (
--        select book_id, author_id
--        from Books natural join Borrowing
--    )
--group by author_id
--having count(author_id) > 3;
--
---- Query 11. Authors whose books have been borrowed more than three times.
--select first_name, last_name, count(book_id) as books_borrowed
--from Authors natural join 
--    (
--        select book_id, author_id
--        from Books natural join Borrowing
--    )
--group by author_id
--having count(author_id) > 3;
--
---- Query 12. Authors whose books have been borrowed more than three times.
--select first_name, last_name, count(book_id) as books_borrowed
--from Authors natural join 
--    (
--        select book_id, author_id
--        from Books natural join Borrowing
--    )
--group by author_id
--having count(author_id) > 3;
--
