SELECT i.invoiceid, t.name, i.unitprice, i.quantity 
FROM InvoiceLine i
JOIN Track t
    ON t.trackid = i.trackid;
