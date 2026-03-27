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


(*Double contractions between symmetric and antisymmetrics tensors must equal zero *)

ff /: ff[x_, y_, z_] dF[a___, x_, b___, y_, c___] :=
    0;
ff /: ff[x_, y_, z_] dF[a___, y_, b___, x_, c___] :=
    0;
            
ff /: ff[x_, y_, z_] dF[a___, x_, b___, z_, c___] :=
    0;
ff /: ff[x_, y_, z_] dF[a___, z_, b___, x_, c___] :=
    0;

ff /: ff[x_, y_, z_] dF[a___, y_, b___, z_, c___] :=
    0;
ff /: ff[x_, y_, z_] dF[a___, z_, b___, y_, c___] :=
    0;

ff /: ff[x_, y_, z_] dA[a___, x_, b___, y_, c___] :=
    0;
ff /: ff[x_, y_, z_] dA[a___, y_, b___, x_, c___] :=
    0;
            
ff /: ff[x_, y_, z_] dA[a___, x_, b___, z_, c___] :=
    0;
ff /: ff[x_, y_, z_] dA[a___, z_, b___, x_, c___] :=
    0;

ff /: ff[x_, y_, z_] dA[a___, y_, b___, z_, c___] :=
    0;
ff /: ff[x_, y_, z_] dA[a___, z_, b___, y_, c___] :=
    0;
(*    ff /: ff[x_, y_, z_] dF[a___, x_, y_] :=
    0;

ff /: ff[x_, y_, z_] dF[a___, x_, z_] :=
    0;

ff /: ff[x_, y_, z_] dF[a___, y_, z_] :=
    0;

ff /: ff[x_, y_, z_] dA[a___, x_, y_] :=
    0;

ff /: ff[x_, y_, z_] dA[a___, x_, z_] :=
    0;

ff /: ff[x_, y_, z_] dA[a___, y_, z_] :=
    0;*)


(*Triangle identities*)

