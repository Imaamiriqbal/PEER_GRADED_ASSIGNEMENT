
DROP PROCEDURE IF EXISTS AddBooking; 
DELIMITER $$ 
CREATE PROCEDURE AddBooking(IN BookingID INT, IN CustomerID INT, IN TableNo INT, in BookingDate DATE)
BEGIN
INSERT Into Bookings (BookingID, CustomerID, TableNo, BookingDate) VALUES (BookingID, CustomerID, TableNo, BookingDate);
SELECT "New booking added" AS "confirmation";
END$$ Delimiter ;
CALL  AddBooking(9, 3, 4, "2022-12-30")
