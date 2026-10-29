-- Transcribed from the supplied Backend Data Validation Lab Report.
-- Target: the course's SQLite mindbridge_lab.db, Orders table.
-- The original database is not included; not executed during publication.
-- Investigate user 105's order history; inspect returned rows, do not assume PASS.
SELECT *
FROM Orders
WHERE user_id = 105
ORDER BY order_date DESC;
