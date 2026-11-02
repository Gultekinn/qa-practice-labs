# QA metrics dashboard: formula review

A completed coursework spreadsheet with pass/fail inputs and two dashboard calculations. Published **2 November 2026**. This is a review of supplied workbook values and formulas, not a new test execution.

## Inputs and derived values

| Metric | Workbook source | Value |
| --- | --- | --- |
| Tests passed | Raw Data!C2 | 4 |
| Tests failed | Raw Data!C3 | 1 |
| Defects found | Raw Data!C4 | 1 |
| Executed tests | C2 + C3 | 5 |
| Pass rate | 4 / 5 | 80% |
| Defects per executed test | 1 / 5 | 0.2 |

The two derived ratios were independently checked against the inputs and match the workbook's cached values. That verifies this arithmetic, not the provenance or completeness of the underlying test results.

## Dashboard formulas

**Dashboard!B5 — Pass rate**

```excel
=IFERROR('Raw Data'!C2/SUM('Raw Data'!C2:C3),0)
```

**Dashboard!E5 — source label: DEFECT DENSITY**

```excel
=IFERROR('Raw Data'!C4/SUM('Raw Data'!C2:C3),0)
```

E5 divides defects by executed tests. The clearer label for this workbook is **Defects per executed test**, with denominator 5. There is no code-size or functional-size measurement, so this must not be presented as defects per KLOC or a measure of overall product quality. It is also not automatically a 20% failed-test rate: failed tests and unique defects are different counts.

## Review notes

- Both formulas return zero for any error through `IFERROR`. With zero executed tests the ratio should be unavailable, not reported as a healthy 0% result. Unexpected errors should remain visible for investigation.
- Validate that inputs are non-negative whole-number counts; the source provides an input instruction but that alone is not proof of enforced validation.
- A test-case run log, defect register, execution date and build are not supplied in the workbook. The five tests and one defect cannot be independently traced here.
- Blocked and not-run tests are not inputs in this dataset; do not infer they were zero or include them in the denominator.
- These values are separate from the 100-result checkout summary and other MindBridge datasets.

These are review recommendations. The workbook's labels, formulas and source inputs are preserved unchanged; no additional execution results are invented.

## Source

- [Original completed dashboard workbook](originals/qa-metrics-dashboard.xlsx)
- [Portfolio index](../README.md)

The original filename ended in `.pdf.xlsx`; its actual format is Excel. The copy linked here has a clearer filename and identical contents.
