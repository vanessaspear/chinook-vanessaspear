SELECT p.name, COUNT(pt.playlistid) AS 'Total Number of Songs'
FROM Playlist p
JOIN PlaylistTrack pt
    ON pt.playlistid = p.playlistid
GROUP BY p.playlistid