CREATE PROCEDURE CheckBooking(BookingDate DATE, Table_Number INT)
	SELECT CONCAT("Table ", TableNo, " is already booked")
    WHERE exists (select * from Bookings where Date = BookingDate and TableNo = Table_Number)
