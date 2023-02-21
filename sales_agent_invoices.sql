SELECT e.firstname || ' ' || e.lastname AS FullName, e.title, i.invoiceid
FROM Invoice i 
JOIN Customer c 
    ON c.customerid = i.customerid
JOIN Employee e
    ON e.employeeid = c.supportrepid;
