# Registration automation: course-lab report

A completed Azerbaijani report describing a guided Playwright/TypeScript registration exercise in a Linux/VS Code course environment. Source dated **18 October 2026**; published **7 November 2026**.

This folder contains a **documentation artifact**, not a runnable automation project. No original test script, package manifest, lockfile, Playwright config, application build or complete runner output was supplied, and no new run was performed for publication.

## Workflow described in the report

1. Correct the working directory from `~/Desktop` to `/app/lab` and prepare the `tests` folder.
2. Investigate a missing `@playwright/test` import/package error.
3. Prepare a TypeScript test for the three-step form at `http://localhost:3000/register`, using `getByTestId` locators.
4. Include dashboard URL and `Welcome back!` text assertions.
5. Install the test package and browser binaries as described in the report.
6. Record the terminal outcome shown in the submission.

These are the source's historical lab steps, not a complete current installation guide. The initial screenshot shows copying a supporting registration test; the later screenshots show editing code. This is guided course practice, not evidence of an independently designed automation framework.

## Result and evidence boundary

The report states **1 passed**, with a **717 ms** test duration. An embedded terminal screenshot displays a passing line and `1 passed (2.2s)`, alongside dependency-validation output. Test duration and whole-run duration are different measurements and should not be combined.

Earlier screenshots show import/setup errors and a failed run. The supplied PDF does not provide a continuous raw execution log or enough original project files to independently verify how all setup issues were resolved and reproduce the final run. The final screenshot is retained as a historical reported outcome, not proof of a newly verified pass on this computer.

## Skills illustrated

- Following a guided TypeScript UI-test workflow.
- Test-id locators and explicit URL/text assertions.
- Recognizing working-directory and dependency setup problems.
- Recording troubleshooting steps and interpreting runner output.

This does not establish coverage for invalid registration, API validation, persisted customer data or cross-browser behavior.

## Reproducibility requirements for future work

To turn this report into a runnable project, recover the original script and matching application, record package versions/configuration, document startup and test commands, and capture a fresh complete run. Treat any newly written replacement script as new work rather than a recovered original.

The previously reviewed generic registration example targeting `example.com` must not be assumed equivalent to this localhost three-step wizard. This report also does not inherit the passing results of the separate MindBridge account-update automation project.

## Source

- [Original course-lab report with embedded screenshots](originals/playwright-registration-lab-report.pdf)
- [Portfolio index](../README.md)

The PDF is preserved unchanged, including its pagination artifacts. No code or missing runner evidence has been reconstructed from the screenshots.
