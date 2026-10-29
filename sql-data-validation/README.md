# Backend order-data validation with SQLite

A completed MindBridge course-lab report about investigating missing order status using SQL and the VS Code SQLite extension. Published **29 October 2026**. No new database execution was performed during portfolio preparation.

## Scenario

The lab scenario describes Sarah (`user_id = 105`) reporting that payment for **Machine Learning Essentials** had been taken, while her order status was missing. Payment capture is scenario context, not independently verified payment evidence in this folder.

The investigation queries that customer's order history in `mindbridge_lab.db`, sorting by `order_date` descending.

## Documented query

```sql
SELECT *
FROM Orders
WHERE user_id = 105
ORDER BY order_date DESC;
```

[SQL transcription](queries/order-history.sql) reproduces the query printed in the report. It is not a recovered original `query_starter.sql` file and has not been rerun here. `SELECT *` is retained for fidelity to the source; a reusable query should select only the columns needed for the investigation.

## Reported findings and evidence

- The report records **five orders** for user 105.
- It identifies **order 5005**, Machine Learning Essentials, as having a **NULL order status**.
- Embedded screenshots show the SQL workflow and an `evidence.csv` export.

The original database, standalone query file and CSV are not included in the supplied materials. The CSV has not been reconstructed from screenshots, and the reported row count is not a fresh result.

## Interpretation

The missing status is the lab's reported data issue. A NULL value alone does not establish a defect in every application: confirm the order-status requirements, nullable schema and lifecycle before generalizing. This exercise does not identify why the status became NULL or prove that payment processing succeeded.

## Proposed follow-up

1. Obtain the original database/export and confirm the schema and allowed status values.
2. Re-run the documented query and compare the order identifier, date and status.
3. Check the relevant order/payment relationship and lifecycle without treating missing status as proof of payment capture.
4. Attach sanitized query output to a reproducible defect report if the requirement is violated.
5. After a supplied fix, retest the affected order and nearby status scenarios. No fix or retest is claimed here.

## Source and scope

- [Original Azerbaijani lab report with screenshots](originals/backend-data-validation-lab-report.pdf)
- [Portfolio index](../README.md)

The original PDF is preserved unchanged. This user-105/order-5005 scenario is separate from the user-101 profile-update validation in the MindBridge automation portfolio. Counts and conclusions must not be combined across those datasets.
