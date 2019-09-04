INSERT INTO Books(id, title, author, num_copies, genre, tag) 
VALUES 
(10006, 'Anne of Green Gables, and, The story girl', 'Montgomery, L. M','Washington Public Library', '5','Fiction','Classic');
(10007, 'Anne of Green Gables, and, The story girl', 'Montgomery, L. M','Washington Public Library', '5','Fiction','Classic');
delete from BooksInfo;
INSERT INTO BooksInfo(id, title, author, location, is_available, is_damaged, ddnum, is_onhold, customer_id) 
VALUES
 ('10006', 'Anne of Green Gables, and, The story girl', 'Montgomery, L. M', 'Washington Public Library', 'Yes', 530,'No', NULL);
('10007', 'Anne of Green Gables, and, The story girl', 'Montgomery, L. M', 'Washington Public Library', 'Yes', 530,'No', NULL);
