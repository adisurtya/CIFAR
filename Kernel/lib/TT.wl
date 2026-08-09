(* ::Package:: *)

(* Created with the Wolfram Language : www.wolfram.com *)
(*Define product chain with zero generators as the identity*)
TT/:TT[{},i_,j_] :=deltaF[i,j];

(*Adjacent contractions (fundamental casimir)*)
TT/:TT[{a1___,a_,a_,an___},i_,j_] :=CF TT[{a1,an},i,j]

(*Almost adjacent contractions*)
TT/:TT[{a1___,a_,b_,a_,an___},i_,j_] :=(CF-1/2 CA)TT[{a1,b,an},i,j]

(*Assert that trace of one generator is zero*)
TT /: TT[{a_}, i_, i_] :=
    0;
(*Assert that traces with two generators is Tr[T^a T^b]=TF \delta^{a b}*)
TT /: TT[{a_, b_}, i_, i_] :=
    TF deltaA[a, b];
