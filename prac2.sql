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
-- leftjoin
SELECT count(*) FROM table1
LEFT JOIN TABLE2 ON table1.id=table2.id;
-- rightjoin
SELECT COUNT(*) 
FROM table1
RIGHT JOIN Table2 ON table1.id = table2.id;
-- fulljoin used this method because full join was showing error so did union of left join of the both table.
SELECT COUNT(*)
FROM Table1
LEFT JOIN Table2 ON Table1.id = Table2.id

UNION

SELECT COUNT(*)
FROM Table2
LEFT JOIN Table1 ON Table2.id = Table1.id;

