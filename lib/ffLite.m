(* ::Package:: *)

(* Created with the Wolfram Language : www.wolfram.com *)
(*antisymmetry of f's forces intracontractions to zero*)
ff[a_, a_, b_] :=
    0;

ff[a_, b_, a_] :=
    0;

ff[b_, a_, a_] :=
    0;
(*quadratic casimirs*)

ff /: ff[a_, c_, d_] ff[b_, c_, d_] :=
    CA deltaA[a, b];

ff /: ff[a_, c_, d_] ff[b_, d_, c_] :=
    -CA deltaA[a, b];

ff /: ff[a_, c_, d_] ff[c_, b_, d_] :=
    -CA deltaA[a, b];

ff /: ff[a_, c_, d_] ff[c_, d_, b_] :=
    CA deltaA[a, b];

ff /: ff[a_, c_, d_] ff[d_, b_, c_] :=
    CA deltaA[a, b];

ff /: ff[a_, c_, d_] ff[d_, c_, b_] :=
    -CA deltaA[a, b];

ff /: ff[a_, d_, c_] ff[b_, c_, d_] :=
    -CA deltaA[a, b];

ff /: ff[a_, d_, c_] ff[b_, d_, c_] :=
    CA deltaA[a, b];

ff /: ff[a_, d_, c_] ff[c_, b_, d_] :=
    CA deltaA[a, b];

ff /: ff[a_, d_, c_] ff[c_, d_, b_] :=
    -CA deltaA[a, b];

ff /: ff[a_, d_, c_] ff[d_, b_, c_] :=
    -CA deltaA[a, b];

ff /: ff[a_, d_, c_] ff[d_, c_, b_] :=
    CA deltaA[a, b];

ff /: ff[b_, c_, d_] ff[c_, a_, d_] :=
    -CA deltaA[a, b];

ff /: ff[b_, d_, c_] ff[c_, a_, d_] :=
    CA deltaA[a, b];

ff /: ff[c_, a_, d_] ff[c_, b_, d_] :=
    CA deltaA[a, b];

ff /: ff[c_, a_, d_] ff[c_, d_, b_] :=
    -CA deltaA[a, b];

ff /: ff[c_, a_, d_] ff[d_, b_, c_] :=
    -CA deltaA[a, b];

ff /: ff[c_, a_, d_] ff[d_, c_, b_] :=
    CA deltaA[a, b];

ff /: ff[b_, c_, d_] ff[c_, d_, a_] :=
    CA deltaA[a, b];

ff /: ff[b_, d_, c_] ff[c_, d_, a_] :=
    -CA deltaA[a, b];

ff /: ff[c_, b_, d_] ff[c_, d_, a_] :=
    -CA deltaA[a, b];

ff /: ff[c_, d_, a_] ff[c_, d_, b_] :=
    CA deltaA[a, b];

ff /: ff[c_, d_, a_] ff[d_, b_, c_] :=
    CA deltaA[a, b];

ff /: ff[c_, d_, a_] ff[d_, c_, b_] :=
    -CA deltaA[a, b];

ff /: ff[b_, c_, d_] ff[d_, a_, c_] :=
    CA deltaA[a, b];

ff /: ff[b_, d_, c_] ff[d_, a_, c_] :=
    -CA deltaA[a, b];

ff /: ff[c_, b_, d_] ff[d_, a_, c_] :=
    -CA deltaA[a, b];

ff /: ff[c_, d_, b_] ff[d_, a_, c_] :=
    CA deltaA[a, b];

ff /: ff[d_, a_, c_] ff[d_, b_, c_] :=
    CA deltaA[a, b];

ff /: ff[d_, a_, c_] ff[d_, c_, b_] :=
    -CA deltaA[a, b];

ff /: ff[b_, c_, d_] ff[d_, c_, a_] :=
    -CA deltaA[a, b];

ff /: ff[b_, d_, c_] ff[d_, c_, a_] :=
    CA deltaA[a, b];

ff /: ff[c_, b_, d_] ff[d_, c_, a_] :=
    CA deltaA[a, b];

ff /: ff[c_, d_, b_] ff[d_, c_, a_] :=
    -CA deltaA[a, b];

ff /: ff[d_, b_, c_] ff[d_, c_, a_] :=
    -CA deltaA[a, b];

ff /: ff[d_, c_, a_] ff[d_, c_, b_] :=
    CA deltaA[a, b];

ff /: ff[a_, b_, c_] ^ 2 :=
    CA DA;


deltaA /: deltaA[a_, b_] deltaA[a_, c_] :=
    deltaA[b, c];

deltaA /: (deltaA[a_, b_]) ^ 2 :=
    DA;

deltaA /: deltaA[a_, a_] :=
    DA;


deltaA /: deltaA[a_, b_] ff[a_, d_, e_] :=
    ff[b, d, e];

deltaA /: deltaA[a_, b_] ff[d_, a_, e_] :=
    ff[d, b, e];

deltaA /: deltaA[a_, b_] ff[d_, e_, a_] :=
    ff[d, e, b];
