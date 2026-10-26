# Registration failure: evidence-led 5 Whys

A completed MindBridge course-lab investigation using Chrome DevTools Network observations. Source submission dated **14 October 2026**; portfolio publication **26 October 2026**.

## Problem and recorded evidence

After submitting the three-step registration form, the UI displayed a generic registration failure. The submission records:

| Item | Recorded observation |
| --- | --- |
| Application | Course mock application at `http://localhost:3000` |
| Screen | `/register` |
| Request | `POST /api/auth/register` |
| HTTP response | `400 Bad Request` |
| Error code | `missing_required_field` |
| Field identified by server | `clientId` |
| Response message | `Missing required field: clientId` |

The documented request includes email, password, name, date of birth, region and subscription tier, but not `clientId`. Password values are intentionally not repeated in this reading version. The source includes synthetic lab input and embedded screenshots of the UI, request and response.

## Reviewed 5-Whys chain

1. **Why did registration not complete?** The UI showed a registration failure after submission, as recorded in the source and embedded UI screenshot.
2. **Why did the UI enter the error flow?** The recorded registration request returned HTTP 400.
3. **Why did the server reject that request?** Its response reports a missing required field: `clientId`.
4. **What request/expectation gap is visible?** The documented request lacks the field required by the running server.
5. **Why does that gap exist?** Not established by the supplied evidence. The request builder, API contract, server validation and application configuration need comparison before assigning the underlying cause.

## Conclusion and limits

The supplied evidence supports a **request/server-expectation mismatch involving `clientId`**. It does not establish which component owns the defect or why the mismatch was introduced. HTTP 400 alone is not proof of defective server validation; the server may correctly reject an incomplete request.

The original submission calls the frontend omission the root cause and proposes adding the field. That is a corrective hypothesis pending contract and code review, not a verified fix. A required identifier should come from the documented trusted source, not an arbitrary hardcoded value.

## Proposed verification and prevention

- Confirm whether `clientId` belongs in the public registration request and how it should be obtained.
- Compare the frontend request builder with the backend validation/schema for the same build.
- Check configuration or version drift before deciding whether to change the client or server.
- After an agreed fix, verify successful registration and persisted account data, then rerun missing/invalid-field checks.
- Add contract tests for required fields and review whether the generic UI message provides useful feedback.

These are next-step proposals. No fix, retest, successful registration or new execution is claimed here.

## Source

- [Original completed 5-Whys report with embedded screenshots](originals/registration-five-whys.pdf)
- [Portfolio index](../../README.md)

The original PDF is preserved unchanged. It names `registration-400-clientId.png` and `response-body.json`, but those standalone files are not included in this folder; the PDF contains the supplied evidence. This scenario is separate from the enrollment RCA and other MindBridge datasets.
