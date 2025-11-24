-- SQL(Structured Query Language) which is a standard language for accessing and manipulating mutiple databases
-- DQL: Data Query Language 
 -- Only Command is select
--DDL Data Definition Language
-- Commands are Create,Alter,Drop
-- DML - Data Modification Language
-- Commands are Insert,Update,Delete
-- DCL- Data Control Language
-- Commands are Grant,Revoke

--Data types in SQL
--Bigint,int,smallint,tinyint,decimal(s),char,varchar,text,date,time,year
--decimals format decimal(size,no.of digits after decimal), date(yy/mm/dd),time(hh/mm/ss)

--Constraints: Specific rules for data
-- Constraints are notnull,unique,default,primary key


create database Studentdata
use Studentdata
-- A table is an Object with Rows and Columns, rows are records and columns are fields or attributes

create table studentinfo (
StuID numeric(4) primary key,
StuNam varchar(255),
StuProg varchar(255),
StuDept Varchar(255),
DeptID numeric(4),
StuEma varchar(255) unique );

-- to obtain tableinfo
sp_help studentinfo

-- to insert values into table
Insert into studentinfo values (1,'Ravi','Bachelors','Economics','2021','raviba@gmail.com');
Insert into studentinfo values (2,'Ramesh','Masters','Statistics','2020','rameshcc@gmail.com');
Insert into studentinfo values (3,'Rakesh','Bachelors','Commerce','2019','rakeshdd@gmail.com');
Insert into studentinfo values (4,'Keshava','Masters','Commerce','2019','keshavacs@gmail.com');
Insert into studentinfo values (5,'Shanaya','Bachelors','Business','2021','shanayashh11@gmail.com');
drop table studentinfo

create table studentsinfo (
StuID numeric(4) primary key,
StuNam varchar(255),
StuProg varchar(255),
StuDept Varchar(255),
DeptID numeric(4),
StuEma varchar(255) unique );
Insert into studentsinfo values (1,'Ravi','Bachelors','Economics','2021','raviba@gmail.com');
Insert into studentsinfo values (2,'Ramesh','Masters','Statistics','2020','rameshcc@gmail.com');
Insert into studentsinfo values (3,'Rakesh','Bachelors','Commerce','2019','rakeshdd@gmail.com');
Insert into studentsinfo values (4,'Keshava','Masters','Commerce','2019','keshavacs@gmail.com');
Insert into studentsinfo values (5,'Shanaya','Bachelors','Business','2021','shanayashh11@gmail.com');
Insert into studentsinfo values (5,'Shankar','Bachelors','Business','2081','shankaraah15@gmail.com');

-- to update the data in a table
update studentsinfo set StuProg= 'Masters' where StuID= 3
select * from studentsinfo
delete from studentsinfo
where StuID= 5
select * from studentsinfo
drop table studentsinfo

create table studenttinfo (
StuID numeric(4) primary key,
StuNam varchar(255),
StuProg varchar(255),
StuDept Varchar(255),
DeptID numeric(4),
StuEma varchar(255) unique );
Insert into studenttinfo values (1,'Ravi','Bachelors','Economics','2021','raviba@gmail.com');
Insert into studenttinfo values (2,'Ramesh','Masters','Statistics','2020','rameshcc@gmail.com');
Insert into studenttinfo values (3,'Rakesh','Bachelors','Commerce','2019','rakeshdd@gmail.com');
Insert into studenttinfo values (4,'Keshava','Masters','Commerce','2019','keshavacs@gmail.com');
Insert into studenttinfo values (5,'Shanaya','Bachelors','Business','2021','shanayashh11@gmail.com');

-- to obtain info about the data from tables
select * from studenttinfo
select * from studenttinfo where StuID = 3

-- to obtain distinct values from a table
select distinct deptid from studenttinfo

--where clause
select * from studenttinfo where DeptID= 2019

--And operator
select * from studenttinfo where StuProg= 'Bachelors' and DeptID= 2021

--Or Operator
select * from studenttinfo where StuProg= 'Bachelors' or DeptID= 2021

--Not Operator
select * from studenttinfo where not StuProg= 'Bachelors'

