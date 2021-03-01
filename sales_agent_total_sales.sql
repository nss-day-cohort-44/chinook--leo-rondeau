--18 Provide a query that shows total sales made by each sales agent.

SELECT
    TotalSales,
    EmployeeName
FROM
    (
        SELECT
            "$"||printf("%.2f", SUM(i.Total)) AS TotalSales,
            e.FirstName|| ' ' || e.LastName AS EmployeeName,
            strftime('%Y', i.InvoiceDate) AS InvoiceYear
        FROM
            Invoice i,
            Employee e,
            Customer c
        WHERE
            i.CustomerId = c.CustomerId
            AND c.SupportRepId = e.EmployeeId
            AND InvoiceYear = '2009'
        GROUP BY
            e.FirstName|| ' ' || e.LastName,
            InvoiceYear
    ) AS Sales