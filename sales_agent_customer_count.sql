SELECT e.firstname || ' ' || e.lastname AS FullName, COUNT(c.customerid) AS 'Customer Count'
FROM Employee e
LEFT JOIN Customer c
    ON c.supportrepid = e.employeeid
GROUP BY e.employeeid;