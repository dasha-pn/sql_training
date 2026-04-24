SELECT
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId;

-- LEFT JOIN = беремо ВСІ записи з Person
-- якщо немає відповідності в Address → буде NULL
-- INNER JOIN -> тоді Allen Wang зникне, бо в нього нема адреси