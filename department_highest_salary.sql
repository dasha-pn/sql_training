SELECT 
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM Employee e
JOIN Department d
ON e.departmentId = d.id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM Employee e2
    WHERE e2.departmentId = e.departmentId
);

-- Це correlated subquery (підзапит, який залежить від зовнішнього рядка).
-- Для кожного працівника e:

-- Береться його departmentId
-- Запускається підзапит:
-- знаходить максимальну зарплату в цьому ж департаменті
-- Порівнюється:
-- якщо salary цього працівника = цьому максимуму → він проходить