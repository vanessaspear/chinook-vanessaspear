SELECT t.name, COUNT(il.invoicelineid) AS total_purchases
FROM Track t
JOIN InvoiceLine il
    ON il.trackid = t.trackid
JOIN Invoice i
    ON i.invoiceid = il.invoiceid
WHERE i.invoicedate LIKE '2013%'
GROUP BY t.name
ORDER BY total_purchases DESC
LIMIT 9; 