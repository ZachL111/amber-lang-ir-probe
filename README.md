# amber-lang-ir-probe

`amber-lang-ir-probe` is a compact Julia repository for compilers, centered on this goal: Create a Julia reference implementation for ir workflows, centered on constraint solving, bounded scenario files, and conflict explanations.

## Purpose

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Amber Lang IR Probe Review Notes

The first comparison I would make is `IR pressure` against `diagnostic reach` because it shows where the rule is most opinionated.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/amber-lang-ir-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `IR pressure` and `diagnostic reach`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Julia addition stays small enough to inspect in one sitting.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The same command runs the local verification path. The highest-scoring domain case is `stale` at 214, which lands in `ship`. The most cautious case is `recovery` at 136, which lands in `watch`.

## Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
