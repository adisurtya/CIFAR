Needs["CIFAR`"];

VerificationTest[
    FreeQ[
        Join @@ (UpValues /@ {
            CIFAR`TT,
            CIFAR`ff,
            CIFAR`FF,
            CIFAR`deltaA,
            CIFAR`deltaF,
            CIFAR`dA,
            CIFAR`dF
        }),
        HoldPattern[HoldPattern[Times[0, ___]] :> _]
    ],
    True,
    TestID -> "No-zero-prefixed-upvalue-left-hand-sides"
]
