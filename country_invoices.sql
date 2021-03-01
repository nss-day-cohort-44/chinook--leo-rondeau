--14 Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT COUNT(i.BillingCountry) AS TotalInvoices, i.billingCountry AS Country
FROM Invoice i
GROUP BY i.billingcountry