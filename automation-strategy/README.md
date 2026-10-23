# MindBridge automation strategy

An automation selection exercise for the course-provided MindBridge AI Tutor mock application, Sprint 1. Prepared by Gültəkin Əzizova on **17 October 2026**; published on **23 October 2026**.

The exercise evaluates repeatability, business impact, predictable outcomes and the need for human judgment. It proposes three automation candidates and one scenario to keep manual.

## Proposed automation candidates

| Source case | Scenario | Source priority | Reason for selection | Proposed frequency / benefit |
| --- | --- | --- | --- | --- |
| TC-01 | Student login with a valid email and password on the lab QA environment (`localhost:8081`) | High | Repeated authentication flow; treated as stable in the exercise | Every build; estimated 2 minutes saved per cycle |
| TC-03 | Course checkout with mock payment and enrollment confirmation | Critical | Core business workflow with a defined expected outcome | Before each release; the source also marks it for every build |
| TC-07 | CSV import of 200 student records and database verification | Medium | Repetitive, data-driven verification | Per bulk upload; estimated 10–15 minutes saved |

The priorities and savings above are planning judgments from the original submission, not measured performance improvements. The 200 records describe the proposed scenario, not an attached or verified import run.

## Scenario to keep manual

**TC-05 — Explore the AI Practice Generator under slow network conditions.**

Keep exploratory investigation of confusing workflows, unexpected behavior and usability issues manual because the assessment relies on human judgment. Repeatable checks discovered during exploration could later become automation candidates; this does not mean that every aspect of the feature must remain manual.

## Review before implementation

- Confirm checkout stability and define repeatable mock-payment data before automating TC-03; the source does not mark its stability as established.
- For imports, verify record content and duplicates as well as counts; define cleanup and repeatable test data. These are proposed implementation checks, not results from this exercise.
- Measure manual runtime, automated runtime and maintenance effort before claiming time savings or ROI.
- Automation can reduce repetitive work, but does not guarantee flawless results or eliminate all human error.

## Source and scope

- [Original completed submission (PDF)](originals/mindbridge-automation-strategy.pdf)
- [Back to the exercise index](../README.md)

The original PDF is preserved unchanged. This reading version clarifies estimates and qualifications in the source wording. This folder contains a strategy exercise, not three implemented scripts or a new automated test run. Its case IDs belong to this exercise and should not be joined to other MindBridge datasets solely by ID.
