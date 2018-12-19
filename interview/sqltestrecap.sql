/* Runthe following topics on https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_wildcard_charlist2&ss=-1 */

/* Count and group by */

select count(o.OrderID), c.CustomerName
FROM Customers c
INNER JOIN Orders o on c.CustomerID = o.CustomerID
-- INNER JOIN should go after FROM i think - where before does not work.
where (c.CustomerName like "%Be%" 
		OR c.CustomerName like "%sn%")
-- this is filter on already found records from the join
and o.OrderDate < "1996-08-30"
group by c.CustomerName
-- group by is so strong - hand by hand with count / avg / sum

/*
Pattern matching
% any
_ only one char
[ab] char is a or b
*/

SELECT o.orderid, c.city
from orders o
inner join customers c on c.customerId = o.customerId
where city like "[ab][ab]%"

SELECT o.orderid, c.city
from orders o
inner join customers c on c.customerId = o.customerId
where o.orderid like "__[34]%"
