(* ::Package:: *)

(*Assert that loop with one index is zero (by antisymmetry of f)*)
FF/:FF[{a_}] :=0
(*Assert that loop with zero indicies is just the trace of the adjoint identity*)
FF/:FF[{}] :=DA
(*Assert that loop with two adjacent contracted indicies reduces with adjoint quadratic Casimir*)
FF/:FF[{a1___,x_,x_,an___}] :=-CA FF[{a1,an}]
