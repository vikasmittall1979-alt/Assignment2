Drop database if exists DDL_Commands;
create DATABASE DDL_Commands;
use  DDL_Commands;

CREATE TABLE my_table(
id INT,
name VARCHAR(100) Not NULL,
age int NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO my_table (id, name, age) VALUES
(1, 'Rohit', 25),
(2, 'Sachin', 35),
(3, 'Vikas', 28);

-- Create my_table2
-- Create my_table2
CREATE TABLE my_table2(
    id INT,
    description VARCHAR(255) NOT NULL
);

-- Insert data into my_table2
INSERT INTO my_table2 (id, description) VALUES
(1, 'Item 1'),
(2, 'Item 2'),
(3, 'Item 3');

-- (1) Rename a column in an existing table..
alter table my_table rename column name to full_name;
select * from my_table;

-- (2) Sql query to change the data type of the age column..
alter table my_table modify column age bigint not null;

-- (3) sql query to add a new column..
alter table my_table add column email varchar(100);

-- (4) sql query to add a new column..
alter table my_table add column middle_name varchar(50) after full_name;
select * from my_table;

-- (5) sql query to add a new column..
alter table my_table add column EMP_Rank int first;
select * from my_table;

-- (6) sql query to modify..
alter table my_table modify column created_at DATETIME;

-- (7) sql query to change the data type of the description column..
alter table my_table2 modify column description text not null;

-- (8) sql query to make the name column..
alter table my_table modify column full_name varchar(100) null;

-- (9) sql query to add a primary key constarint..
alter table my_table add primary key(id);
select * from my_table;

-- (10) sql query to drop the column..
alter table my_table drop column middle_name;
select * from my_table;

-- (11) sql query to rename the column..
alter table my_table rename column email to email_address;
select * from my_table;
alter table my_table rename column email_address to email;
select * from my_table;

-- (12) sql query to change the age column..
alter table my_table modify column age bigint null;

-- (13) sql query to add a foreign key..
alter table my_table2 add constraint fk_id foreign key (id) references my_table(id);

-- (14) sql query to remove a foreign key..
alter table my_table2 drop foreign key fk_id;

-- (15) sql query to modify the name column..
alter table my_table modify column full_name varchar(200) null;
select * from my_table;

-- (16) sql query to drop the table from the database..
 drop table my_table2;
 
 -- (17) sql query to drop the foreign key constraint..
 alter table my_table2 drop foreign key fk_id;
 
 -- (18)  sql query to drop the primary key constraint.. 
 alter table my_table drop primary key;
 
 -- (19) sql query to drop a column name..
 alter table my_table drop column age;
 select * from my_table;
 
 -- (20) sql query to drop the database..
 drop database if exists DDL_Commands;
 

