--Like operator is used to extract those records which follows a particular pattern
select * from studenttinfo where StuNam like 'r%'

--Between operator is used to extract those records which are in a defined range
select * from studenttinfo where StuID between 1 and 4

-- Top Clause: To fetch topN records from a table
select top 3 * from studenttinfo

-- to alter table data
alter table studenttinfo add StuAddres varchar(255)
alter table studenttinfo drop column StuAddres
sp_help studenttinfo
insert into studenttinfo values (6,'Rana','Masters','Arts','2022','ranaddu@gmail.com','Guntur');
select * from studenttinfo

-- Delete table
-- Truncate is permanently deleting and there is no roleback.Conditions cannot be applied.
delete studenttinfo
truncate table studenttinfo

create table Deptinfo (
StuId numeric(4) primary key,
DeptId numeric(4),
Studept varchar(255),
StuName varchar(255) not null);
insert into Deptinfo values(11,2021,'Economics','Ravi');
insert into Deptinfo values(22,2022,'Statistics','Ramesh');
insert into Deptinfo values(33,2019,'Commerce','Rakesh');
select * from Deptinfo
sp_help deptinfo

use Studentdata
drop table studenttinfo
create table studenttinfo (
StuID numeric(4) primary key,
StuNam varchar(255),
StuProg varchar(255),
StuDept Varchar(255),
DeptID numeric(4),
StuEma varchar(255) unique );
-- for foreign key
deptID int references deptinfo(DeptID)

Insert into studenttinfo values (1,'Ravi','Bachelors','Economics','2021','raviba@gmail.com');
Insert into studenttinfo values (2,'Ramesh','Masters','Statistics','2020','rameshcc@gmail.com');
Insert into studenttinfo values (3,'Rakesh','Bachelors','Commerce','2019','rakeshdd@gmail.com');
Insert into studenttinfo values (4,'Keshava','Masters','Commerce','2019','keshavacs@gmail.com');
Insert into studenttinfo values (5,'Shanaya','Bachelors','Business','2021','shanayashh11@gmail.com');

-- creating relationship between three tables by Joins 
-- Inner Join only returns those records which have matching values in both tables,also known as simple join.

select * from studenttinfo
select * from Deptinfo
select studenttinfo.StuNam, studenttinfo.StuID,studenttinfo.DeptID,Deptinfo.DeptId
from studenttinfo
inner join Deptinfo on studenttinfo.DeptID= Deptinfo.DeptId

-- Left Join returns all the records from left table, and matched records from right table.
select studenttinfo.StuNam,studenttinfo.DeptID,studenttinfo.StuDept,Deptinfo.StuId,Deptinfo.DeptId
from studenttinfo
left join Deptinfo on studenttinfo.DeptID= Deptinfo.DeptId

--Rightt Join returns all the records from right table, and matched records from left table.
select studenttinfo.StuNam,studenttinfo.DeptID,studenttinfo.StuDept,Deptinfo.StuId,Deptinfo.DeptId
from studenttinfo
right join Deptinfo on studenttinfo.DeptID= Deptinfo.DeptId

-- Full Join returns all the values from Left table and all the records from right table, with null values in place where the join condition doesnot met.
select studenttinfo.StuNam,studenttinfo.DeptID,studenttinfo.StuDept,Deptinfo.StuId,Deptinfo.DeptId
from studenttinfo
Full join Deptinfo on studenttinfo.DeptID= Deptinfo.DeptId

--Update using Join
update studenttinfo set DeptID= studenttinfo.DeptID+ 1
from studenttinfo
join deptinfo on  studenttinfo.DeptID = deptinfo.DeptId
where Deptinfo.Studept= 'Commerce'

select * from studenttinfo

-- Delete using join
delete studenttinfo 
from studenttinfo
join deptinfo on  studenttinfo.DeptID = deptinfo.DeptId
where Deptinfo.Studept= 'commerce'

