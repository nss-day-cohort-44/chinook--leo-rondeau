--22 Provide a query that shows the total sales per country.

SELECT 
    "$" || printf("%.2f", SUM(i.total)) AS TotalSales, 
    i.billingcountry AS Country
FROM invoice i
GROUP BY i.billingcountry