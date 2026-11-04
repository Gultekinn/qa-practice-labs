# Legacy regression suite review

A portfolio review of a supplied 12-entry coursework suite. Published **4 November 2026**. The workbook contains only test ID, summary, area and priority; no steps, assertions, requirements, execution results or current feature inventory are supplied.

The original workbook is preserved unchanged. The decisions below are **new portfolio review proposals**, not completed course refactoring, approved retirements or executed tests.

## Item-by-item decisions

| Source ID | Original summary | Source priority | Proposed decision and rationale |
| --- | --- | --- | --- |
| LRS-01 | Verify that a learner can log in with valid credentials. | High | KEEP / REFINE as the canonical valid-login case; define data, session creation and expected destination. |
| LRS-02 | Test learner authentication. | Medium | CLARIFY; potential merge into LRS-01 only after comparing steps and assertions. The broad title might conceal different coverage. |
| LRS-03 | Log in with email and password. | Low | CLARIFY; potential merge into LRS-01 if equivalent. Do not delete based solely on title similarity. |
| LRS-04 | Verify learner login flow. | Medium | CLARIFY; potential merge into LRS-01 if preconditions and outcomes match. |
| LRS-05 | Verify course adds to cart successfully from landing page. | High | KEEP / REFINE; verify course identity, quantity and price, not merely a click or toast. |
| LRS-06 | Verify empty cart displays descriptive empty state message. | Medium | KEEP / REFINE; define the empty-cart setup and expected available actions. |
| LRS-07 | Verify Visa card validation accepts 16-digit valid format. | High | REFINE against the configured provider/contract. A syntactically valid length alone does not establish a valid card or successful payment; do not imply that 16 digits describes every Visa configuration. |
| LRS-08 | Verify error message triggers when card expiry is past date. | High | KEEP / REFINE; define MM/YY interpretation, reference date/time zone and expected rejection. Include a deliberate boundary analysis. |
| LRS-09 | Verify successful enrollment routes user to My Learning page. | Critical | KEEP / REFINE; verify enrollment/access persistence as well as navigation. |
| LRS-10 | Verify order confirmation screen displays accurate receipt totals. | High | KEEP / REFINE; define quantity, pricing, tax, shipping/discount applicability and expected arithmetic. |
| LRS-11 | Verify that the Fax receipt button sends an enrollment receipt by fax. | Low | REVIEW FOR RETIREMENT only if the feature is confirmed removed or unsupported by the agreed release scope; otherwise retain its risk for assessment. |
| LRS-12 | Verify the Fax/print receipt status updates after checkout. | Low | SPLIT / CLARIFY fax versus print. Removing fax must not silently discard an active print-receipt requirement. |

## Decision accounting

All **12 source IDs** are accounted for: 7 retain/refine candidates (LRS-01, 05–10), 3 potential login-merge candidates (02–04), and 2 legacy-feature reviews (11–12). These are dispositions, not execution counts or a new seven-case suite. No case has been conclusively retired.

If all three login candidates prove equivalent, they could be merged into one canonical case, reducing that group from four entries to one. Record their old IDs as aliases and preserve any distinct negative, session or navigation assertions before merging.

## Proposed regression priorities

First prioritize authentication, course-to-cart, checkout, receipt arithmetic and enrollment/access. Source priorities are retained above; the actual run order needs dependency and release-risk review. An empty-cart presentation check should not displace a failed core enrollment flow simply because it is easier to execute.

Possible coverage gaps to investigate include invalid login, session/logout behavior, cart updates/removal, duplicate order submission and failed-payment state. They are **proposed additions**, not confirmed product requirements or existing tests in this file.

## Refactoring acceptance checks

1. Compare full test definitions before approving any duplicate merge.
2. Confirm the current feature inventory and requirements before retiring fax cases.
3. Give retained cases explicit preconditions, data, steps and observable expected results.
4. Preserve a source-to-revised-ID map and explain changed coverage.
5. Execute the revised suite on an identified build before reporting results or time savings.

No application build was run for this review, and no reduction in execution time or confirmed defect count is claimed.

## Source

- [Original legacy regression workbook](originals/legacy-regression-suite.xlsx)
- [Portfolio index](../README.md)
