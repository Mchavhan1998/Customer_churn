--Get all the details from the person table including email ID, phone number and phone number type
select * from person.Person             -- all details
select * from person.EmailAddress        --email adrees
select * from person.PhoneNumberType    --- ph.num type
select * from person.PersonPhone       ----phone number

select 
P.BusinessEntityID,
P.FirstName,
P.LastName,
E.EmailAddress,
PT.name as phonenumbertype,
PP.PhoneNumber
from
Person.Person P
left join person.EmailAddress E on P.BusinessEntityID=E.BusinessEntityID
left join person.PersonPhone PP on P.BusinessEntityID=PP.BusinessEntityID
left join person.PhoneNumberType PT on PT.PhoneNumberTypeID=PP.PhoneNumberTypeID

---Get the details of the sales header order made in May 2011

select * from sales.SalesOrderHeader
select * from sales.SalesOrderHeader  where MONTH(OrderDate) = 5 AND YEAR(OrderDate) = 2011
select * from sales.SalesOrderHeader where OrderDate BETWEEN '2011-05-01' AND '2011-05-31'

--Get the details of the sales details order made in the month of May 2011
select * from Sales.SalesOrderHeader  SH
select * from Sales.SalesOrderDetail  SO


select * from Sales.SalesOrderDetail SO join sales.SalesOrderHeader SH on SO.SalesOrderID=SH.SalesOrderID
where month (SH.orderDate)=5 and year (SH.orderdate)=2011 

--Get the total sales made in May 2011

select sum(SO.lineTotal) total_sales from Sales.SalesOrderDetail SO join sales.SalesOrderHeader SH 
on SO.SalesOrderID=SH.SalesOrderID
where month (SH.orderDate)=5 and year (SH.orderdate)=2011 

--Get the total sales made in the year 2011 by month order by increasing sales

SELECT DATENAME(MM, SH.OrderDate)  Month,SUM(SO.LineTotal)  TotalSales FROM Sales.SalesOrderDetail  SO 
INNER JOIN Sales.SalesOrderHeader  SH ON SO.SalesOrderID = SH.SalesOrderID
WHERE YEAR(SH.OrderDate) = 2011
GROUP BY DATENAME(MM, SH.OrderDate)
ORDER BY TotalSales ASC
--Get the total sales made to the customer with FirstName='Gustavo'and LastName ='Achong'select * from person.Person Pselect * from Sales.SalesOrderHeader  SHSELECT
    SUM(SOH.TotalDue) AS TotalSales
FROM
    Sales.SalesOrderHeader AS SOH
    INNER JOIN Person.Person AS P ON SOH.CustomerID = P.BusinessEntityID
WHERE
    P.FirstName = 'Gustavo' AND P.LastName = 'Achong'
