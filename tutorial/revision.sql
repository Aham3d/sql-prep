-- revision 

SELECT saleDate, amount, Customers
FROM sales; 

SELECT saledate, amount, boxes, amount / boxes AS 'amoung per box' 
from sales;

select *
from sales
WHERE amount > 10000; 

select * from sales 
where amount > 10000
order by amount desc; 

select * from sales 
where GeoID = 'g1'
order by pid, amount desc; 

select * from sales
where amount > 10000 and saledate >= '2022-01-01';

select saledate, amount from sales 
where amount > 10000 and year(SaleDate) = 2022
order by amount desc;

select * from sales
where Boxes between 0 and 50; 

select saledate, amount, boxes, weekday(saledate) as 'day of week'
from sales
where weekday(saledate) = 4; 

select * from people; 

select * from people 
where team = 'delish' or team = 'yummies';

select * from people
where team in('delish', 'jucies'); 

select * from people 
where salesperson like 'b%'; 

select 
	SaleDate, Amount, 
	case when amount < 1000 then 'under 1k'
		when amount < 5000 then 'under 5k'
        when amount < 10000 then 'under 10k'
		else '10k or more'
		end as 'amount_category'
from sales;

select s.SPID, p.SPID, s.SaleDate, s.amount, p.Salesperson 
from sales s
join people p 
	on p.SPID = s.SPID;
    
select s.saledate, s.Amount, pr.Product
from sales s
left join products pr 
	on pr.pid = s.PID;
    
select s.saledate, s.Amount, pr.Product, p.Salesperson, p.team
from sales s
join products pr 
	on pr.pid = s.PID
join people p 
	on p.SPID = s.SPID;

select s.saledate, s.Amount, pr.Product, p.Salesperson, p.team
from sales s
join products pr 
	on pr.pid = s.PID
join people p 
	on p.SPID = s.SPID
where s.amount < 500 and p.team = 'delish';

select s.saledate, s.Amount, pr.Product, p.Salesperson, p.team
from sales s
join products pr 
	on pr.pid = s.PID
join people p 
	on p.SPID = s.SPID
where s.amount < 500 and p.team = '';

select s.saledate, s.Amount, pr.Product, p.Salesperson, p.team
from sales s
join products pr 
	on pr.pid = s.PID
join people p 
	on p.SPID = s.SPID
join geo g
	on g.GeoID = s.GeoID
where s.amount < 500 and p.team = '' and g.Geo in ('new zealand', 'india');

select GeoID, sum(amount), avg(amount), sum(Boxes)
from sales
group by GeoID; 

select pr.category, p.Team, sum(boxes), sum(amount)
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
group by pr.Category, p.team;

select pr.product, sum(s.amount) as 'total amount'
from sales s 
join products pr on pr.pid = s.pid
group by pr.product 
order by `total amount` desc
limit 10; 