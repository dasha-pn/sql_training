SELECT today.id
FROM Weather today
JOIN Weather yesterday
ON today.recordDate = DATE_ADD(yesterday.recordDate, INTERVAL 1 DAY)
WHERE today.temperature > yesterday.temperature;

-- “Зʼєднай рядок today з таким рядком yesterday, де дата today = дата yesterday + 1 день”

-- Простими словами:
-- “Знайди для кожного дня його вчорашній день”