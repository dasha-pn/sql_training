SELECT e.name AS Employee
FROM Employee e
JOIN Employee m
ON e.managerId = m.Id
WHERE e.salary > m.salary;

-- e — працівник
-- m — його менеджер
-- JOIN з'єднує їх через managerId
-- далі просто перевірка: зарплата працівника > зарплати менеджера