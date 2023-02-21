SELECT t.trackid, t.name AS 'Track Name', a.title AS 'Album Title', m.name AS 'Media Type', g.name AS 'Genre', t.composer, t.milliseconds, t.bytes, t.unitprice
FROM Track t
JOIN Album a 
    ON t.albumid = a.albumid
JOIN MediaType m
    ON t.mediatypeid = m.mediatypeid
JOIN Genre g 
    ON t.genreid = g.genreid;