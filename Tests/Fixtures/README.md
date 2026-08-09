# Full Regression Fixture

`FullRegression.wl` is a self-contained list of `{input, expected}` pairs for
the CIFAR full regression suite.

It was generated from `colorToDoMaster.m` and `colorDoneMaster.m` by flattening
their four batches, pairing each input with its expected result, and removing
duplicate pairs. The resulting corpus contains 26,289 unique cases; duplicate
inputs were verified to have equivalent expected results under `CF DF = TF DA`.

Run the full suite with:

```text
wolframscript -file Tests/runFullRegressionTests.wls
```

To run a contiguous subset, set `CIFAR_FULL_REGRESSION_START` and
`CIFAR_FULL_REGRESSION_END` to one-based case indexes before starting the
runner. This is useful for splitting a release validation into chunks.