-- Union Operator( No.of Columns of tables should be same)
create table table2( Tab2Id numeric, tab2nam varchar(20), tab2loca varchar(20));
insert into table2 values (1,'Rajesh','desktop')
insert into table2 values (2,'Kavita','documents')
insert into table2 values (3,'Swapna','downloads')
insert into table2 values (4,'Mala','This PC')
insert into table2 values (5,'Navya','photos')

create table table3( Tab3Id numeric, tab3nam varchar(20), tab3loca varchar(20));
insert into table3 values (10,'Kanna','desktop')
insert into table3 values (20,'Shiva','documents')
insert into table3 values (30,'Bunny','videos')

select * from table2 union select * from table3
select * from table2 union all select * from table3

-- Except Operator
select * from table2 except select * from table3

-- Intersect Operator
select * from table2 intersect select * from table3

-- View: is a virtual table based on a result of a statement
create view view_of_deptId AS 
select * from studenttinfo
where DeptID= 2020

select * from view_of_deptId
drop view view_of_deptId

-- Create temporary table
-- Syntax: create table #table_name.
create table #table4 (tab4id numeric,tab4nam varchar(20), tab4add varchar(20));
select * from #table4

-- Some basic Functions
select DATENAME (YEAR,'2022/07/25')
select DATENAME (DAY,'2022/07/25')
select DATENAME (MONTH,'2022/07/25')
select DATEDIFF(day,'2018/07/26','2022/07/26')
select DATEDIFF(MONTH,'2018/07/26','2022/07/26')
select DATEDIFF(YEAR,'2018/07/26','2022/07/26')
select DATEDIFF(DAYOFYEAR,'2018/07/26','2022/07/26')

select DATEADD(day,2,GETDATE())
select DATEADD(day,15,GETDATE())
select DATEADD(YEAR,2,GETDATE())
select EOMONTH('2022/12/1')
select DATEFROMPARTS(2022,07,26)

select min(stuid) from studenttinfo
select max(stuid) from studenttinfo
select count(deptid) from studenttinfo

select '    kesava'
select LTRIM('    kesava')
select 'kesava   '
select RTRIM('kesava   ')
select '   kesava   '
select LTRIM(RTRIM('   kesava   '))
select '   kesava   '
select TRIM( '   kesava   ')
select SUBSTRING('chenna kesava',1,5)
select SUBSTRING('chenna kesava',4,10)
select SUBSTRING('chenna kesava',2,8)
select CAST('Chenna' as int)
select CAST('24556' as int)
select CAST(345.8 as int)
select CONVERT(int,456.7)
select CONVERT(int,'456')
select convert(varchar,'28-7-2022',101)
select CHOOSE(2,'bannaa','apple','coke')
select CHOOSE(5,'bannaa','apple','coke')
select UPPER('kesava')
select LOWER('KESAVA')
select REVERSE('chenna kesava')

-- Order By: is used to sort data drom ascending and descending order,by default results will be in descending order
select * from studenttinfo order by StuID 
select * from studenttinfo order by StuID desc

-- Group By: is used to get aggregate result with repsect to a group 
select AVG(deptId),stuprog from studenttinfo group by StuProg

-- Having Clause: is used in combination with group by to impose multiple conditions on groups
select stuprog, AVG(DeptId) as ave_depttime from studenttinfo
group by StuProg
Having AVG(DeptId)> 2019

-- to remove null values in columns using isnull function
create table devi( id numeric,namee varchar(255),mail varchar(255),addresse varchar(255))
insert into devi values(1,'devi','devi89@gmail.com','sattenapalli')
insert into devi values(2,'devison','devison389@gmail.com','begampalli')

update devi set namee= null where id=1
select * from devi
select ISNULL(namee,'kumar') from devi

select IIF(500>1000,'True','False')
select TRY_CAST('shoot' as int)
select TRY_CAST('546' as int)
select TRY_CONVERT(int,2349.9)
select TRY_CONVERT(int,'shoot')

-- case statements, which helps in multiple-way decision making
-- checking multiple conditions with case statements
create table salaries (salid numeric primary key, emname varchar(255), empsalar numeric, empadd varchar(255))
insert into salaries values(1,'ram',20000,'snagabad')
insert into salaries values(2,'rahim',25000,'kairatabad')
insert into salaries values(3,'Shyam',22000,'karimnagar')
insert into salaries values(4,'rahimann',27000,'karnataka')
insert into salaries values(5,'radha',30000,'golkonda')

