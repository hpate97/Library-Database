UPDATE BookInfo SET BookInfo.customer_id = 0 WHERE BookInfo.id = 10007;
UPDATE Customer SET Customer.check_out = 'No' WHERE Customer.name = 'Gilbert Blythe';
UPDATE Customer SET Customer.check_in = 'Yes' WHERE Customer.name = 'Gilbert Blythe';
UPDATE BookDetails SET BookDetails.is_available = 'Yes' WHERE BookDetails.id ='7';
UPDATE Books SET Books.num_copies = 2 WHERE Books.title = 'Anne of Green Gables';
SELECT * FROM Customer;
SELECT * FROM Books;
SELECT * FROM BookDetails;
