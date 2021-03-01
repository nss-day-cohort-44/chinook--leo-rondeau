--11 Looking at the InvoiceLine table, provide a query that 
--COUNTs the number of line items for each Invoice. HINT: GROUP BY

SELECT 
    NumberOfLineItems,InvoiceId
From (
        SELECT Count(InvoiceId) AS NumberOfLineItems,
        InvoiceId
        FROM InvoiceLine
        GROUP BY InvoiceId
)