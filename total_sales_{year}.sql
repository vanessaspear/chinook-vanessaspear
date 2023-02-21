
SELECT '2009' AS Year, '$' || SUM(total) AS 'Total Sales'
FROM Invoice 
WHERE invoicedate LIKE '2009%' 
UNION ALL
SELECT '2011' AS Year, '$' || SUM(total) AS 'Total Sales'
FROM Invoice 
WHERE invoicedate LIKE '2011%';