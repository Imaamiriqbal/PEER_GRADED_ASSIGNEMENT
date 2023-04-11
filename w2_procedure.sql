CREATE PROCEDURE GetMaxQuantity()  
SELECT MAX(Quantity) AS "Max Quantity"
FROM Orders;

CALL GetMaxQuantity();