-- Synthetic SQL examples for BI reporting preparation.
-- No confidential or production data is included.

-- 1. Revenue and payment status by customer
SELECT
    c.customer_id,
    c.customer_segment,
    SUM(s.sale_amount) AS total_sales,
    COALESCE(SUM(p.paid_amount), 0) AS total_paid,
    SUM(s.sale_amount) - COALESCE(SUM(p.paid_amount), 0) AS outstanding_amount
FROM customers AS c
LEFT JOIN sales AS s
    ON c.customer_id = s.customer_id
LEFT JOIN payments AS p
    ON s.sale_id = p.sale_id
GROUP BY
    c.customer_id,
    c.customer_segment
ORDER BY
    total_sales DESC;


-- 2. Monthly operational volume
SELECT
    DATE_TRUNC('month', operation_date) AS month,
    operation_type,
    COUNT(*) AS operation_count,
    SUM(duration_minutes) AS total_minutes
FROM operations
GROUP BY
    DATE_TRUNC('month', operation_date),
    operation_type
ORDER BY
    month,
    operation_type;


-- 3. Duplicate check for a business key
SELECT
    customer_id,
    COUNT(*) AS record_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- 4. Reporting-ready customer segmentation
SELECT
    customer_id,
    CASE
        WHEN licence_category IN ('A', 'B') THEN 'Standard'
        WHEN licence_category IN ('C', 'D', 'E') THEN 'Commercial'
        ELSE 'Other'
    END AS reporting_segment
FROM customers;
