--  Provide a query that shows the invoices associated with 
-- each sales agent. The resultant table should include the Sales
--  Agent's full name.

SELECT i.*, e.FirstName, e.LastName
FROM Invoice AS i
JOIN customer AS c
    ON i.CustomerId = c.CustomerId
JOIN Employee as e
    ON c.supportrepid = e.employeeid




