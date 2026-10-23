create database if not exists upi_db;
use upi_db;
USE upi_db;
show tables;
USE upi_db;

SELECT COUNT(*) AS total_transactions
FROM upi_transactions;

SELECT *
FROM upi_transactions
LIMIT 10;

SELECT
    COUNT(*) AS total_transactions,
    SUM(
        CASE
            WHEN transaction_status = 'FAILED' THEN 1
            ELSE 0
        END
    ) AS failed_transactions,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN transaction_status = 'FAILED' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS failure_rate_percent
FROM upi_transactions;
SELECT
    sender_bank,
    COUNT(*) AS total_transactions,
    SUM(
        CASE
            WHEN transaction_status = 'FAILED' THEN 1
            ELSE 0
        END
    ) AS failed_transactions,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN transaction_status = 'FAILED' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS failure_rate_percent
FROM upi_transactions
GROUP BY sender_bank
ORDER BY failure_rate_percent DESC;

SELECT
    sender_bank,
    COUNT(*) AS total_transactions,
    SUM(fraud_flag) AS fraudulent_transactions,
    ROUND(
        100.0 * SUM(fraud_flag) / COUNT(*),
        2
    ) AS fraud_rate_percent
FROM upi_transactions
GROUP BY sender_bank
ORDER BY fraud_rate_percent DESC;

SELECT
    DATE_FORMAT(`timestamp`, '%Y-%m') AS month,
    COUNT(*) AS total_transactions,
    SUM(
        CASE
            WHEN transaction_status = 'FAILED' THEN 1
            ELSE 0
        END
    ) AS failures
FROM upi_transactions
GROUP BY DATE_FORMAT(`timestamp`, '%Y-%m')
ORDER BY month;

WITH bank_metrics AS (
    SELECT
        sender_bank,
        COUNT(*) AS transactions,
        SUM(
            CASE
                WHEN transaction_status = 'FAILED' THEN 1
                ELSE 0
            END
        ) AS failures
    FROM upi_transactions
    GROUP BY sender_bank
)

SELECT
    sender_bank,
    transactions,
    failures,
    RANK() OVER (ORDER BY failures DESC) AS failure_rank
FROM bank_metrics
ORDER BY failure_rank;