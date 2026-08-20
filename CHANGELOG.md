# Changelog

## Unreleased

### Fixed

- Validate contraction sums term by term, including fundamental/adjoint index
  domains.
- Preserve reducer options through recursive tracing and standardization.
- Add identity base cases for empty `TT` and `FF` chains.
- Reject invalid `EliminateInvariant` values and report non-convergent reductions.
- Extend standard-index pools beyond the original fixed limits.
- Harden in-memory cache keys and validate contractions before cache lookup.

### Added

- Regression tests for previously confirmed counterexamples.
- A stratified regression runner and manual Wolfram GitHub Actions workflow.

## 1.3.0 - 2026-08-09

### Added

- `EliminateInvariant` option for `CIFARReduce`, supporting `CF`, `DF`, `TF`,
  `DA`, and `None` through the identity `CF DF = TF DA`.
- A focused Wolfram test suite and a self-contained full regression corpus with
  26,289 unique validated cases.
- Paclet metadata, an MIT license, and citation metadata.

### Changed

- Replaced the previous `ToFFLoopForm` workflow with the graph-based
  `FindSmallestFFLoop` workflow for identifying the smallest contracted
  structure-constant loop during adjoint reduction.
- Converted the package to the standard paclet layout under `Kernel/`.

### Fixed

- Corrected package initialization and attribute loading order for color
  algebra objects.
- Ensured `EliminateInvariant` is applied consistently to cached reductions.
