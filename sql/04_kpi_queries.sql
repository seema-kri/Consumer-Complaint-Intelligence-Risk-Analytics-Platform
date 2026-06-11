--Total Complaints
SELECT COUNT(*) AS total_complaints
FROM complaints;

--Timely Response Rate
SELECT ROUND(100.0 * SUM(CASE WHEN timely_response='Yes' THEN 1
ELSE 0 END)/ COUNT(*),2) AS timely_response_rate
FROM complaints;

--Late Response Rate
SELECT ROUND(100.0 *SUM(CASE WHEN timely_response='No'
THEN 1 ELSE 0 END)/ COUNT(*),2) AS late_response_rate
FROM complaints;

--Total Products
SELECT
COUNT(DISTINCT product) AS total_products
FROM complaints;

--Total States
SELECT
COUNT(DISTINCT state) AS total_states
FROM complaints;

--Total Issues
SELECT
COUNT(DISTINCT issue) AS total_issues
FROM complaints;

--Most Complained Product
SELECT product,
COUNT(*) AS complaint_count
FROM complaints
GROUP BY product
ORDER BY complaint_count DESC
LIMIT 1;

--Top Complaint State
SELECT state,
COUNT(*) AS complaint_count
FROM complaints
GROUP BY state
ORDER BY complaint_count DESC
LIMIT 1;

--Top Complaint Issue
SELECT issue,
COUNT(*) AS complaint_count
FROM complaints
GROUP BY issue
ORDER BY complaint_count DESC
LIMIT 1;