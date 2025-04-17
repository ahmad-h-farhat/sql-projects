-- scd_clients.sql
-- Step 3 of the ETL Pipeline: Slowly Changing Dimensions (SCD Type 2) for client profiles

DROP TABLE IF EXISTS dim_clients;

CREATE TABLE dim_clients (
    client_id     VARCHAR(10),
    name          VARCHAR(100),
    country       VARCHAR(50),
    risk_profile  VARCHAR(20),
    is_current    BOOLEAN,
    start_date    DATE,
    end_date      DATE
);

-- Initial SCD load
INSERT INTO dim_clients (client_id, name, country, risk_profile, is_current, start_date, end_date)
VALUES
('C001', 'Ahmad Farhat', 'Germany',     'Moderate',    TRUE, '2023-01-01', NULL),
('C002', 'Leila Haddad', 'Lebanon',     'Aggressive',  TRUE, '2023-01-01', NULL),
('C003', 'Yousef Hamdan','France',      'Conservative',TRUE, '2023-01-01', NULL);

-- Simulate profile change: Ahmad switches to Aggressive on 2024-04-02
-- Step 1: Mark previous record as inactive
UPDATE dim_clients
SET is_current = FALSE,
    end_date = '2024-04-01'
WHERE client_id = 'C001' AND is_current = TRUE;

-- Step 2: Insert new active version
INSERT INTO dim_clients (client_id, name, country, risk_profile, is_current, start_date, end_date)
VALUES ('C001', 'Ahmad Farhat', 'Germany', 'Aggressive', TRUE, '2024-04-02', NULL);

-- Optional: View current active clients
SELECT * FROM dim_clients WHERE is_current = TRUE;
