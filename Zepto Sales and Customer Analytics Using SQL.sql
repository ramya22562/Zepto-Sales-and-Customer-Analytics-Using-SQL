create database zepto;
use zepto;
select*from zepto_excel;
show tables;
select count(*) from zepto_excel;

-- to find null values 
select*from zepto_excel
where category is null;

-- perform exploratory data analysis(EDA)
select count(*) as total_products
from zepto_excel;

-- different categories 
 select distinct category from zepto_excel;
 
 -- highest price product
 select name,mrp from zepto_excel
 order by mrp desc
 limit 1;
 
 
 -- average price by product
 select category,avg(mrp) as avg_price
 from zepto_excel
 group by category;
 
 -- top 5 expensive product
 select name, mrp from zepto_excel
 order by mrp desc
 limit 5;
 
 
  -- category have more product
  select  category,count(*) from zepto_excel
  group by category
  order by category desc
  limit 1;
  
  select*from zepto_excel;
  
  -- product have low stock 
  select category,name,availablequantity
  from zepto_excel
  where availablequantity<10
  order by availablequantity  asc;
  
  
-- cheapest products
select name,mrp from zepto_excel
order by mrp asc
limit 10;


-- most expensive product
select name ,mrp from zepto_excel
order by mrp desc
limit 10;


-- category gives more discount
select category,avg(discountedsellingprice) as avg_discount
from zepto_excel
group by category
order by avg_discount desc; 


-- category gives more discount
select category,discountedsellingprice
from zepto_excel
order by discountedsellingprice desc
limit 1; 

-- category gives less discount
select category,discountedsellingprice
from zepto_excel
order by discountedsellingprice asc
limit 1; 

-- rank() 
select name,mrp,
rank() over(order by mrp desc)
as ranking
from zepto_excel;

-- dense_rank() 
select name,mrp,
dense_rank() over(order by mrp desc)
as ranking
from zepto_excel;
 