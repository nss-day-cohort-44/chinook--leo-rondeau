--20 Which sales agent made the most in sales over all?


SELECT
    MAX(TotalSales),
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
            
        GROUP BY
            e.FirstName|| ' ' || e.LastName
            
    ) AS Sales