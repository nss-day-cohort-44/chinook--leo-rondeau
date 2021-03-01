--12 Provide a query that includes the purchased track name with each invoice line item.

SELECT TrackName, InvoiceId
FROM
(
    SELECT 
    t.Name AS TrackName,
    i.invoiceid AS InvoiceId
    FROM
        Track t,
        invoiceline i
    WHERE
        t.trackid = i.trackid

)