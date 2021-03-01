--9 What are the respective total sales for each of those years 2009,2011?

SELECT
    TotalSales, InvoiceYear
    
FROM
    (
        SELECT
            "$"||printf("%.2f", SUM(i.Total)) AS TotalSales,
            
            strftime('%Y', i.InvoiceDate) AS InvoiceYear
        FROM
            Invoice i                        
        WHERE
            InvoiceYear = '2009'
            OR InvoiceYear = '2011'
        GROUP BY 
            InvoiceYear
    ) ;

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
            AND InvoiceYear = '2009'
        GROUP BY
            e.FirstName|| ' ' || e.LastName,
            InvoiceYear
    ) AS Sales