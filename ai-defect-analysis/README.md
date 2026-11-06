# AI-assisted defect hotspot analysis

A completed MindBridge coursework report exploring how Microsoft Copilot can support defect-pattern analysis and log triage. Portfolio review prepared **6 November 2026**. No new model invocation, source-data analysis or application execution was performed during this review.

## Activities documented in the report

1. Submit three months of historical defect data to Copilot and request the top two modules by bug-reporting frequency, their counts and a short risk explanation.
2. Submit a checkout error log and request a failure summary, file/function location and a debugging recommendation.

The PDF includes the prompts and embedded screenshots of the AI responses. The original `Historical_Defects.csv`, `Error_Log.txt`, application source and standalone conversation export are not included in the supplied materials.

## Hotspot figures shown in the AI-response screenshot

| Module | Reported count |
| --- | --- |
| Checkout | 15 |
| Enrollment | 10 |
| Reports | 5 |
| Catalog | 5 |
| Login | 4 |
| Dashboard | 4 |
| Notifications | 3 |
| Total | 46 |

The screenshot's totals reconcile: **15 + 10 + 5 + 5 + 4 + 4 + 3 = 46**. Checkout is **15/46 = 32.6%** and Enrollment **10/46 = 21.7%**, rounded to one decimal. Together they account for **25/46 = 54.3%** of the reported records.

This checks the internal arithmetic of the displayed answer, not the original CSV, deduplication or module assignments. Report frequency is not a validated prediction of future failures, a severity score or a measure of defect density. Feature usage, test effort and reporting bias could affect counts.

## Diagnostic output shown in the report

The AI response attributes checkout failure to inability to obtain a database connection in time. It names `CheckoutService.cs`, `ProcessPayment()`, line 128, and recommends investigating SQL Server connectivity, exhausted connections, long-running queries and unreleased connections.

These are **reported AI-generated diagnostic statements**. Without the raw log and matching source version, this review cannot verify the location, exception or underlying cause. Even a confirmed connection timeout would not by itself establish connection-pool exhaustion as the root cause. No fix, measured recovery or successful retest is claimed.

## Proposed use in QA planning

- Use the reported concentration to propose extra checkout/enrollment investigation while retaining coverage elsewhere.
- Verify source records, duplicates, module labels, time range and severity before using the ranking for a release decision.
- Compare any diagnostic output with the original exception, timestamps, correlation IDs and matching code version.
- Test hypotheses with relevant connection/DB telemetry before assigning root cause or changing timeouts/pool settings.
- Check model-generated summaries for unsupported certainty. The report's claim of identifying an exact root cause in seconds is not a measured or independently verified outcome.

These are review recommendations, not additional executed coursework. The SQL Server/C# scenario here is separate from other MindBridge SQLite/JavaScript labs; shared application naming does not establish a shared backend.

## Source

- [Original Azerbaijani report with prompts and AI-response screenshots](originals/qa-ai-risk-hotspot-report.pdf)
- [Portfolio index](../README.md)

The original PDF is preserved unchanged, including its layout. No missing CSV, log or model output has been recreated. This reading version separates displayed observations, arithmetic checks and unverified hypotheses.
