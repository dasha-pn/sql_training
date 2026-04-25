SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL;

-- LEFT JOIN бере всіх customers
-- якщо у них нема замовлення, то поля з Orders → NULL
-- тому ми фільтруємо WHERE o.customerId IS NULL