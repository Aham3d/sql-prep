 SELECt * 
 FROM Customers
 -- Where state = 'VA' OR state = 'FL' OR state = 'GA'
 -- shorter way for the way line
 WHERE state IN ('VA', 'FL', 'GA')