SELECT a.name, COUNT(t.trackid) AS 'Tracks Sold' 
FROM Artist a 
JOIN Album al
    ON al.artistid = a.artistid
JOIN Track t
    ON t.albumid = al.albumid
JOIN InvoiceLine il
    ON il.trackid = t.trackid
GROUP BY a.name
ORDER BY COUNT(t.trackid) DESC
LIMIT 3;

