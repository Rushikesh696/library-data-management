-- create database
create database library;

-- use database
use library;

-- create table 
-- authors
create table authors(book_authors_id int, 
name varchar(255));

-- book copies 
create table book_copies(book_copies_BookID int, book_copies_BranchID int, book_copies_No_Of_Copies int);

-- book loans
create table book_loans( book_loans_BookID int, 
book_loans_BranchID int, 
book_loans_CardNo int,
book_loans_DateOut varchar(255), 
book_loans_DueDate varchar(255));

-- books
 create table books( book_book_id int, title varchar(255), 
 book_publisher_name varchar(255));
 
 -- borrower
 create table borrower ( borrower_cardno int, 
 borrower_name varchar(255), borrower_address varchar(255), 
 borrower_phone varchar(255));
 -- library branch
create table library_branch(library_branch_BranchID int auto_increment primary key, 
library_branchname varchar(255), 
library_branch_address varchar(255));

-- publisher
create table publisher( publisher_name varchar(255), 
publisher_address varchar(255),
publisher_phone varchar(255));

-- show table 
select * from authors;
select * from book_copies;
select * from book_loans;
select * from books;
select * from borrower;
select * from library_branch;
select * from publisher;
drop table library_branch;

-- How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
select sum(book_copies_BookID) as count_copies, title, library_branchname
from books b 
join book_copies bc on b.book_book_id=bc.book_copies_BookID
join library_branch lb on bc.book_copies_BranchID=lb.library_branch_BranchID
where library_branchname='Sharpstown'
and title='The Lost Tribe';

-- How many copies of the book titled "The Lost Tribe" are owned by each library branch?
select book_copies_BookID, library_branchname, title
from books b 
join book_copies bc on b.book_book_id=bc.book_copies_BookID
join library_branch lb on bc.book_copies_BranchID=lb.library_branch_BranchID
where title='The Lost Tribe';

-- Retrieve the names of all borrowers who do not have any books checked out.
select borrower_name, book_loans_DateOut, book_loans_DueDate
from borrower b
join book_loans bl on b.borrower_cardno=bl.book_loans_CardNo
where book_loans_DateOut is null;