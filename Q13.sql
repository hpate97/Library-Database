UPDATE BookInfo SET BookInfo.customer_id = 900017 WHERE BookInfo.id = 10006;
UPDATE Customer SET Customer.check_out = 'No' WHERE Customer.name = 'Gilbert Blythe';
UPDATE Customer SET Customer.check_in = 'Yes' WHERE Customer.name = 'Gilbert Blythe';
UPDATE BookDetails SET BookDetails.is_available = 'Yes' WHERE BookDetails.id ='6';
UPDATE Books SET Books.num_copies = 1 WHERE Books.title = 'Anne of Green Gables';
SELECT * FROM Customer;
SELECT * FROM Books;
SELECT * FROM BookDetails;
