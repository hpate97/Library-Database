UPDATE BookInfo SET BookInfo.customer_id = 900017 WHERE BookDetails.id = 10006;
UPDATE Customer SET Customer.check_out = 'Yes' WHERE Customer.NAME = 'Gilbert Blythe';
UPDATE BookDetails SET BookDetails.is_available = 'No' WHERE BookDetails.id ='6';
UPDATE Books SET Books.num_copies = 0 WHERE Books.title = 'Anne of Green Gables';
SELECT * FROM Customer;
SELECT * FROM Books;
SELECT * FROM BookDetails;
