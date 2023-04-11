SELECT
	c.CustomerID,
    c.GuestFirstName || ' ' || GuestLastName AS FullName,
    o.OrderID,
    o.BillAmount,
    m.Cuisine,
    mi.CourseName
FROM Orders o
INNER JOIN Customers c
  ON o.CustomerID = c.CustomerID
INNER JOIN Menus m
  ON o.MenuID = m.MenuID
INNER JOIN MenuItems mi
  ON m.ItemID = mi.ItemID
WHERE o.BillAmount > 150
ORDER BY o.BillAmount;





