# Course and Tutor Registration Coverage Plan

**Project:** MindBridge course/tutor registration workflow  
**Original coursework:** 25 September 2026  
**Portfolio review:** 22 October 2026

## Scope

Session browsing, adding a session to the cart and mock-payment checkout. This document defines five coverage categories and planned success criteria; it is not a record of five executed test cases.

| Category | Planned check | Recorded lab environment | Success criterion |
| --- | --- | --- | --- |
| Functional | Browse, add session, complete mock checkout | QA localhost:8081 | Confirmation and correct total |
| Negative/error handling | Missing, malformed and special-character payment inputs | QA localhost:8081 | Clear validation message; no unhandled HTTP500 |
| Regression | Recheck the core workflow after fixes | QA localhost:8081 | Previously passing behavior remains intact |
| Usability | Complete registration without external guidance | Staging localhost:8082 | Clear navigation, labels and feedback |
| Responsive design | Inspect navigation and content at narrow and wide widths | QA and staging | No overlap or inaccessible controls, including below 400px |

The localhost environments are course exercise configurations, not hosted services. Use representative synthetic data for both usability and functional checks; real personal data is not necessary to evaluate the workflow.

## Reported lab issues to investigate

- DEF-001: special-character payment input reportedly leads to HTTP500.
- DEF-002: navigation reportedly overlaps content below a 400px viewport.

These are reported issues from this coverage assignment. They were not rerun during the publication review and must not be conflated with the GreenLeaf mobile issue or its later Windows checks.

## Evidence to collect during execution

Record build/config, viewport/browser, numbered steps, expected/actual outcome and a screenshot or network response for each finding. Link results to explicit case IDs before claiming execution coverage or pass rates.

[Original coverage submission](originals/registration-coverage.pdf)
