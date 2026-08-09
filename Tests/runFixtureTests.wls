#!/usr/bin/env wolframscript

repoRoot = DirectoryName[DirectoryName[$InputFileName]];
PacletDirectoryLoad[repoRoot];
Needs["CIFAR`"];

fixtureDirectory = Replace[
    Quiet[Environment["CIFAR_TEST_FIXTURE_DIR"]],
    _Missing | $Failed | "" -> FileNameJoin[{$HomeDirectory, "Downloads"}]
];

todoFixture = FileNameJoin[{fixtureDirectory, "colorToDoMaster.m"}];
doneFixture = FileNameJoin[{fixtureDirectory, "colorDoneMaster.m"}];

If[
    !FileExistsQ[todoFixture] || !FileExistsQ[doneFixture],
    Print["Fixture files not found in: ", fixtureDirectory];
    Exit[2]
];

todoExpressions = Get[todoFixture];
doneExpressions = Get[doneFixture];

shapeMatches = Length /@ todoExpressions === Length /@ doneExpressions;

(* Express results in a common invariant basis before comparison. *)
invariantIdentity =
    CIFAR`CF^n_. * CIFAR`DF :>
        CIFAR`CF^(n - 1) CIFAR`TF CIFAR`DA /;
            IntegerQ[n] && n >= 1;

equivalentQ[left_, right_] :=
    Expand[(left /. invariantIdentity) - (right /. invariantIdentity)] === 0;

checks = Flatten[
    Table[
        equivalentQ[
            Quiet[
                CIFAR`CIFARReduce[
                    todoExpressions[[group, index]],
                    CIFAR`UseCache -> False
                ],
                CIFAR`Private`FullyContractedQ::nocolorobjects
            ],
            doneExpressions[[group, index]]
        ],
        {group, Length[todoExpressions]},
        {index, DeleteDuplicates[{1, 2, 10, Length[todoExpressions[[group]]]}]}
    ]
];

passedCount = Count[Prepend[checks, shapeMatches], True];
failedCount = Count[Prepend[checks, shapeMatches], False];

Print["CIFAR fixture tests: ", passedCount, " passed, ", failedCount, " failed"];

If[failedCount > 0, Exit[1]];
