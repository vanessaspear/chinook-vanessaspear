SELECT firstname || ' ' || lastname AS FullName, invoiceid, invoicedate, billingcountry
FROM Customer c
JOIN Invoice i
    ON i.customerid = c.customerid
WHERE c.country = 'Brazil';