select emname,empsalar,
CASE
 WHEN empsalar>=20000 and empsalar <= 25000 then 'Associate'
 when empsalar>=25001 and empsalar <= 28000 then 'Senior Associate'
 else 'Specialist' end as 'Role' from salaries

 select emname,empsalar,salid,
CASE
 WHEN empsalar>=20000 and empsalar <= 25000 then 'Associate'
 when empsalar>=25001 and empsalar <= 28000 then 'Senior Associate'
 else 'Specialist' end as 'Role' from salaries

 --creating functions(user-defined functions).There are 2 
 --1. Scalar Valued Function(will alwyas return a single value)
 create function firstfunction( @sales int,@cost int)
 returns int
 as 
 begin
 return @sales-@cost
 end

select dbo.firstfunction(20000,10000)

 -- 2.Table Valued Function
 --Let's Create a table first
 create table table1(eId numeric primary key,eenamee varchar(20),egender varchar(20), eerole Varchar(200));
 Insert into table1 values(10,'Rahul','Male','Associate')
 Insert into table1 values(20,'Ravi','Male','Associate')
 Insert into table1 values(30,'Reena','Female','Associate')
 Insert into table1 values(40,'Rishita','Female','Senior Associate')
 Insert into table1 values(50,'Rakesh','Male','Senior Associate')
 Insert into table1 values(60,'Asha','Female',' Senior Associate')
 Insert into table1 values(70,'Atul','Male','Manager')
 Insert into table1 values(80,'Nina','Female','Manager')

 select * from table1

 create function role_predi(@Role as varchar(20))
 returns table
 as return (
 select * from table1 where eerole= @Role
 )
 select * from dbo.role_predi('Associate')
 select * from dbo.role_predi('Senior Associate')
 select * from dbo.role_predi('Manager')

 -- Stored Procedure: is a prepared sql code which can be saved and reused.
 create procedure proce_studentid as 
 select stuid from studenttinfo
 go;
exec proce_studentid

create procedure proce_studentinfo as 
 select * from studenttinfo
 go;
 exec proce_studentinfo

 -- Procedure with Parameters
 create procedure proce_studentprograms @programs varchar(20)
 as
 select * from studenttinfo 
 where studenttinfo.StuProg= @programs 
 go

 exec proce_studentprograms @programs= 'Bachelors'

 -- Exception Handling
 -- Exception: An error condition during a program is called an Exception. Handling these errors is called exception Handling
 -- SQL provides try/catch blocks for exception handling

 declare @val1 int;
 declare @val2 int;

 begin try
 set @val1= 30
 set @val2= 30/0
 end try

 begin catch
 print error_message()
 end catch

 begin try
 select stunam + deptid from studenttinfo
 end try
 begin catch
 print'Cannot add a numerical value with string value'
 end catch
 go

 -- Transaction
 -- Transaction is a group of commands that changes data stored in a database
begin transaction
update studenttinfo set DeptID= 2020 where StuNam='Ravi'
commit transaction 
select * from studenttinfo

begin try
begin transaction 
update studenttinfo set DeptID= 2021 where StuNam= 'Ravi'
update studenttinfo set DeptID= 2020/0 where StuNam= 'Ramesh'
commit transaction
print 'transaction commited'
end try
begin catch
rollback transaction
print 'rollback transaction'
end catch

begin try
begin transaction 
update studenttinfo set DeptID= 2021 where StuNam= 'Ravi'
update studenttinfo set StuProg = 'Bachelors' where StuNam= 'keshava'
commit transaction
print 'transaction commited'
end try
begin catch
rollback transaction
print 'rollback transaction'
end catch

 -- steps to ensure Data Integrity
 --1.Check constraint ,No duplicate Values,add unique constraint.
 --difference between unique and primary key, in unique case there are no duplicates and accepts one 1 null value,if not null constraint is not applied.
 -- primary key doesn't accept null Values.
 -- Transactions
