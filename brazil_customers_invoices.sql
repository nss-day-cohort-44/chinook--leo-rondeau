SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer c
INNER JOIN Invoice i on i.CustomerId = c.CustomerId
WHERE Country = "Brazil"
