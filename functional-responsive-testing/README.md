# Course catalog: functional and responsive testing

A completed coursework report comparing functional search behavior with responsive layout and a DevTools timing observation on the MindBridge Course Catalog mock application.

Published **28 October 2026**. The source does not specify an execution date or application build. Results below are historical observations reported in that document, not a new test run.

## Recorded checks

| Area | Input or environment | Result reported in the source |
| --- | --- | --- |
| Course search | Keywords such as `cross` and `virtual` | PASS: matching course titles/descriptions returned |
| API timing | `/api/courses`, local development environment | One 3.03-second observation, labeled SLOW |
| Narrow layout | DevTools viewport widths 375px and 414px | FAIL: navigation/cards overlap or overflow |
| Wider layout | DevTools viewport widths 768px and 1200px | PASS: layout reported to align correctly |

Only the listed widths are covered. They do not establish that every width below 768px fails or that every wider viewport passes. DevTools responsive emulation is not proof of testing on physical mobile devices.

## Interpreting the timing observation

The source's summary calls 3.03 seconds a response time, while its detailed analysis identifies it as **Waiting for server response / TTFB**. Those metrics should not be treated as interchangeable. No standalone Network capture, HAR, repeated sample set, cache/throttling settings or load profile is included here.

Treat this as a reported single-request timing observation. It is not a load test, a representative latency benchmark or evidence of a specific backend bottleneck. The original suggestion to reduce timing below 500ms is a proposed target, not a documented agreed acceptance criterion.

Indexing and caching are possible investigation directions, not verified fixes. Identify where time is spent and confirm a realistic target before recommending a change.

## STLC mapping from the exercise

| Activity | Phase |
| --- | --- |
| Define scope and expected behavior | Test planning and design |
| Start the app and prepare DevTools | Environment setup |
| Run search, inspect timing and vary viewport width | Test execution |
| Summarize findings and recommendations | Test cycle closure |

## Proposed follow-up checks

- Record the application build, browser version, viewport height, zoom and exact steps for the narrow-layout issue; attach UI evidence.
- Check widths around the suspected breakpoint and keyboard access to affected controls.
- Repeat timing measurements under recorded cache/network conditions and keep TTFB separate from total request duration.
- Broaden search coverage with empty input, no-match terms and other relevant cases before making a general functionality claim.
- Retest any supplied fix and compare the same configurations. No fix or retest is claimed in this folder.

## Source and limits

- [Original Azerbaijani lab report (PDF)](originals/functional-nonfunctional-lab-report.pdf)
- [Portfolio index](../README.md)

The original PDF is preserved unchanged, including its pagination artifacts. It contains summary tables and written observations but no embedded application screenshots or raw measurement files. This reading version qualifies the source's wider claims; it does not invent missing evidence, new bugs or execution results. These limited checks alone do not establish release readiness.
