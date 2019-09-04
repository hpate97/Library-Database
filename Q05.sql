Select BooksInfo.Title , Customer.Name, Customer.ID, BooksInfo.customer_id
From BooksInfo natural join Customer
Where customer.name = ‘Samwise McGee’ AND customer.id = booksInfo.customerid
Order by BooksInfo.Title;
