--#7 Invoice Total, Customer Name, Country, Sale Agent
--For all Invoices and customers

SELECT InvoiceTotals, CustomerName, SalesAgent, BillingCountry
FROM 
    (
    SELECT i.Total AS InvoiceTotals,
        c.FirstName || ' ' || c.LastName AS CustomerName, 
        e.FirstName || ' ' || e.LastName AS SalesAgent, 
        i.billingcountry AS BillingCountry
    FROM invoice as i,
        Customer as c,
        Employee as e
    WHERE     
        c.customerid = i.customerid
        AND e.EmployeeId = c.supportrepid);

SELECT i.Total, c.FirstName, c.LastName, i.billingcountry
FROM invoice as i
JOIN Customer as c
    on c.customerid = i.customerid;

