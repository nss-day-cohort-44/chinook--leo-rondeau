--24 Provide a query that shows the most purchased track of 2013.

SELECT MAX(TrackTotal), TrackName, InvoiceYear
FROM 
    (
        SELECT 
            COUNT(il.trackid) AS TrackTotal,
            strftime('%Y', i.invoicedate) AS InvoiceYear,
            t.name AS TrackName
        FROM
            track t,
            invoiceline il,
            invoice i
        WHERE
            t.trackid = il.trackid
            AND il.invoiceid = i.invoiceid
            AND InvoiceYear = "2013"
        GROUP BY
            TrackName
    )