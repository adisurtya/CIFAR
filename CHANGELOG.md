# Changelog

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
