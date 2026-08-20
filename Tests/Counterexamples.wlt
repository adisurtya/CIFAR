Needs["CIFAR`"];

VerificationTest[
    Quiet[
        CIFAR`CIFARReduce[
            7 + CIFAR`ff[a, b, c]^2,
            CIFAR`UseCache -> False
        ]
    ],
    7 + CIFAR`CA CIFAR`DA,
    TestID -> "CIFARReduce-reduces-color-terms-in-scalar-sums"
]

VerificationTest[
    Quiet[
        CIFAR`CIFARReduce[
            CIFAR`dF[a, b, c]^2 + CIFAR`ff[d, e, f]^2,
            CIFAR`UseCache -> False
        ]
    ],
    CIFAR`C3FF + CIFAR`CA CIFAR`DA,
    TestID -> "CIFARReduce-reduces-sums-with-pre-evaluated-invariants"
]

VerificationTest[
    Quiet[CIFAR`TraceTT[CIFAR`TT[{}, i, i]]],
    CIFAR`DF,
    TestID -> "TraceTT-empty-chain"
]

VerificationTest[
    Quiet[CIFAR`ContractTT[CIFAR`TT[{}, i, j]]],
    CIFAR`deltaF[i, j],
    TestID -> "ContractTT-empty-chain"
]

VerificationTest[
    Quiet[CIFAR`TraceFF[CIFAR`FF[{}]]],
    CIFAR`DA,
    TestID -> "TraceFF-empty-loop"
]

VerificationTest[
    Quiet[CIFAR`ContractFF[CIFAR`FF[{}]]],
    CIFAR`DA,
    TestID -> "ContractFF-empty-loop"
]

VerificationTest[
    Module[{indices, expression, result},
        indices = Table[Unique["adj"], 41];
        expression = Times @@ (CIFAR`deltaA[#, #] & /@ indices);
        result = Quiet[CIFAR`StandardizeIndices[expression]];
        Length[Cases[result, _CIFAR`deltaA, All]]
    ],
    41,
    TestID -> "StandardizeIndices-more-than-40-adjoint-indices"
]

VerificationTest[
    Quiet[
        CIFAR`CIFARReduce[
            CIFAR`ff[a, b, c]^2,
            CIFAR`UseCache -> False,
            CIFAR`EliminateInvariant -> "CF"
        ]
    ],
    $Failed,
    TestID -> "CIFARReduce-rejects-invalid-invariant-option"
]

VerificationTest[
    Module[{before, after},
        before = Options[CIFAR`TraceTT];
        SetOptions[CIFAR`TraceTT, CIFAR`Tabulate -> False];
        Quiet[CIFAR`CIFARReduce[
            CIFAR`TT[{a}, i, j] CIFAR`TT[{a}, j, i],
            CIFAR`UseCache -> False,
            CIFAR`Tabulate -> False
        ]];
        after = Options[CIFAR`TraceTT];
        SetOptions[CIFAR`TraceTT, Sequence @@ before];
        after
    ],
    {CIFAR`Tabulate -> False},
    TestID -> "CIFARReduce-does-not-mutate-TraceTT-options"
]

VerificationTest[
    Quiet[
        CIFAR`CIFARReduce[
            CIFAR`TT[{a}, i, j] CIFAR`ff[i, k, a]
                CIFAR`TT[{b}, k, l] CIFAR`ff[j, l, b],
            CIFAR`UseCache -> False
        ]
    ],
    CIFAR`TT[{a}, i, j] CIFAR`ff[i, k, a]
        CIFAR`TT[{b}, k, l] CIFAR`ff[j, l, b],
    TestID -> "CIFARReduce-rejects-mixed-index-types"
]

VerificationTest[
    Module[{term1, term2, sumResult, mappedResult},
        term1 = CIFAR`TT[{a}, i, j] CIFAR`TT[{b}, j, k] CIFAR`TT[{c}, k, i];
        term2 = CIFAR`TT[{d}, p, q] CIFAR`TT[{e}, q, p];
        sumResult = Quiet[CIFAR`StandardizeIndices[
            term1 + term2,
            CIFAR`UseGraphStandardization -> False,
            CIFAR`CheckContractions -> False
        ]];
        mappedResult = Total[Quiet[CIFAR`StandardizeIndices[
            #,
            CIFAR`UseGraphStandardization -> False,
            CIFAR`CheckContractions -> False
        ]] & /@ {term1, term2}];
        sumResult === mappedResult
    ],
    True,
    TestID -> "StandardizeIndices-forwards-options-through-sums"
]
