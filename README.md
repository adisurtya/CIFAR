# CIFAR

CIFAR (Color Invariant Feynman Amplitude Reducer, pronounced "cipher") is a Mathematica package for computing the color factors associated with Feynman diagrams.

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

## Loading

For development, load the repository as a paclet and then load its context:

```
PacletDirectoryLoad["path/to/CIFAR"];
Needs["CIFAR`"];
```

`PacletInfo.wl` declares the package entry point in `Kernel/`, so no manual
`$Path` or `$CIFARPath` configuration is required.

## Citation

Please cite this software using [CITATION.cff](CITATION.cff). The color-algebra
method reference used by CIFAR is available through
[INSPIRE record 467380](https://inspirehep.net/literature/467380).
