--23 Which country's customers spent the most?

SELECT 
    "$"|| printf("%.2f", SUM(i.total)) AS CustomerTotal, 
    c.country AS Country
FROM customer c,
    invoice i
WHERE 
    c.customerid = i.customerid
GROUP BY c.country