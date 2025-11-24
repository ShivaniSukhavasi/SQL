set SQL_SAFE_UPDATES=0;
select * from salesperson;
SELECT * FROM CONTACT;
SELECT * FROM salesterritory;
# Firstname, Lastname, salesYTD, sales last year
select FirstName,LastName,SalesYTD,SalesLastYear from contact
join individual using (ContactID)
join customer using (CustomerID)
join salesterritory using (TerritoryID);
# Select 
select FirstName,LastName,Gender,Maritalstatus,Name,GroupName from contact
join employee using (ContactID)
join employeedepartmenthistory using (EmployeeID)
join department using (DepartmentID);
# work on Product, product category, product subcategory
drop table product_table;
create table product_table
select a.Name as product,b.Name as subcategory,c.Name as category, ListPrice,color,
SafetyStockLevel,Weight,Size,StandardCost,quantity from product
a join productsubcategory b using (ProductSubcategoryID) 
join productcategory c using (ProductCategoryID)
join productinventory using (ProductID);
 
 select * from product_table;
# freq of categories
select Name,count(Name) as Freq from productcategory group by Name order by Freq desc;
# Total quantity of categorie
# Total quantity of subcategory of Mountain bikes
# Total quantity of Helmets with red color
Select category,sum(quantity) from product_table
group by category;
select subcategory,sum(quantity) from product_table
where subcategory= 'Mountain Bikes' group by subcategory;
# Total quantity of Helmets with red color
select subcategory,color,sum(quantity) from product_table
where subcategory='Helmets' and color='Red';
# What is the Average ListPrice of Red Helmets?
select avg(ListPrice),subcategory,color from product_table
where subcategory='Helmets' and color='Red';
# What is Average standard cost of Mountain bikes
select avg(standardcost),subcategory from product_table
where subcategory='Mountain bikes';
# create a new variable from Profit= List price-standardcost
alter table product_table drop Profit;
alter table product_table add Profit float(10);
update product_table set Profit=ListPrice-standardcost;
# Top 20 highest propfit products
select * from product_table;
select distinct product,Profit from product_table order by Profit desc limit 20;
# Average profit by sub category
select subcategory,avg(Profit) from product_table group by subcategory;
 drop table product_table;
 create table product_table 
 select a.Name as Product, b.Name as Subcategory, c.Name as category, d.name as location,
 ListPrice,color,SafetyStockLevel,Weight,Size,StandardCost,quantity from product a join productsubcategory b 
 using (productsubcategoryID)
join productcategory c using (productcategoryID)
join productinventory using (ProductID)
join location d using (locationID);
select * from product_table;






 
