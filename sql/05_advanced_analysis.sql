--Which issues are most common for each product?
SELECT
    product,
    issue,
    COUNT(*) AS complaint_count
FROM complaints
GROUP BY product, issue
ORDER BY complaint_count DESC;

--Which products create the highest complaint volume?
SELECT
    product,
    COUNT(*) AS total_complaints,
    DENSE_RANK() OVER(
        ORDER BY COUNT(*) DESC
    ) AS risk_rank
FROM complaints
GROUP BY product;

--Which states have the highest complaint volume?
SELECT
    state,
    COUNT(*) AS total_complaints,
    DENSE_RANK() OVER(
        ORDER BY COUNT(*) DESC
    ) AS risk_rank
FROM complaints
GROUP BY state

--How are complaints changing over time?
SELECT
    complaint_year,
    COUNT(*) AS total_complaints
FROM complaints
GROUP BY complaint_year
ORDER BY complaint_year;

--Which quarter generates most complaints?
SELECT
    complaint_quarter,
    COUNT(*) AS total_complaints
FROM complaints
GROUP BY complaint_quarter
ORDER BY complaint_quarter;

--Which complaint channels are most used?
SELECT
    submitted_via,
    COUNT(*) AS total_complaints
FROM complaints
GROUP BY submitted_via
ORDER BY total_complaints DESC;

--Which products have the most late responses?
SELECT
    product,
    COUNT(*) AS late_responses
FROM complaints
WHERE timely_response='No'
GROUP BY product
ORDER BY late_responses DESC;

--What percentage of complaints comes from each product?
SELECT
    product,
    COUNT(*) AS complaints,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER(),
        2
    ) AS complaint_percentage
FROM complaints
GROUP BY product
ORDER BY complaints DESC;

--For each product, what is the most common issue?
SELECT
    product,
    issue,
    COUNT(*) AS complaint_count
FROM complaints
GROUP BY product, issue
ORDER BY product, complaint_count DESC;