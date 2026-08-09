(* ::Package:: *)

(* Created with the Wolfram Language : www.wolfram.com *)
SetAttributes[deltaF, Orderless];

deltaF /: deltaF[i_, j_] deltaF[i_, k_] :=
    deltaF[j, k];

deltaF /: (deltaF[i_, j_]) ^ 2 :=
    DF;

deltaF /: deltaF[i_, i_] :=
    DF;

deltaF /: deltaF[i_, j_] TT[a_, j_, k_] :=
    TT[a, i, k];

deltaF /: deltaF[i_, j_] TT[a_, k_, j_] :=
    TT[a, k, i];
