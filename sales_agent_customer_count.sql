--21 Provide a query that shows the count of customers 
--assigned to each sales agent.

SELECT COUNT(c.customerid) AS TotalCustomers,
         e.firstName|| ' '|| e.lastname AS SalesAgent
FROM customer c,
    employee e
WHERE c.supportrepid = e.EmployeeId
GROUP BY SalesAgent