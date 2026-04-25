SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;

-- GROUP BY email — групуємо однакові email
-- COUNT(*) — рахуємо, скільки разів зустрічається кожен email
-- HAVING COUNT(*) > 1 — залишаємо тільки дублікати