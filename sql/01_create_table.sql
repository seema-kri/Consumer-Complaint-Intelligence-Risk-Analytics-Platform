CREATE TABLE complaints (
    complaint_id BIGINT PRIMARY KEY,
    submitted_via VARCHAR(100),
    date_submitted DATE,
    date_received DATE,
    state VARCHAR(10),
    product VARCHAR(255),
    sub_product VARCHAR(255),
    issue TEXT,
    sub_issue TEXT,
    company_public_response TEXT,
    company_response_to_consumer TEXT,
    timely_response VARCHAR(20),
    complaint_month VARCHAR(20),
    complaint_year INT,
    complaint_quarter INT,
    resolution_days INT
);