(*for fundamental d's*)

(*First class*)
ff /: dF[a_, b_, i_] ff[a_, j_, z_] ff[b_, k_, z_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[a_, j_, z_] ff[b_, z_, k_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[a_, j_, z_] ff[k_, b_, z_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[a_, j_, z_] ff[k_, z_, b_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[a_, j_, z_] ff[z_, b_, k_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[a_, j_, z_] ff[z_, k_, b_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[a_, z_, j_] ff[b_, k_, z_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[a_, z_, j_] ff[b_, z_, k_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[a_, z_, j_] ff[k_, b_, z_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[a_, z_, j_] ff[k_, z_, b_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[a_, z_, j_] ff[z_, b_, k_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[a_, z_, j_] ff[z_, k_, b_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[b_, k_, z_] ff[j_, a_, z_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[b_, z_, k_] ff[j_, a_, z_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[j_, a_, z_] ff[k_, b_, z_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[j_, a_, z_] ff[k_, z_, b_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[j_, a_, z_] ff[z_, b_, k_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[j_, a_, z_] ff[z_, k_, b_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[b_, k_, z_] ff[j_, z_, a_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[b_, z_, k_] ff[j_, z_, a_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[j_, z_, a_] ff[k_, b_, z_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[j_, z_, a_] ff[k_, z_, b_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[j_, z_, a_] ff[z_, b_, k_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[j_, z_, a_] ff[z_, k_, b_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[b_, k_, z_] ff[z_, a_, j_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[b_, z_, k_] ff[z_, a_, j_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[k_, b_, z_] ff[z_, a_, j_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[k_, z_, b_] ff[z_, a_, j_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[z_, a_, j_] ff[z_, b_, k_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[z_, a_, j_] ff[z_, k_, b_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[b_, k_, z_] ff[z_, j_, a_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[b_, z_, k_] ff[z_, j_, a_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[k_, b_, z_] ff[z_, j_, a_] :=
    1/2 CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[k_, z_, b_] ff[z_, j_, a_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[z_, b_, k_] ff[z_, j_, a_] :=
    -(1/2) CA dF[i, j, k];

ff /: dF[a_, b_, i_] ff[z_, j_, a_] ff[z_, k_, b_] :=
    1/2 CA dF[i, j, k];


(*for adjoint d's*)

ff /: dA[a_, b_, i_] ff[a_, j_, z_] ff[b_, k_, z_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[a_, j_, z_] ff[b_, z_, k_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[a_, j_, z_] ff[k_, b_, z_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[a_, j_, z_] ff[k_, z_, b_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[a_, j_, z_] ff[z_, b_, k_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[a_, j_, z_] ff[z_, k_, b_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[a_, z_, j_] ff[b_, k_, z_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[a_, z_, j_] ff[b_, z_, k_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[a_, z_, j_] ff[k_, b_, z_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[a_, z_, j_] ff[k_, z_, b_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[a_, z_, j_] ff[z_, b_, k_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[a_, z_, j_] ff[z_, k_, b_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[b_, k_, z_] ff[j_, a_, z_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[b_, z_, k_] ff[j_, a_, z_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[j_, a_, z_] ff[k_, b_, z_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[j_, a_, z_] ff[k_, z_, b_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[j_, a_, z_] ff[z_, b_, k_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[j_, a_, z_] ff[z_, k_, b_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[b_, k_, z_] ff[j_, z_, a_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[b_, z_, k_] ff[j_, z_, a_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[j_, z_, a_] ff[k_, b_, z_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[j_, z_, a_] ff[k_, z_, b_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[j_, z_, a_] ff[z_, b_, k_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[j_, z_, a_] ff[z_, k_, b_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[b_, k_, z_] ff[z_, a_, j_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[b_, z_, k_] ff[z_, a_, j_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[k_, b_, z_] ff[z_, a_, j_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[k_, z_, b_] ff[z_, a_, j_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[z_, a_, j_] ff[z_, b_, k_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[z_, a_, j_] ff[z_, k_, b_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[b_, k_, z_] ff[z_, j_, a_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[b_, z_, k_] ff[z_, j_, a_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[k_, b_, z_] ff[z_, j_, a_] :=
    1/2 CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[k_, z_, b_] ff[z_, j_, a_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[z_, b_, k_] ff[z_, j_, a_] :=
    -(1/2) CA dA[i, j, k];

ff /: dA[a_, b_, i_] ff[z_, j_, a_] ff[z_, k_, b_] :=
    1/2 CA dA[i, j, k];


(*Triangle identities*)
(*Second class*)

(*for fundamental d's*)
ff /: dF[i1_,j__,k1_]dF[i2_,j__,k2_]ff[k1_,k2_,i3_]:=1/DA ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "FF"]]/(Length[List[j]]+1) ff[i1,i2,i3];
ff /: dF[i1_,j__,k1_]dF[i2_,j__,k2_]ff[k1_,i3_,k2_]:=-(1/DA) ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "FF"]]/(Length[List[j]]+1) ff[i1,i2,i3];
ff /: dF[i1_,j__,k1_]dF[i2_,j__,k2_]ff[i3_,k1_,k2_]:=1/DA ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "FF"]]/(Length[List[j]]+1) ff[i1,i2,i3];


(*Triangle identities*)
(*Second class*)

(*for adjoint d's*)
ff /: dA[i1_,j__,k1_]dA[i2_,j__,k2_]ff[k1_,k2_,i3_]:=1/DA ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "AA"]]/(Length[List[j]]+1) ff[i1,i2,i3];
ff /: dA[i1_,j__,k1_]dA[i2_,j__,k2_]ff[k1_,i3_,k2_]:=-(1/DA) ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "AA"]]/(Length[List[j]]+1) ff[i1,i2,i3];
ff /: dA[i1_,j__,k1_]dA[i2_,j__,k2_]ff[i3_,k1_,k2_]:=1/DA ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "AA"]]/(Length[List[j]]+1) ff[i1,i2,i3];


(*Triangle identities*)
(*Second class*)

(*for adjoint x fundamental d's*)
ff /: dA[i1_,j__,k1_]dF[i2_,j__,k2_]ff[k1_,k2_,i3_]:=1/DA ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "AF"]]/(Length[List[j]]+1) ff[i1,i2,i3];
ff /: dA[i1_,j__,k1_]dF[i2_,j__,k2_]ff[k1_,i3_,k2_]:=-(1/DA) ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "AF"]]/(Length[List[j]]+1) ff[i1,i2,i3];
ff /: dA[i1_,j__,k1_]dF[i2_,j__,k2_]ff[i3_,k1_,k2_]:=1/DA ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "AF"]]/(Length[List[j]]+1) ff[i1,i2,i3];

ff /: dF[i1_,j__,k1_]dA[i2_,j__,k2_]ff[k1_,k2_,i3_]:=1/DA ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "AF"]]/(Length[List[j]]+1) ff[i1,i2,i3];
ff /: dF[i1_,j__,k1_]dA[i2_,j__,k2_]ff[k1_,i3_,k2_]:=-(1/DA) ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "AF"]]/(Length[List[j]]+1) ff[i1,i2,i3];
ff /: dF[i1_,j__,k1_]dA[i2_,j__,k2_]ff[i3_,k1_,k2_]:=1/DA ToExpression[StringJoin["C", ToString[Length[List[j]]+2], "AF"]]/(Length[List[j]]+1) ff[i1,i2,i3];


(*Triangle identities*)
(*Third class*)

(*For fundamental d's*)
ff /: dF[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[k1_,k2_,i2_]:=-(1/(Length[List[j]]+1))dF[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dF[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[i2_,k1_,k2_]:=-(1/(Length[List[j]]+1))dF[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dF[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[k2_,i2_,k1_]:=-(1/(Length[List[j]]+1))dF[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dF[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[k2_,k1_,i2_]:=1/(Length[List[j]]+1) dF[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dF[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[i2_,k2_,k1_]:=1/(Length[List[j]]+1) dF[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dF[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[k1_,i2_,k2_]:=1/(Length[List[j]]+1) dF[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];


(*Triangle identities*)
(*Third class*)

(*For adjoint d's*)
ff /: dA[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[k1_,k2_,i2_]:=-(1/(Length[List[j]]+1))dA[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dA[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[i2_,k1_,k2_]:=-(1/(Length[List[j]]+1))dA[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dA[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[k2_,i2_,k1_]:=-(1/(Length[List[j]]+1))dA[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dA[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[k2_,k1_,i2_]:=1/(Length[List[j]]+1) dA[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dA[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[i2_,k2_,k1_]:=1/(Length[List[j]]+1) dA[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dA[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[k1_,i2_,k2_]:=1/(Length[List[j]]+1) dA[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];


(*Triangle identities*)
(*Third class*)

(*For fundamental x adjoint d's*)
ff /: dF[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[k1_,k2_,i2_]:=-(1/(Length[List[j]]+1))dF[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dF[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[i2_,k1_,k2_]:=-(1/(Length[List[j]]+1))dF[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dF[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[k2_,i2_,k1_]:=-(1/(Length[List[j]]+1))dF[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dF[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[k2_,k1_,i2_]:=1/(Length[List[j]]+1) dF[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dF[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[i2_,k2_,k1_]:=1/(Length[List[j]]+1) dF[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dF[i1_,j__,k1_]dA[i3_,i4__,j__,k2_]ff[k1_,i2_,k2_]:=1/(Length[List[j]]+1) dF[j,GetAdjIndex[],GetAdjIndex[]]dA[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];

(*For adjoint x fundamental  d's*)
ff /: dA[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[k1_,k2_,i2_]:=-(1/(Length[List[j]]+1))dA[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dA[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[i2_,k1_,k2_]:=-(1/(Length[List[j]]+1))dA[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dA[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[k2_,i2_,k1_]:=-(1/(Length[List[j]]+1))dA[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dA[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[k2_,k1_,i2_]:=1/(Length[List[j]]+1) dA[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dA[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[i2_,k2_,k1_]:=1/(Length[List[j]]+1) dA[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
ff /: dA[i1_,j__,k1_]dF[i3_,i4__,j__,k2_]ff[k1_,i2_,k2_]:=1/(Length[List[j]]+1) dA[j,GetAdjIndex[],GetAdjIndex[]]dF[i3,i4,j,GetAdjIndex[-2]]ff[GetAdjIndex[-1],i1,i2];
