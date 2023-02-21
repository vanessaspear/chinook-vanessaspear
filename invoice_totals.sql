SELECT e.firstname || ' ' || e.lastname AS EmployeeName, c.firstname || ' ' || c.lastname AS CustomerName, c.country AS CustomerCountry, '$' || i.total AS InvoiceTotal
FROM Invoice i 
JOIN Customer c 
    ON c.customerid = i.customerid
JOIN Employee e
    ON e.employeeid = c.supportrepid;