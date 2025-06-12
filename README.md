# Library Management System – SQL Project
### Overview
This project simulates a Library Management System using SQL. It includes creating and managing various tables that represent real-world entities such as books, borrowers, branches, authors, publishers, and book loans. It also demonstrates how to query this data to extract meaningful insights and manage library operations.

### Technologies Used
Database: MySQL

SQL Concepts: Database creation, table creation, joins, aggregate functions, and basic data manipulation and retrieval.

### Database Schema
The following tables were created:

authors – Stores information about book authors.

book_copies – Tracks how many copies of each book are available at each branch.

book_loans – Maintains records of book issues, including card number, date out, and due date.

books – Contains book titles and publisher names.

borrower – Stores borrower information like name, address, and phone number.

library_branch – Stores branch names and addresses.

publisher – Contains publisher details including name, address, and contact number.


### Additional Notes
All tables are normalized and use appropriate foreign key references (though not all foreign keys were explicitly defined for simplicity).

The query logic uses JOINs to combine data across multiple tables for meaningful analysis.

The database is named library.


### How to Run
Open your MySQL client or a tool like MySQL Workbench.

Run the CREATE DATABASE and USE commands.

Create each table as defined in the script.

Insert sample data if necessary (not provided here).

Execute the queries to test the functionality.


### Potential Extensions
Add triggers for automatic due date calculation.

Create stored procedures for frequent tasks like issuing or returning books.

Implement role-based access for admin, librarian, and member operations.

### Conclusion
The Library Management System SQL project demonstrates how to design and manage a relational database for a real-world application. Through well-structured tables and meaningful queries, it efficiently handles essential operations such as tracking book copies, managing borrowers, recording book loans, and analyzing branch inventories.

By applying SQL joins, aggregations, and filters, we extracted valuable insights like identifying available book copies per branch and listing inactive borrowers. This project not only reinforces core SQL concepts but also builds a strong foundation for developing larger, more complex database-driven applications in the future.

This system can be further enhanced by integrating it with a front-end application or adding procedures, triggers, and constraints to ensure better data integrity and automation.
