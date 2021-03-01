--#8 total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?

SELECT
    Count(2009), Count(2011)
FROM
    (
    SELECT 
        strftime('%Y', i.InvoiceDate) as InvoiceYear
    FROM
        Invoice i
    WHERE
        InvoiceYear = '2009' AND '2011'   
);
