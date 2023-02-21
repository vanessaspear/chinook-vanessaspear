
SELECT '2009' AS Year, COUNT(invoiceid) AS 'Total Invoices'
FROM Invoice
WHERE invoicedate LIKE '2009%'
UNION ALL
SELECT '2011' AS Year, COUNT(invoiceid) AS 'Total Sales'
FROM Invoice 
WHERE invoicedate LIKE '2011%'