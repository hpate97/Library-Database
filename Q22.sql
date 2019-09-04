Select DISTINCT(CheckInandOut.lastcheckedin)
From CheckInandOut JOIN Customer
Where Customer.name = 'Jean Valjean' AND CheckInandOut.customer_id = Customer.id;
