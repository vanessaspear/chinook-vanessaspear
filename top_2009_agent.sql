SELECT '2009' AS Year, e.firstname || ' ' || e.lastname AS FullName, e.title, '$' || ROUND(SUM(i.total), 2) AS 'Total Sales'
FROM Invoice i 
JOIN Customer c 
    ON c.customerid = i.customerid
JOIN Employee e
    ON e.employeeid = c.supportrepid
WHERE i.invoicedate LIKE '2009%'
GROUP BY e.employeeid
HAVING SUM(i.total) = (
    SELECT MAX(total_sales)
    FROM (
        SELECT SUM(i.total) as total_sales
        FROM Invoice i 
        JOIN Customer c 
            ON c.customerid = i.customerid
        JOIN Employee e
            ON e.employeeid = c.supportrepid
        WHERE i.invoicedate LIKE '2009%'
        GROUP BY e.employeeid
    )
);
    
    