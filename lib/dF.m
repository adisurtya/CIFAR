(* ::Package:: *)

(* Created with the Wolfram Language : www.wolfram.com *)

SetAttributes[dF, Orderless];

(*Two fully contracted fundamental symmetric tensors*)

dF /: (dF[a__ /; CountDistinct[List[a]] == Length[List[a]]]) ^ 2 :=
    ToExpression[StringJoin["C", ToString[Length[List[a]]], "FF"]];

dF /: dF[a__ /; CountDistinct[List[a]] == Length[List[a]]] dA[a__] :=
    ToExpression[StringJoin["C", ToString[Length[List[a]]], "AF"]];

dF /: dF[a1_, a2_] :=
    TF deltaA[a1, a2];

dF /: dF[a_, a_, b_] :=
    0
    
dF /: dF[a_, a_, b_, b_] :=
    -(1/6) CA DA TF+CF DA TF;

dF /: dF[a_, a_, b_, c_] :=
    -(1/6) CA TF deltaA[b,c]+CF TF deltaA[b,c];

dF /: dF[a_, a_, b_, c_] :=
    -(1/6) CA TF deltaA[b,c]+CF TF deltaA[b,c];

dF /: dF[a_, a_, b_, c_, d_] :=
    -(1/4) CA dF[b,c,d]+CF dF[b,c,d];

dF /: dF[a_, a_, b_, b_, c_] :=
    0;

dF /: dF[a_, a_, b_, b_, c_,d_] :=
    1/12 CA^2 TF deltaA[c,d]-1/2 CA CF TF deltaA[c,d]+CF^2 TF deltaA[c,d];
    
dF /: dF[a_, a_, b_, b_, c_,c_] :=
    1/12 CA^2 DA TF-1/2 CA CF DA TF+CF^2 DA TF;    
               
dF /: dF[a_, a_, b___] :=
    CIFARReduce[StrF[{a, a, b}], "CheckContractions" -> False];
