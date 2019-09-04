Select BooksInfo.Title
From BooksInfo join CheckInandOut
Where CheckInandOut.lastcheckedout = ‘8/15/2018’ AND BooksInfo.id = CheckInandOut.id
