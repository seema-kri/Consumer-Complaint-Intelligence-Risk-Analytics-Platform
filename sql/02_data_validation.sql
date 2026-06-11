SELECT COUNT(*) FROM complaints;

SELECT COUNT(DISTINCT complaint_id)
FROM complaints;

SELECT *
FROM complaints
LIMIT 10;

SELECT
COUNT(*)
FROM complaints
WHERE complaint_id IS NULL;