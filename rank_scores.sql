SELECT
    score,
    DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM scores
ORDER BY score DESC;


-- DENSE_RANK дає:

-- 100 → 1
-- 90  → 2
-- 90  → 2
-- 80  → 3  (без пропуску)
-- Чому не RANK
-- RANK:
-- 100 → 1
-- 90  → 2
-- 90  → 2
-- 80  → 4 (пропуск)