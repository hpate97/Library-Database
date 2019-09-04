Select BooksInfo.Title 
From BooksInfo natural join Books
Where BooksInfo.location = ‘Washington’ AND Books.tag = ‘Fantasy and western’
Order by Books.Title;
