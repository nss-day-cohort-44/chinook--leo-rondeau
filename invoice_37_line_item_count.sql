--10. Looking at the InvoiceLine table, provide a query that COUNTs
-- the number of line items for Invoice ID 37.


SELECT Count(InvoiceId) AS NumberOfLinesItems
From InvoiceLine
Where InvoiceId = 37;
