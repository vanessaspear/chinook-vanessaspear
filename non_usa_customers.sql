SELECT customerid, firstname || ' ' || lastname AS FullName, country
FROM Customer
WHERE country != 'USA';