SELECT i.billingcountry, COUNT(invoiceid) AS 'Total Number of Invoices'
FROM Invoice i
GROUP BY i.billingcountry;