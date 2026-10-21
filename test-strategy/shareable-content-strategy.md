# Shareable Content Test Strategy

**Project:** MindBridge shareable-content feature  
**Original coursework:** 29 September 2026  
**Portfolio review:** 22 October 2026

## Purpose

Plan static and dynamic checks for generating a dashboard share link, define responsibilities and document the seeded failure observed in the lab.

## Responsibilities recorded in the lab

| Layer | QA team | Development team |
| --- | --- | --- |
| UI | Responsible | Accountable |
| API | Responsible | Accountable |
| Database | Consulted | Responsible |

This is a simplified two-team responsibility exercise. It does not define a full production RACI; database accountability would need to be explicitly assigned in a real team.

## Planned approach

- Static techniques: requirements walkthrough and code/static analysis review.
- Dynamic techniques: functional/BDD acceptance testing and exploratory testing.
- Environment recorded in the submission: course staging simulation at localhost:3000 in Chrome.
- BDD categories required by the exercise: happy path, edge case and error condition. The PDF contains a ticket screenshot; its text is small, so this portfolio does not transcribe unverified scenario wording or claim a scenario pass count.

## Reported seeded defect

| Field | Original finding |
| --- | --- |
| Trigger | Logged-in user clicks Generate share link on the dashboard |
| Expected | A unique shareable link is displayed |
| Actual | An Internal server error banner appears |
| Network evidence | PDF screenshot shows POST /api/dashboard/share-link returning HTTP 500 |
| Severity | Critical in the submitted lab record |

The screenshot supports a failed request and visible error. It does not establish that the server process crashed; the original wording is narrowed accordingly. No new live rerun was performed for this publication.

[Original submission and screenshots](originals/shareable-content-strategy.pdf)
