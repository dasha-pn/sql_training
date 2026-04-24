SELECT(
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;

-- ORDER BY salary DESC → від найбільшої
-- OFFSET 1 → пропускаємо першу (найбільшу)
-- LIMIT 1 → беремо другу
-- якщо другої нема → автоматично NULL