--15 Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be include on the resulant table.

SELECT COUNT(pt.trackid) AS TotalTracks, p.name AS PlaylistName
FROM 
    playlist p,
    playlisttrack pt
WHERE
    pt.playlistid = p.playlistid
GROUP BY
    p.name