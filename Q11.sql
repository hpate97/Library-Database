UPDATE BookInfo SET BookInfo.CustomerID = 900016 WHERE BookInfo.BOOKID = 10006;
UPDATE Customer SET Customer.CHECK_OUT = 'No' WHERE Customer.NAME = 'Anne Shirley';
UPDATE Customer SET Customer.CHECK_IN = 'Yes' WHERE Customer.NAME = 'Anne Shirley';
UPDATE BookInfo SET BookInfo.Available = 'Yes' WHERE BookInfo.BOOKID ='10006';
UPDATE Books SET Books.numcopies = 1 WHERE Books.Title = 'Anne of Green Gables';
SELECT * FROM Customer;
SELECT * FROM Books;
SELECT * FROM BookInfo;
