--13 Provide a query that includes the purchased track name AND 
--artist name with each invoice line item.

SELECT TrackName, InvoiceId, ArtistName
FROM
(
    SELECT 
    t.Name AS TrackName,
    i.invoiceid AS InvoiceId,
    a.name AS ArtistName
    FROM
        Track t,
        invoiceline i,
        artist a,
        album b
    WHERE
        t.trackid = i.trackid
        AND t.albumid = b.albumid
        AND a.artistid = b.artistid

)