#!/usr/bin/env wolframscript

repoRoot = DirectoryName[DirectoryName[$InputFileName]];
PacletDirectoryLoad[repoRoot];
Needs["CIFAR`"];

cases = Get[FileNameJoin[{repoRoot, "Tests", "Fixtures", "FullRegression.wl"}]];

(* Express results in a common invariant basis before comparison. *)
normalize[expr_] := Together[expr /. CIFAR`CF -> CIFAR`TF CIFAR`DA/CIFAR`DF];

equivalentQ[input_, expected_] :=
    Together[
        Quiet[
            CIFAR`CIFARReduce[
                input,
                CIFAR`UseCache -> False,
                CIFAR`EliminateInvariant -> CIFAR`CF
            ],
            CIFAR`Private`FullyContractedQ::nocolorobjects
        ] - normalize[expected]
    ] === 0;

sampleIndexes = DeleteDuplicates[Clip[{1, 2, 10, 100, 1000, 10000, Length[cases]}, {1, Infinity}]];
checks = equivalentQ @@ cases[[#]] & /@ sampleIndexes;

passedCount = Count[checks, True];
failedCount = Count[checks, False];

Print["CIFAR fixture smoke tests: ", passedCount, " passed, ", failedCount, " failed"];

If[failedCount > 0, Exit[1]];
