SELECT e.firstname || ' ' || e.lastname AS FullName, e.title, '$' || ROUND(SUM(i.total), 2) AS 'Total Sales (All Time)'
FROM Invoice i 
JOIN Customer c 
    ON c.customerid = i.customerid
JOIN Employee e
    ON e.employeeid = c.supportrepid
GROUP BY e.employeeid;