# Enrollment date validation: reviewed RCA

A MindBridge coursework investigation into an enrollment request containing an invalid calendar date. Prepared by Gültəkin Əzizova on **15 October 2026**; published **27 October 2026**.

## Recorded scenario

| Item | Value reported in the original submission |
| --- | --- |
| Application | MindBridge course mock app, `http://localhost:3000` |
| Browser | Microsoft Edge |
| Request | `POST /api/enroll` |
| Test user / course | `U010` / `C110` |
| EnrollmentDate | `2026-13-01` |
| Response status | `400 Bad Request` |
| Response message | `Invalid date format or non-existent month supplied` |

Month 13 is not a valid calendar month. The date has the visual shape `YYYY-MM-DD`, but its calendar value is invalid; syntax and calendar validity should be considered separately.

## Evidence review

The recorded response indicates that the API rejected this invalid input. It therefore **does not support the original conclusion that backend date validation is absent**. Whether HTTP 400 is the required response for this application still depends on its API contract.

The PDF contains a small embedded Network screenshot. The request, payload and response above are transcribed from its written evidence table; the screenshot alone does not independently establish every listed field. A full-resolution capture or HAR and the relevant API contract would strengthen verification.

## Reviewed 5-Whys chain

1. **Why did enrollment not complete?** The submission reports an HTTP 400 response to the enrollment attempt.
2. **Why was that request rejected?** The reported response identifies an invalid date or non-existent month.
3. **What invalid input was supplied?** `EnrollmentDate: 2026-13-01`, containing month 13.
4. **Why did that value reach the API?** Not established. Confirm whether the input came through the normal UI, a modified request or another submission path before attributing a client-side validation gap.
5. **Why might a UI/process gap exist?** Unknown without reproduction, requirements and implementation review. The source's claims about component coding and code-review omissions are hypotheses, not established causes.

## Proposed verification plan

- Reproduce using the normal enrollment UI and record the input method, field behavior and feedback.
- Send a separate direct API request to verify that server-side calendar validation remains effective even when bypassing the UI.
- Confirm the API contract and UI requirements before deciding whether a defect exists in status handling or user feedback.
- Check valid month boundaries, invalid month/day combinations and leap-year behavior using documented expected results.
- If a fix is later provided, retest the original scenario and relevant enrollment regression cases. The source names QEAR-T1 through QEAR-T4, but their definitions and executions are not supplied here.

These are planned checks, not newly executed tests. No fix or retest result is claimed.

## Conclusion

The documented API response is consistent with rejection of an invalid calendar date. A possible usability or client-side validation issue needs separate evidence. There is insufficient evidence here to assign an organizational root cause or claim that a backend validation fix is required.

## Source and related work

- [Original completed enrollment RCA (PDF)](originals/course-enrollment-rca.pdf)
- [Separate registration/clientId investigation](../registration/README.md)
- [Portfolio index](../../README.md)

The original PDF is preserved unchanged; this reading version corrects the interpretation and separates facts from hypotheses. Enrollment date validation and registration's missing-clientId response are separate scenarios and must not be combined into one defect count.
