Needs["CIFAR`"];

VerificationTest[
    CIFAR`AdjointReduce[
        CIFAR`dA[a, c, d, e] CIFAR`ff[a, b, e] CIFAR`ff[b, c, d]
    ],
    0,
    TestID -> "Regression-dA-ff-antisymmetry"
]

VerificationTest[
    CIFAR`AdjointReduce[
        CIFAR`dF[a, b, c] CIFAR`dF[a, d, e] CIFAR`ff[b, d, f] CIFAR`ff[c, e, f]
    ],
    CIFAR`CA CIFAR`C3FF/2,
    TestID -> "Regression-dF-dF-ff-ff"
]

VerificationTest[
    CIFAR`AdjointReduce[
        CIFAR`dF[a, b, c] CIFAR`dF[a, d, e] CIFAR`ff[b, d, f] CIFAR`ff[c, e, f]
    ] - CIFAR`CA CIFAR`C3FF/2,
    0,
    TestID -> "Regression-dF-contraction-subtraction"
]
