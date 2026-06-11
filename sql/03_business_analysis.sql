--Complaints by Product
SELECT
product,
COUNT(*) AS complaint_count
FROM complaints
GROUP BY product
ORDER BY complaint_count DESC;

--Top 10 States by Complaints
SELECT
state,
COUNT(*) AS complaint_count
FROM complaints
GROUP BY state
ORDER BY complaint_count DESC;

--Top Complaint Issues
SELECT
issue,
COUNT(*) AS complaint_count
FROM complaints
GROUP BY issue
ORDER BY complaint_count DESC;

--Complaint Trend by Year
SELECT
    complaint_year,
    COUNT(*) AS complaint_count
FROM complaints
GROUP BY complaint_year
ORDER BY complaint_year;

--Complaint Trend by Month
SELECT
    complaint_month,
    COUNT(*) AS complaint_count
FROM complaints
GROUP BY complaint_month
ORDER BY complaint_count DESC;

--Timely Response Analysis

SELECT
    timely_response,
    COUNT(*) AS total_complaints
FROM complaints
GROUP BY timely_response
ORDER BY total_complaints DESC;

--Products with Highest Late Responses
SELECT
    product,
    COUNT(*) AS late_responses
FROM complaints
WHERE timely_response = 'No'
GROUP BY product
ORDER BY late_responses DESC;

--Complaints by Submission Channel
SELECT
    submitted_via,
    COUNT(*) AS complaint_count
FROM complaints
GROUP BY submitted_via
ORDER BY complaint_count DESC;

--Top Sub-Products by Complaints
SELECT
    sub_product,
    COUNT(*) AS complaint_count
FROM complaints
GROUP BY sub_product
ORDER BY complaint_count DESC
LIMIT 10;

--Top Sub-Issues
SELECT
    sub_issue,
    COUNT(*) AS complaint_count
FROM complaints
GROUP BY sub_issue
ORDER BY complaint_count DESC
LIMIT 10;