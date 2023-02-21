SELECT invoiceid, COUNT(invoicelineid) AS 'Total Line Items'
FROM InvoiceLine
GROUP BY invoiceid;