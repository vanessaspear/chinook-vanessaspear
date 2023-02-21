SELECT m.name, COUNT(m.name) AS 'Total Media Type Uses'
FROM MediaType m
JOIN Track t
    ON t.mediatypeid = m.mediatypeid
JOIN InvoiceLine il
    ON il.trackid = t.trackid
GROUP BY m.name 
ORDER BY COUNT(m.name) DESC