--16 Provide a query that shows all the Tracks, but displays no IDs. 
--The result should include the Album name, Media type and Genre.
Select AlbumName,
    MediaType,
    Genre,
    Track
FROM (
    SELECT 
        b.title AS AlbumName,
        m.name AS MediaType,
        g.name AS Genre,
        t.name AS Track
    From
        album b,
        mediatype m,
        genre g,
        track t
    WHERE
        t.mediatypeid = m.mediatypeid
        AND t.genreid = g.genreid
        AND t.albumid = b.albumid
)