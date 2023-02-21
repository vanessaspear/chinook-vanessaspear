SELECT i.invoiceid, t.name AS 'Track Name', a.name AS 'Artist Name', i.unitprice, i.quantity
FROM InvoiceLine i
JOIN Track t
    ON t.trackid = i.trackid
JOIN Album al 
    ON al.albumid = t.albumid
JOIN Artist a 
    ON a.artistid = al.artistid;