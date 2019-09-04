-- call delete from on all tables to remove old data

-- your code here to populate the library
--
delete from Books;
INSERT INTO Books(id, title, author, num_copies, genre, tag) 
VALUES 
(10001, 'Harry Potter: PA', 'J.K Rowling', 'UIC',                       '2', 'Fiction',     'Mystery'),
(10002, 'How To Kill',      'Ron Swanson', 'Washington Public Library', '2', 'NonFiction',  'Fantasy'),
(10003, 'Pottery: Old Ways','K. Boring', 'UIC',                         '5', 'Fiction', 'Western, Mystery'),
(10004, 'Percy Jackson: Lightening Thief', 'Rick Riordon', 'UIC',       '5', 'Fiction', 'Greek'),
(10005, 'To Kill A Mockingbird', 'O. Oldman', 'Washington Public Library', '5','Fiction','Classic'),
(10006, 'Anne of Green Gables, and, The story girl', 'Montgomery, L. M','Washington Public Library', '5','Fiction','Classic'),
(10007, 'Anne of Green Gables, and, The story girl', 'Montgomery, L. M','Washington Public Library', '5','Fiction','Classic');

delete from Customer;
INSERT INTO Customer(name, id, check_out, check_in, on_hold, remove_hold) 
VALUES 
	('Samwise McGee',   900011, 'Yes', '0', 'Yes', '0'),
  ('Lester Patel',    900012, 'No', '0', 'Yes', '0'),
  ('Chuck Bartawski', 900013, 'Yes', '0', 'No', '0'),
  ('Henely McIntosh', 900014, 'No', '0', 'Yes', '0'),
  ('Laila Grahm',     900015, 'Yes', '0', 'No', '0'),
	('Anne Shirley',    900016, 'No', '0', 'Yes', '0'),
  ('Gilbert Blythe',  900017, 'Yes', '0', 'Yes', '0');


delete from Staff;
INSERT INTO Staff(id, remove_book, move_book, find_customer, create_customer, salary, worktime, workduty) 
VALUES 
(690011,'No','No','NA','No',55000,'Morning','Shelving'),
(690012,'No','No','NA','No',25600,'Evening','Receptionist'),
(690013,'No','No','NA','No',75000,'Afternoon','Shelving'),
(690014,'No','No','NA','No',42000,'Afternoon','Receptionist'),
(690015,'No','No','NA','No',11500,'Evening','Shelving');

delete from Administrator;
INSERT INTO Administrator(id, hire, fire, adjsal, revokemem, searchstaff, liststaff) 
VALUES
(650011,'NA','NA','NA','NA','NA','NA'),
(650012,'NA','NA','NA','NA','NA','NA'),
(650013,'NA','NA','NA','NA','NA','NA'),
(650014,'NA','NA','NA','NA','NA','NA'),
(650015,'NA','NA','NA','NA','NA','NA');

delete from BooksInfo;
INSERT INTO BooksInfo(id, title, author, location, is_available, is_damaged, ddnum, is_onhold, customer_id) 
VALUES
('10001', 'Harry Potter: Prisoner of Azakaban', 'J.K Rowling', 'UIC', 'Yes', 'No', 510, 'No', 900011),
('10002', 'How To Kill', 'Ron Swanson', 'Washington Public Library', 'Yes', 515, 'No', 900012),
('10003', 'Pottery: Old Ways','K. Boring', 'UIC', 'Yes', 530, 'No', NULL),
('10004', 'Percy Jackson: Lightening Thief', 'Rick Riordon', 'UIC', 'Yes', 520, 'No', 900013),
('10005', 'To Kill A Mockingbird', 'O. Oldman', 'Washington Public Library', 'Yes', 519 ,'No', 900015),
('10006', 'Anne of Green Gables, and, The story girl', 'Montgomery, L. M','Washington Public Library', 'Yes', 530,'No', NULL),
('10007', 'Anne of Green Gables, and, The story girl', 'Montgomery, L. M','Washington Public Library', 'Yes', 530,'No', NULL);

delete from WorkShifts;
INSERT INTO WorkShifts(staffid, worked, nextshift) 
VALUES 
(690011,'08/01/2018','12/11/2018'),
(690012,'05/07/2018','12/11/2018'),
(690013,'04/25/2018','01/07/2019'),
(690014,'02/13/2018','09/25/2018'),
(690015,'06/26/2018','01/08/2019');

delete from CheckInandOut;
INSERT INTO CheckInandOut(customer_id, lastcheckedout, lastcheckedin, popgenre, id) 
VALUES 
(900011,'08/15/2019','09/27/2019','Fantasy',10003),
(900012,'08/12/2019','09/27/2019','Classic',10005),
(900013,'08/13/2019','09/28/2019','Horror',10002),
(900014,'08/24/2019','10/24/2019','Novel',10004),
(900015,'09/24/2019','11/23/2019','Thriller',10006),
(900016,'09/27/2018','11/27/2018','Fairy',10007),
(900017,'08/26/2018','11/23/2018','Science Fiction',10007),
(900018,'11/12/2018','12/23/2018','Mystery Thriller',10001);

INSERT INTO BooksByMonth(Month,numout,numin,year) 
VALUES 
('January',5,7,2019),
('February',3,8,2019),
('March',8,12,2018),
('April',7,24,2018),
('May',8,16,2018),
('June',6,4,2019),
('July',4,2,2018),
('August',3,6,2018),
('September',5,2,2019),
('October',1,1,2018),
('November',6,8,2018),
('December',1,4,2019);

select * from Customer order by Customer.id;
select * from Staff order by Staff.id;
select * from Administrator order by Administrator.id;
select * from Books order by Books.id;
select * from BooksInfo order by BooksInfo.id;
select * from WorkShifts order by staffid;
select * from CheckInandOut order by customer_id;
select * from BooksByMonth order by Month;
-- end code block
-- 

Select count(BooksInfo.is_available)
From BooksInfo
Where BooksInfo.is_available = 'No';
