#!/usr/bin/env wolframscript

repoRoot = DirectoryName[DirectoryName[$InputFileName]];
PacletDirectoryLoad[repoRoot];
Needs["CIFAR`"];

cases = Get[FileNameJoin[{repoRoot, "Tests", "Fixtures", "FullRegression.wl"}]];
normalize[expr_] := Together[expr /. CIFAR`CF -> CIFAR`TF CIFAR`DA/CIFAR`DF];

readIndex[name_, default_] := Replace[
    Environment[name],
    {
        value_String /; StringMatchQ[value, DigitCharacter ..] :> FromDigits[value],
        _ -> default
    }
];

firstIndex = Max[1, readIndex["CIFAR_FULL_REGRESSION_START", 1]];
lastIndex = Min[Length[cases], readIndex["CIFAR_FULL_REGRESSION_END", Length[cases]]];

If[firstIndex > lastIndex, Print["Invalid regression range"]; Exit[2]];

failureIndexes = Reap[
    Do[
        result = Quiet[
            CIFAR`CIFARReduce[
                cases[[index, 1]],
                CIFAR`UseCache -> False,
                CIFAR`EliminateInvariant -> CIFAR`CF
            ],
            CIFAR`Private`FullyContractedQ::nocolorobjects
        ];
        If[Together[result - normalize[cases[[index, 2]]]] =!= 0, Sow[index]];
        If[Mod[index - firstIndex + 1, 1000] == 0,
            Print["Checked ", index, " of ", lastIndex]
        ],
        {index, firstIndex, lastIndex}
    ]
][[2]];

failureIndexes = If[failureIndexes === {}, {}, First[failureIndexes]];
passedCount = lastIndex - firstIndex + 1 - Length[failureIndexes];

Print[
    "CIFAR full regression tests (cases ", firstIndex, "-", lastIndex, "): ",
    passedCount, " passed, ", Length[failureIndexes], " failed"
];

If[failureIndexes =!= {}, Print["Failed case indexes: ", failureIndexes]; Exit[1]];
