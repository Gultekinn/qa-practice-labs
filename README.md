# QA Practice Labs | Manual Testing and Test Strategy

Manual software testing portfolio with test strategy, STLC planning, test coverage and UI/API/database mapping exercises from the Microsoft Junior QA/Software Tester certificate on Coursera.

## Portfolio highlights

- **Test strategy:** static/dynamic techniques, simplified RACI responsibilities and a reported seeded defect.
- **Coverage planning:** 5 categories with environments and success criteria.
- **Architecture:** 6 UI actions mapped to API routes and expected database activity.
- **Review first:** [exercise index](test-strategy/README.md), [coverage plan](test-strategy/registration-coverage.md), [mapping](test-strategy/architecture-mapping.md).

This repository complements my larger [GreenLeaf QA capstone](https://github.com/Gultekinn/greenleaf-qa-capstone) and [MindBridge automation project](https://github.com/Gultekinn/mindbridge-qa-automation). Each exercise has its own scope and dataset.

## Available exercises

| Topic | Included work | Skills demonstrated |
| --- | --- | --- |
| [Functional and responsive testing](functional-responsive-testing/README.md) | Course search, viewport observations and a qualified timing observation | Functional Testing, responsive checks, DevTools and STLC mapping |
| [Enrollment date RCA](root-cause-analysis/enrollment/README.md) | Reviewed invalid-date response and verification plan | Calendar validation, evidence review and hypothesis boundaries |
| [Registration root cause analysis](root-cause-analysis/registration/README.md) | DevTools evidence and reviewed 5-Whys chain for a missing clientId response | Network investigation, evidence vs hypothesis and verification planning |
| [QA/QC fundamentals](fundamentals/README.md) | Project Falcon quality playbook and 3 testing principles | QA/QC responsibilities, early testing and risk-based prioritization |
| [Automation strategy](automation-strategy/README.md) | 3 proposed automation candidates and 1 manual scenario | Risk-based prioritization, automation suitability and estimated value |
| [Test strategy and coverage](test-strategy/README.md) | Shareable-content strategy, registration coverage plan and UI/API/database mapping | STLC planning, responsibility mapping, test scope, acceptance criteria and architecture analysis |

## Start here

1. Read the [shareable-content strategy](test-strategy/shareable-content-strategy.md).
2. Compare the five coverage categories in the [registration plan](test-strategy/registration-coverage.md).
3. Trace the six user actions in the [architecture mapping](test-strategy/architecture-mapping.md).

## Evidence and attribution

These are educational labs on a course-provided mock application. Original templates, prompts and application infrastructure belong to the course context. Completed source submissions are preserved alongside concise English reading versions reviewed during portfolio preparation.

The published exercises contain planning/documentation work. It does not claim new live executions, production deployments, confirmed root causes or a full cross-browser run. Read the [review notes](REVIEW-NOTES.md) for corrections to the original wording and evidence limits.

## Publication history

- **22 October 2026:** Published three test-strategy/coverage/mapping exercises. Their original coursework dates remain in the source files.

- **23 October 2026:** Added the MindBridge automation strategy, preserving the original submission and distinguishing estimates from measured outcomes.

- **25 October 2026:** Added the Project Falcon quality playbook with QA/QC responsibilities and testing principles.

- **26 October 2026:** Added the registration 5-Whys investigation, separating recorded evidence from an unconfirmed underlying cause.

- **27 October 2026:** Added the enrollment date-validation RCA with corrected interpretation of the HTTP 400 response.

- **28 October 2026:** Added the functional/responsive lab report, qualifying the timing metric and viewport coverage.

Additional topic groups will be added after separate review.
