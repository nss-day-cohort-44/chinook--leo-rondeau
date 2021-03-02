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
    );


    with TopTracks as (
    select t.Name,
        count(t.Name) PurchaseCount
    from Track t
        join InvoiceLine l on l.TrackId = t.TrackId
        join Invoice i on l.InvoiceId = i.InvoiceId
    where strftime('%Y', i.InvoiceDate) = "2013"
    group by t.Name
    order by PurchaseCount desc
)
select Name,
    PurchaseCount
from TopTracks
where (
        select max(PurchaseCount)
        from TopTracks
    ) = PurchaseCount;