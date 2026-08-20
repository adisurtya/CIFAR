# CIFAR

CIFAR (Color Invariant Feynman Amplitude Reducer, pronounced "cipher") is a Mathematica package for computing the color factors associated with Feynman diagrams.

## Notation and normalization

CIFAR uses the standard SU(n) normalization:

\[
\operatorname{tr}(t^a t^b) = T_F\,\delta^{ab},
\qquad C_F D_F = T_F D_A,
\qquad C_A = 2 T_F n_c.
\]

| Symbol | Meaning |
| --- | --- |
| `DF`, `DA` | Fundamental and adjoint representation dimensions |
| `TF` | Fundamental quadratic Dynkin index |
| `CF`, `CA` | Fundamental and adjoint quadratic Casimirs |
| `ff[a,b,c]` | Adjoint structure constants \(f^{abc}\) |
| `TT[{a1,...,an},i,j]` | Product of fundamental generators |
| `FF[{a1,...,an}]` | Adjoint-representation trace loop |
| `dF[...]`, `dA[...]` | Symmetric tensors with adjoint indices in the fundamental/adjoint representation |

Color indices must be contracted exactly twice and must not be reused across
fundamental and adjoint slots.

## Development

Load the repository as a development paclet in a fresh kernel:

```
PacletDirectoryLoad["path/to/CIFAR"];
Needs["CIFAR`"];
```

Run the focused test suite from the repository root:

```
wolframscript -file Tests/runTests.wls
```

`Tests/runFixtureTests.wls` runs a fast, representative sample from the
versioned regression fixture. `Tests/runFullRegressionTests.wls` validates all
26,289 unique cases before a release. Both compare results in the
`EliminateInvariant -> CF` basis and run without external files.

For a fast pre-commit check, run both focused and fixture suites:

```
wolframscript -file Tests/runTests.wls
wolframscript -file Tests/runFixtureTests.wls
```

The full regression runner accepts `CIFAR_FULL_REGRESSION_START` and
`CIFAR_FULL_REGRESSION_END` environment variables, allowing the corpus to be
split across workers.

The repository also includes a manual GitHub Actions workflow,
`.github/workflows/wolfram-tests.yml`. It expects a self-hosted runner labeled
`macOS` and `wolfram` with a licensed `wolframscript` installation.

## Loading

For development, load the repository as a paclet and then load its context:

```
PacletDirectoryLoad["path/to/CIFAR"];
Needs["CIFAR`"];
```

`PacletInfo.wl` declares the package entry point in `Kernel/`, so no manual
`$Path` or `$CIFARPath` configuration is required.

## Reduction contract

`CIFARReduce` and `SUncReduce` are intended for fully contracted color
expressions. With `CheckContractions -> True` (the default), invalid index
multiplicities or mixed representation slots return the input unchanged and
emit a diagnostic. Set `CheckContractions -> False` only when deliberately
working with open expressions.

`EliminateInvariant -> CF`, `DF`, `TF`, or `DA` applies the identity
`CF DF = TF DA` to the final result. Invalid values are rejected.

## Development workflow

Use the `develop` branch for changes. Keep each fix paired with a regression
test in `Tests/`, run the focused and fixture suites locally, and use the full
regression suite before publishing a release. The audit checklist is maintained
as a project task list so each fix can be tracked independently.

## Citation

Please cite this software using [CITATION.cff](CITATION.cff). The color-algebra
method reference used by CIFAR is available through
[INSPIRE record 467380](https://inspirehep.net/literature/467380).
