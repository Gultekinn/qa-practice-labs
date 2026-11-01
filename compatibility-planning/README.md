# Browser and device compatibility planning

A completed MindBridge coursework exercise selecting four configurations from a supplied ten-configuration inventory. Published **1 November 2026**. This is a planning exercise, not evidence of executed cross-browser tests. OS/browser versions below belong to the course dataset, not a recommendation for current browser support.

## Supplied audience data

The workbook groups users as **60% iOS Safari, 30% Windows Edge/Chrome and 10% legacy browsers**. These are course-provided proportions, not independently collected analytics. There is no user-count sample or device-level/browser-level split. The combined Windows group is not 30% for each browser, and the full 60% iOS share cannot be assigned specifically to iPhone 14.

Android and macOS appear in the inventory but have no separate percentage in the audience summary. Their exact coverage cannot be calculated from this data. The top-level metric stored as `1` is a normalized total, not proof of a one-person sample.

## Original selected configurations

| ID | Configuration from the source | Source priority rank | Planning rationale and limitation |
| --- | --- | --- | --- |
| C-04 | Windows 11 / Chrome (latest) / desktop / Blink | 1 | Covers one browser in the combined Windows group; its individual share is unknown. |
| C-03 | Windows 11 / Edge (latest) / desktop / Blink | 1 | Covers another major Windows browser; sharing an engine does not eliminate browser-specific differences. |
| C-01 | iOS 17 / Safari 17 / iPhone 14 / WebKit | 1 | Represents mobile iOS Safari, but not every device in the 60% group. |
| C-06 | macOS Sonoma / Safari 17 / desktop or laptop / WebKit | 2 | Adds a desktop Safari platform; exact audience share is unavailable. |

The original ranks are preserved, including three equal rank-1 entries. They represent tied priorities, not a unique execution order. “Latest” must be replaced by an exact build when tests are executed.

## All configurations left outside the original shortlist

| ID | Configuration | Reviewed reason / remaining risk |
| --- | --- | --- |
| C-02 | iOS 17 / Safari 17 / iPad Air | **Not a legacy configuration in this inventory.** Deferred by the four-slot choice, leaving tablet-specific layout and interaction risk in the largest audience group. |
| C-05 | Android 14 / Chrome / Pixel 7 | **Not a legacy configuration in this inventory.** Deferred by the four-slot choice; Android remains uncovered and its share is not quantified. |
| C-07 | Windows 10 / Internet Explorer 11 | Marked Exclude by the course inventory; deferral follows its supplied low-priority designation. |
| C-08 | Windows 7 / Firefox 52 ESR | Marked Exclude by the course inventory; deferral leaves legacy Gecko behavior untested. |
| C-09 | iOS 12 / Safari 12 / iPhone 6 | Marked Exclude in the inventory but omitted from the source's exclusion table; added here to complete the inventory accounting. |
| C-10 | Windows XP / Chrome 49 | Marked Exclude in the inventory but omitted from the source's exclusion table; added here to complete the inventory accounting. |

The original blanket legacy explanation for C-02 and C-05 is incorrect. Deferral does not mean lack of product support, and exclusions do not prove that the selected four configurations cover 90% of users.

## Suggested planning improvement

Before execution, obtain the iPhone/iPad split, Android/macOS shares and support policy. Under the same four-slot constraint, consider replacing C-06 with C-02 to sample mobile and tablet behavior within the largest stated group. This is a **proposed revision**, not an already executed or approved selection. Document the resulting loss of macOS coverage and revisit Android when better data is available.

For each executed configuration, record exact versions, device versus emulation, viewport, build, selected scenarios, expected/actual results and evidence. This folder contains none of those execution results and claims no PASS rate.

## Source

- [Original completed workbook](originals/mindbridge-compatibility-matrix.xlsx)
- [Portfolio index](../README.md)

The workbook is preserved unchanged. This reading version corrects classification and coverage claims, accounts for all ten configurations and keeps suggested improvements separate from original choices.
