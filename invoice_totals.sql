--Invoice Total, Customer Name, Country, Sale Agent
--For all Invoices and customers

SELECT i.Total, c.FirstName, c.LastName, e.LastName, e.FirstName, i.billingcountry
FROM invoice as i
JOIN Customer as c
    on c.customerid = i.customerid
JOIN Employee as e
    on e.EmployeeId = c.supportrepid
