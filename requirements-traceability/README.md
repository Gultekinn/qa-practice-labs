# Profile requirements traceability matrix

A completed MindBridge coursework matrix mapping **3 profile requirements to 5 test cases**. Published **31 October 2026**. The workbook does not specify an execution date or build.

## Requirement coverage

| Requirement | User goal | Linked cases |
| --- | --- | --- |
| MB-SP-01 | Upload a profile picture to personalize the account | TC-SP-01, TC-SP-02 |
| MB-SP-02 | Write a professional bio to share background with tutors | TC-SP-03, TC-SP-04 |
| MB-SP-03 | Set profile visibility to Private or Public | TC-SP-05 |

## Recorded scenarios

| Case | Source type | Scenario summarized from the workbook | Source status |
| --- | --- | --- | --- |
| TC-SP-01 | Positive | Upload a JPG profile image up to 5 MB | pass |
| TC-SP-02 | Negative | Attempt PDF or GIF input up to 10 MB | pass |
| TC-SP-03 | Positive | Enter a bio of at most 700 characters | pass |
| TC-SP-04 | Negative | Enter a bio longer than 700 characters | pass |
| TC-SP-05 | Positive | Switch off an enabled profile privacy control | pass |

The statuses above preserve historical coursework entries. They are not new executions or independently verified results. A negative test marked pass should mean the invalid input was handled as expected, not that it was accepted; this matrix does not record actual behavior.

## Review notes and coverage gaps

- The workbook contains requirement, scenario, case ID, type and status, but no steps, expected/actual results, evidence links or execution metadata.
- The 5 MB image and 700-character bio limits appear in the scenarios, not in the user-story wording. Confirm them against acceptance criteria before treating them as product specifications.
- TC-SP-02 mixes file type and size. Split unsupported-format checks from above-limit-size checks so failures can be attributed to a specific rule. Confirm whether GIF is actually unsupported.
- TC-SP-03 describes a valid maximum, whereas TC-SP-04 describes an above-limit negative case. Exact boundary inputs and the expected reject/truncate behavior still need documentation.
- TC-SP-05 does not define which toggle state means Public or Private, whether the setting persists, or how another user sees the profile. Those checks would strengthen requirement coverage.
- Linking all three requirements does not establish complete functional coverage or release readiness.

These are proposed improvements to the matrix, not additional executed test cases. The original five statuses remain unchanged.

## Source

- [Original completed Excel matrix](originals/profile-rtm.xlsx)
- [Portfolio index](../README.md)

The workbook is preserved unchanged. The tables above make its contents readable on GitHub and label interpretation limits explicitly. No missing execution evidence has been reconstructed.
