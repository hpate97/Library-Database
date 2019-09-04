UPDATE BookInfo SET BookInfo.CustomerID = 900016 WHERE BooksInfo.id = 900017;
UPDATE Customer SET Customer.CHECK_OUT = 'Yes' WHERE Customer.NAME = 'Gilbert Blythe';
UPDATE BookInfo SET BookInfo.is_available = 'No' WHERE BookInfo.id ='900017';
UPDATE Books SET Books.numcopies = 1 WHERE Books.Title = 'Anne of Green Gables';
UPDATE Customer SET Customer.check_out = 'YES' WHERE Customer.name = 'Gilbert Blythe';
SELECT * FROM Customer;
SELECT * FROM Books;
SELECT * FROM BookInfo;
