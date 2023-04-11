CREATE VIEW OrdersView AS
SELECT Orders.OrderID, Orders.Quantity, Orders.BillAmount
FROM Orders
WHERE Orders.Quantity > 2