# UI API and Database Mapping

**Source:** Completed six-row mapping workbook from a MindBridge lab  
**Portfolio review:** 22 October 2026

The exercise traces visible user actions through the API to expected data-layer activity. It is an architecture mapping exercise rather than proof that every database operation was observed directly.

| User action | Presentation | API recorded in workbook | Status recorded | Data-layer interpretation |
| --- | --- | --- | --- | --- |
| Load catalogue | Course grid | GET /api/courses | 200 | Expected read from courses |
| View course | Detail page | GET /api/courses/{id} | 200 | Expected read of course by ID |
| Filter by level | Filtered grid | GET /api/courses?level=beginner | 200 | Expected filtered read |
| Search title | Search results | GET /api/courses?search=python | 200 | Expected matching course read |
| Add to cart | Cart count updates | POST /api/cart/items | 201 | Expected validation/read and cart-line write |
| Submit payment with special character | Error message | POST /api/checkout | 500 | Failure recorded; database reachability is not established |

## Interpretation corrections

The original column is titled Expected Status Code. HTTP500 in the failure row should be interpreted as a reported observed defect response, not the desired outcome. Invalid payment input should be rejected gracefully according to the applicable API contract.

The original workbook says the data layer was never reached. A status code alone cannot prove that claim; server traces or database instrumentation would be required. The route names are retained from this exercise and are not assumed to match every version of the course application.

[Original XLSX](originals/architecture-mapping.xlsx) | [Original values in CSV](architecture-mapping-original.csv)
