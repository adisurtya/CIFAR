#!/usr/bin/env wolframscript

repoRoot = DirectoryName[DirectoryName[$InputFileName]];
PacletDirectoryLoad[repoRoot];
Needs["CIFAR`"];

cases = Get[FileNameJoin[{repoRoot, "Tests", "Fixtures", "FullRegression.wl"}]];
sampleCount = Replace[Environment["CIFAR_STRATIFIED_COUNT"], {
    value_String /; StringMatchQ[value, DigitCharacter ..] :> FromDigits[value],
    _ :> 120
}];
indexes = DeleteDuplicates[Round[Subdivide[1, Length[cases], sampleCount - 1]]];
normalize[expr_] := Together[expr /. CIFAR`CF -> CIFAR`TF CIFAR`DA/CIFAR`DF];

results = Map[
    Function[index,
        result = Quiet[TimeConstrained[
            CIFAR`CIFARReduce[
                cases[[index, 1]],
                CIFAR`UseCache -> False,
                CIFAR`EliminateInvariant -> CIFAR`CF
            ],
            30,
            "TIMEOUT"
        ]];
        Which[
            result === "TIMEOUT", {index, "timeout"},
            Together[result - normalize[cases[[index, 2]]]] === 0, {index, "pass"},
            True, {index, "fail"}
        ]
    ],
    indexes
];

Print[
    "CIFAR stratified regression: ", Count[results, {_, "pass"}], " passed, ",
    Count[results, {_, "fail"}], " failed, ",
    Count[results, {_, "timeout"}], " timed out"
];

If[Cases[results, {_, Except["pass"]}] =!= {},
    Print["Non-passing case indexes: ", Cases[results, {_, Except["pass"]}]];
    Exit[1]
];
