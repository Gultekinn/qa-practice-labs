# Checkout exploration and SBTM charter

MindBridge course-lab submissions by Gültəkin Əzizova, published **30 October 2026**. The workbook is dated **7 October 2026** and the charter **8 October 2026**. They describe overlapping checkout observations; the differing source dates are preserved, and their findings are not counted as separate unique defects.

## Session mission and scope

The charter records a **15-minute session, 01:03–01:18**, on the local course mock application at `http://localhost:3000`. The mission focuses on checkout input validation and transaction state changes.

- Planned heuristics: rapid input, unexpected characters, boundary/Goldilocks and interruption.
- Recorded actions: expiry input, long card/ZIP values and browser Back navigation.
- The debrief also reports catalog/cart exploration. Account management and password reset were outside the mission.

These are recorded coursework activities, not a new session or proof that every planned heuristic was executed. The charter reports no blockers; the workbook also describes improving a rejected ticket's reproduction details.

## Observations reviewed for publication

| Observation in the sources | Review interpretation | Evidence still needed |
| --- | --- | --- |
| Expiry input such as `03/45` accepted; called an invalid day in the reports | If the field expects MM/YY, 45 is a year, not a day. This example alone does not establish invalid-date acceptance. The workbook also names `35/29`, which needs separate reproduction. | Field label/format, exact submitted input and matching outcome; reproduce an actually invalid month under the agreed contract. |
| Card/ZIP fields accept excessive digits | A validation concern requiring exact field rules and input lengths; allowing entry and accepting a submitted payment are different observations. | Card brand/length and country-specific postal rules, actual submitted values, response and resulting order state. |
| Browser Back navigation resets fields to defaults | A state-handling/usability observation pending requirements. Payment data should not automatically be expected to persist. | Which fields reset, expected navigation/privacy behavior and reproducible sequence. |

The original Critical/Major/Minor labels are the author's coursework assessments, not independently confirmed severity ratings. No confirmed unique bug total is claimed here. The mock lab's success screen is not evidence that real money was charged.

## Defect-report improvement exercise

The workbook describes adding environment details, numbered steps, distinct expected/actual results and an In Progress status to a seeded rejected ticket. Its embedded screenshots are retained in the original PDF. This is a course workflow exercise, not evidence of a live employer's Jira ticket being accepted or a fix being delivered.

## Proposed next steps

1. Confirm the expiry format and use cases that distinguish month/year validation from day-of-month validation.
2. Record exact over-length values and distinguish UI entry, client validation, API response and final transaction state.
3. Agree which fields may persist across navigation; avoid retaining sensitive payment fields merely for convenience.
4. Separate observations into reproducible reports only when the requirement and evidence support them.
5. Retest after a supplied fix. No new execution, code fix or retest result is included.

## Original submissions

- [SBTM charter, 8 October (PDF)](originals/sbtm-charter.pdf)
- [Manual testing workbook, 7 October (PDF)](originals/manual-testing-workbook.pdf)
- [Portfolio index](../README.md)

Both PDFs are preserved unchanged. The workbook contains embedded ticket screenshots; the charter contains session notes. The reviewed wording above qualifies the original conclusions without inventing missing requirements or execution evidence.
