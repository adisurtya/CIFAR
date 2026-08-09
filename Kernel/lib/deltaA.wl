(* ::Package:: *)

(* Created with the Wolfram Language : www.wolfram.com *)
SetAttributes[deltaA, Orderless];

deltaA /: deltaA[a_, b_] deltaA[a_, c_] :=
    deltaA[b, c];

deltaA /: (deltaA[a_, b_]) ^ 2 :=
    DA;

deltaA /: deltaA[a_, a_] :=
    DA;

deltaA /: deltaA[a_, b_] TT[{x___, a_, y___}, i_, j_] :=
    TT[{x, b, y}, i, j];

deltaA /: deltaA[a_, b_] ff[a_, d_, e_] :=
    ff[b, d, e];

deltaA /: deltaA[a_, b_] ff[d_, a_, e_] :=
    ff[d, b, e];

deltaA /: deltaA[a_, b_] ff[d_, e_, a_] :=
    ff[d, e, b];

deltaA /: deltaA[a_, b_] dF[x___, a_, y___] :=
    dF[x, b, y];

deltaA /: deltaA[a_, b_] dA[x___, a_, y___] :=
    dA[x, b, y];

deltaA /: deltaA[a_, b_] FF[{x___, a_, y___}] :=
    FF[{x, b, y}];
