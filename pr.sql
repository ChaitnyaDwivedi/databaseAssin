create database joins;
create table table1(id int,name varchar(10));
insert into table1(id,name)values
(1, 'a'),
(1, 'a'),
(1, 'a'),
(NULL, NULL),
(1, 'a');
create table table2(id int,name varchar(10));
insert into table2(id,name)values
(NULL, 'Shyam'),
(NULL, 'Ram'),
(1, 'Kushal'),
(2, 'Amit'),
(1, 'Kiran');
-- inner join
select count(*) from table1
inner join table2 on table1.id=table2.id;
-- left join
SELECT count(*) FROM table1
LEFT JOIN TABLE2 ON table1.id=table2.id;
-- right join
SELECT COUNT(*) 
FROM table1
RIGHT JOIN Table2 ON table1.id = table2.id;
-- fulljoin used this method because fulljoin was showing syntax error on the compiler so just took out the union of left join
-- of both the tables.
SELECT COUNT(*)
FROM Table1
LEFT JOIN Table2 ON Table1.id = Table2.id

UNION

SELECT COUNT(*)
FROM Table2
LEFT JOIN Table1 ON Table2.id = Table1.id;

