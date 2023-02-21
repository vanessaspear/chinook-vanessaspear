SELECT billingcountry AS Country, '$' || SUM(total) AS 'Total Sales'
FROM Invoice 
GROUP BY billingcountry
HAVING SUM(total) = (
    SELECT MAX(total_sales)
    FROM (
        SELECT SUM(total) AS total_sales
        FROM Invoice 
        GROUP BY billingcountry
    )
);