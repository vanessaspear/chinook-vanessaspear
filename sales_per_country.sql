SELECT billingcountry AS Country, '$' || ROUND(SUM(total), 2) AS 'Total Sales'
FROM Invoice 
GROUP BY billingcountry;