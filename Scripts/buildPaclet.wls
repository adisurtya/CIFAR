#!/usr/bin/env wolframscript

Needs["PacletTools`"];

repoRoot = DirectoryName[DirectoryName[$InputFileName]];
buildDirectory = FileNameJoin[{repoRoot, "dist"}];

If[!DirectoryQ[buildDirectory], CreateDirectory[buildDirectory]];

build = PacletTools`PacletBuild[repoRoot, buildDirectory];
archive = build["PacletArchive"];

Print["Built paclet archive: ", archive];
