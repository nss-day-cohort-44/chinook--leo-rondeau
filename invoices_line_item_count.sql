--17 Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT COUNT(invoicelineid), invoiceid
FROM InvoiceLine
GROUP BY InvoiceId;