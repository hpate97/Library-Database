Select CheckInandOut.popgenre
From CheckInandOut
Where CheckInandOut.lastcheckedout BETWEEN '06/01/2018' AND '12/31/2018'
Limit 5;
