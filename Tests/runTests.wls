#!/usr/bin/env wolframscript

repoRoot = DirectoryName[DirectoryName[$InputFileName]];
PacletDirectoryLoad[repoRoot];

testFiles = {
    "Basic.wlt",
    "AdjointReduce.wlt",
    "DefinitionIntegrity.wlt",
    "Counterexamples.wlt"
};

report = TestReport[FileNameJoin[{repoRoot, "Tests", #}] & /@ testFiles];

Print[
    "CIFAR tests: ", report["TestsSucceededCount"], " passed, ",
    report["TestsFailedCount"], " failed"
];

If[report["TestsFailedCount"] > 0, Exit[1]];
