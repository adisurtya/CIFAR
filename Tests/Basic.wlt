Needs["CIFAR`"];

VerificationTest[
    CIFAR`$CIFARVersion,
    "1.3.0",
    TestID -> "Package-version"
]

VerificationTest[
    CIFAR`$CIFARVersion,
    Get[FileNameJoin[{ParentDirectory[CIFAR`$CIFARPath], "PacletInfo.wl"}]]["Version"],
    TestID -> "Package-version-comes-from-paclet-info"
]

VerificationTest[
    Attributes[CIFAR`dA],
    {Orderless},
    TestID -> "dA-is-orderless"
]

VerificationTest[
    Attributes[CIFAR`dF],
    {Orderless},
    TestID -> "dF-is-orderless"
]

VerificationTest[
    CIFAR`SUncReduce[
        CIFAR`ff[a, b, c] CIFAR`ff[a, b, c],
        CIFAR`UseCache -> False
    ],
    -CIFAR`nc + CIFAR`nc^3,
    TestID -> "SUncReduce-ff-self-contraction"
]

VerificationTest[
    CIFAR`CIFARReduce[
        CIFAR`TT[{a}, i, j] CIFAR`TT[{a}, j, i],
        CIFAR`UseCache -> False
    ],
    CIFAR`CF CIFAR`DF,
    TestID -> "CIFARReduce-eliminate-invariant-default"
]

VerificationTest[
    CIFAR`CIFARReduce[
        CIFAR`TT[{a}, i, j] CIFAR`TT[{a}, j, i],
        CIFAR`UseCache -> False,
        CIFAR`EliminateInvariant -> CIFAR`CF
    ],
    CIFAR`TF CIFAR`DA,
    TestID -> "CIFARReduce-eliminate-CF"
]

VerificationTest[
    CIFAR`CIFARReduce[
        CIFAR`TT[{a}, i, j] CIFAR`TT[{a}, j, i],
        CIFAR`UseCache -> False,
        CIFAR`EliminateInvariant -> CIFAR`DF
    ],
    CIFAR`TF CIFAR`DA,
    TestID -> "CIFARReduce-eliminate-DF"
]

VerificationTest[
    CIFAR`CIFARReduce[
        CIFAR`TT[{a, b}, i, i] CIFAR`TT[{a, b}, j, j],
        CIFAR`UseCache -> False,
        CIFAR`EliminateInvariant -> CIFAR`TF
    ],
    CIFAR`CF^2 CIFAR`DF^2/CIFAR`DA,
    TestID -> "CIFARReduce-eliminate-TF"
]

VerificationTest[
    CIFAR`CIFARReduce[
        CIFAR`TT[{a, b}, i, i] CIFAR`TT[{a, b}, j, j],
        CIFAR`UseCache -> False,
        CIFAR`EliminateInvariant -> CIFAR`DA
    ],
    CIFAR`CF CIFAR`DF CIFAR`TF,
    TestID -> "CIFARReduce-eliminate-DA"
]

VerificationTest[
    (
        CIFAR`CIFARReduce[
            CIFAR`TT[{a}, i, j] CIFAR`TT[{a}, j, i],
            CIFAR`UseCache -> True
        ];
        CIFAR`CIFARReduce[
            CIFAR`TT[{a}, i, j] CIFAR`TT[{a}, j, i],
            CIFAR`UseCache -> True,
            CIFAR`EliminateInvariant -> CIFAR`CF
        ]
    ),
    CIFAR`TF CIFAR`DA,
    TestID -> "CIFARReduce-eliminate-invariant-cached-result"
]
