(* ::Package:: *)

(* Created with the Wolfram Language : www.wolfram.com *)
SetAttributes[dA, Orderless];

(*Two fully contracted fundamental symmetric tensors*)
dA /: (dA[a__ /; CountDistinct[List[a]] == Length[List[a]]]) ^ 2 :=
    ToExpression[StringJoin["C", ToString[Length[List[a]]], "AA"]];
    
dA /: dA[a__ /; CountDistinct[List[a]] == Length[List[a]]] dF[
    a__] :=
    ToExpression[StringJoin["C", ToString[Length[List[a]]], "AF"]];

(*adjoint symmetric tensor with odd number of indices is zero*)
dA /: dA[a__ /;OddQ[ Length[List[a]]]]:=0

dA /: dA[a1_, a2_]:= CA deltaA[a1,a2]; 

dA /: dA[a_, a_]:= CA DA; 

dA /: dA[a_, a_,b_,c_]:= 5/6 CA^2 deltaA[b,c];

dA /: dA[a_, a_,b_, b_]:= (5 CA^2 DA)/6;

dA /: dA[a_, a_, b1_, b2_, b3_, b4_]:= 
31/30 CA dA[b1,b2,b3,b4]-
1/6 dA[b3,b4,c1,c2] ff[c1,c3,b1] ff[c2,c3,b2]-
1/6 dA[b2,b4,c1,c2] ff[c1,c3,b1] ff[c2,c3,b3]-
1/6 dA[b1,b4,c1,c2] ff[c1,c3,b2] ff[c2,c3,b3]-
1/6 dA[b2,b3,c1,c2] ff[c1,c3,b1] ff[c2,c3,b4]-
1/6 dA[b1,b3,c1,c2] ff[c1,c3,b2] ff[c2,c3,b4]-
1/6 dA[b1,b2,c1,c2] ff[c1,c3,b3] ff[c2,c3,b4];

dA /: dA[a_, a_, b_, b_, c_,d_]:= 7/12 CA^3 deltaA[c,d];

dA /: dA[a_, a_,b_, b_,c_,c_]:= (7 CA^3 DA)/12;

dA /: dA[a_, a_, b___] :=
    AdjointReduce[StrA[{a, a, b}]];
