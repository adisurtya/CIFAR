(* ::Package:: *)

(* ::Title:: *)
(*CIFAR (Color Invariant Feynman Amplitude Reducer)*)


BeginPackage["CIFAR`"];


(* ::Subsection:: *)
(*Print out*)


$CIFARVersion = "1.2.1";
$CIFARPath = DirectoryName[$InputFileName];


Print["(****** CIFAR ", $CIFARVersion, " ******)"];
Print["    Author: Adi Suresh"];
Print["    Email: adisur@stanford.edu"];
Print["    Installed at: " <> $CIFARPath];


Get[FileNameJoin[{$CIFARPath, "Usage.m"}]];


(*Public options*)
Options[CIFARReduce] = {CheckContractions -> True, UseCache -> True, Tabulate -> True};
Options[AdjointReduce] = {Tabulate -> True};
Options[SUncReduce] = {CheckContractions -> True, UseCache -> True};

Options[TraceTT] = {Tabulate -> True};
Options[TraceFF] = {Tabulate -> True};

Options[StandardizeIndices] = {CheckContractions -> True, UseGraphStandardization -> True};


Get[$CIFARPath <> "lib/Casimir.m"];


Begin["CIFAR`Indices`"];
(*Standard indices for the function StandardizeIndices*)
$StandardIndices={a$,b$,c$,d$,e$,f$,g$,h$,o$,p$,q$,r$,s$,t$,u$,v$,w$,x$,y$,z$,a1$,b1$,c1$,d1$,e1$,f1$,g1$,h1$,o1$,p1$,q1$,r1$,s1$,t1$,u1$,v1$,w1$,x1$,y1$,z1$};
$StandardFundamentalIndices={i$,j$,k$,l$,m$,n$,i1$,j1$,k1$,l1$,m1$,n1$,i2$,j2$,k2$,l2$,m2$,n2$};
End[];


Begin["`Private`"];


(* ::Subtitle:: *)
(*Utilities *)


(*Define N=3 cyclic permutations*)

cyclic = Permute[{1, 2, 3}, CyclicGroup[3]];

(*Checks if permutation is cyclic according to StringLength Ordering*)

CyclicQ[inds_] :=
    MemberQ[cyclic, OrderingBy[ToString /@ inds, StringLength]];


(*Returns -1 for False and +1 for True*)

BooleSign[boole_] :=
    2 (Boole[boole] - 1/2);


(*Returns sets of positions of distinct elements E.g. positionDistinct[{a,b,c,a}]={{1,4},{2},{3}}*)

PositionDistinct[list_] :=
    GatherBy[Range @ Length[list], list[[#]]&]; PositionDistinctnD[list_
        ] :=
    GatherBy[Flatten[Array[List, Dimensions[list]], 1], Extract[list,
         #]&];

(*Returns posistions of elements that only appear once in a list*)

PositionUnique[list_] :=
    DeleteCases[GatherBy[Flatten[Array[List, Dimensions[list]], 1], Extract[
        list, #]&], x_ /; Length[x] > 1];

(*Returns position of any duplicates a list contains (i.e. which indicies are contracted)E.g. positionDistinct[{a,b,c,a}]={{1,4}}*)

DuplicateElements[list_] :=
    Cases[Tally[Flatten[list]], {x_, 2} :> x];

PositionDuplicates[list_] :=
    DeleteCases[GatherBy[Flatten[Array[List, Dimensions[list]], 1], Extract[
        list, #]&], x_ /; Length[x] == 1];

(*Switches two elements in a list*)

Swap[list_, ind1_, ind2_] :=
    Module[{result = list},
        result = ReplacePart[result, Thread[{ind1} -> Extract[list, ind2
            ]]];
        result = ReplacePart[result, Thread[{ind2} -> Extract[list, ind1
            ]]];
        Return[result]
    ];


(*Functions for checking valid contractions in the color algebra*)


(*Define Message Names*)
FullyContractedQ::nocolorobjects="Evaluation stopped. No color objects detected; expression pre-evaluates to: `1`";
FullyContractedQ::highcount="Evaluation stopped. Indices that appear 3 or more times: `1`";
FullyContractedQ::singlecount="Warning: Indices that only appear once: `1`";

FullyContractedQ[expr_Plus]:=And@@(FullyContractedQ/@(List@@expr));

FullyContractedQ[expr_]:=Module[{dummy, colorObjects, colorObjectsExps,inds,tallyList,highCountItems,singleCountItems},
colorObjects=Cases[expr,Alternatives@@{_ff,_TT,_FF,_deltaA,_deltaF,_dF,_dA},All];

If[colorObjects==={}, Message[FullyContractedQ::nocolorobjects,expr]; Return[True];];

colorObjectsExps=Cases[dummy expr,#^n_.:>n]&/@colorObjects//Flatten;

inds=(Delete[0]/@Flatten[MapThread[ConstantArray,{colorObjects,colorObjectsExps}]])//Flatten;
tallyList=Tally[inds];

highCountItems=Cases[tallyList,{item_,count_/;count>=3}:>item];
(*2. Check if any high-count items were found*)
If[Length[highCountItems]>0,
(*If yes:Issue error,stop,return $Failed*)
Message[FullyContractedQ::highcount,highCountItems];
Return[False];,
(*If no:Proceed to check for single counts and expand*)
(*Find items with count==1*)singleCountItems=Cases[tallyList,{item_,1}:>item];
(*Issue warning if single-count items were found*)
If[Length[singleCountItems]>0, Message[FullyContractedQ::singlecount,singleCountItems]; Return[False];]];
Return[True];];


Clear[StandardIndexPermutation]


StandardIndexPermutation[expr_ff]:=CIFAR`Private`BooleSign[CIFAR`Private`CyclicQ[expr]] Sort[expr];
StandardIndexPermutation[TT[a__Integer]]:=RotateLeft[TT[a],First[Ordering[TT[a]]]-1];
StandardIndexPermutation[TT[a_,i_,i_]]:=TT@@{RotateLeft[a,First[Ordering[a]]-1],i,i};
(*StandardIndexPermutation[FF[a__Integer]]:=RotateLeft[FF[a],First[Ordering[FF[a]]]-1];*)
StandardIndexPermutation[FF[a_]]:=FF@RotateLeft[a,First[Ordering[a]]-1];


(*Generate new dummy adjoint index (e.g. when commuting generators TT)*)

$AdjIndexIter = 10;

GetAdjIndex[n_:0] :=
    Module[{result},
        result = ToExpression[StringJoin["a", ToString[$AdjIndexIter 
            + n]]];
        If[n == 0,
            $AdjIndexIter += 1
        ];
        result
    ];

(*Generate new dummy fundemental index (e.g. when tracing generators TT)*)

$FundIndexIter = 10;

GetFundIndex[n_:0] :=
    Module[{result},
        result = ToExpression[StringJoin["i", ToString[$FundIndexIter
             + n]]];
        If[n == 0,
            $FundIndexIter += 1
        ];
        result
    ];
    
(*Standardize indices*)

StandardizeIndicesSimple[expr_Plus]:=StandardizeIndicesSimple/@Expand[expr];

StandardizeIndicesSimple[expr_, standardInds_:CIFAR`Indices`$StandardIndices]:=Module[{result, inds},
inds=DeleteDuplicates[Flatten[Delete[0]/@Cases[expr,_ff|_TT|_FF|_deltaA|_deltaF|_dA|_dF,All]]]//Sort;
result=expr/.Thread[inds->standardInds[[;;Length[inds]]]];
Return[result]
]


(*Utilities for Standardize Indices*)
ExprListToEdges[expr_List]:=Module[{resultff,resultTT,ffList=Cases[expr,_ff],TTList=Cases[expr,_TT]},

resultff=Flatten[MapIndexed[Thread[#1\[DirectedEdge]First[#2]]&,List@@@ffList]];
resultTT=Flatten[MapIndexed[Thread[(First[#2]+Length[ffList])\[DirectedEdge]#1]&,List@@@TTList]]//DeleteDuplicates;

Return[Join[resultff,resultTT]]];

ExprAdjointListToEdges[expr_List]:=Module[{resultff,resultFF,resultdA,resultdF, ffList=Cases[expr,_ff],FFList=Cases[expr,_FF],dAList=Cases[expr,_dA],dFList=Cases[expr,_dF]},

resultff=Flatten[MapIndexed[Thread[#1\[DirectedEdge]First[#2]]&,List@@@ffList]];
resultFF=Flatten[MapIndexed[Thread[(First[#2]+Length[ffList])\[DirectedEdge]#1]&,List@@@FFList]]//DeleteDuplicates;
resultdA=Flatten[MapIndexed[Thread[(First[#2]+Length[ffList]+Length[FFList])\[DirectedEdge]#1]&,List@@@dAList]]//DeleteDuplicates;
resultdA=resultdA~Join~(Reverse/@resultdA);
resultdF=Flatten[MapIndexed[Thread[(First[#2]+Length[ffList]+Length[FFList]+Length[resultdA])\[DirectedEdge]#1]&,List@@@dFList]]//DeleteDuplicates;
resultdF=resultdF~Join~(Reverse/@resultdF);

Return[Join[resultff,resultFF,resultdA,resultdF]]];

EdgesToCanonicalGraphStandardization[edges_]:=Module[{g=Graph[edges],canGraph,canMap,intRep},
canGraph=CanonicalGraph[g];
canMap=KeySelect[First[FindGraphIsomorphism[g,canGraph]],!IntegerQ[#]&];
(*intRep = AssociationThread[Sort[Values[canMap]], Range[Length[canMap]]];*)
intRep = AssociationThread[Sort[Values[canMap]], CIFAR`Indices`$StandardIndices[[Range[Length[canMap]]]]];
Return[canMap/.intRep]];


StandardizeIndices[expr_, OptionsPattern[]] /; FreeQ[expr, ff | TT] :=
    StandardizeIndicesSimple[expr];

StandardizeIndices[expr_, OptionsPattern[]] /; !FreeQ[expr, deltaA | 
    deltaF | dA | dF | FF] :=
    StandardizeIndicesSimple[expr];

StandardizeIndices[expr_Plus, OptionsPattern[]] :=
    StandardizeIndices /@ expr;

StandardizeIndices[expr_, OptionsPattern[]] :=
    Module[{fullyContractedQ, dummy, exprList, result, toStandardIndsRep,
         fundIndsCount = 0},
        If[OptionValue[CheckContractions],
            Check[fullyContractedQ = FullyContractedQ[Expand[expr]], 
                Return[expr], {CIFAR`Private`FullyContractedQ::highcount, CIFAR`Private`FullyContractedQ
                ::singlecount, CIFAR`Private`FullyContractedQ::nocolorobjects}];
        ];
        If[!OptionValue[UseGraphStandardization],
            Return[StandardizeIndicesSimple[expr]]
        ];
        result = (expr //. {TT[{a__}, i_, j_] TT[{b__}, j_, k_] -> TT[
            {a, b}, i, k]} /. TT[{a_, b__}, i_, i_] -> TT[a, b]);
        exprList = Cases[List @@ (dummy result) /. x_^a_ :> (Sequence
             @@ ConstantArray[x, a]), _ff | _TT];
        toStandardIndsRep = EdgesToCanonicalGraphStandardization @ ExprListToEdges
             @ exprList;
(*        result =
            result /. toStandardIndsRep /. ff[a__] :> StandardIndexPermutation[
                ff[a]] /. ff[a__] :> ff @@ CIFAR`Indices`$StandardIndices[[{a}]] /. TT[
                a__] :> StandardIndexPermutation[TT[a]] /.
                    TT[a__] :>
                        (
                            fundIndsCount++;
                            With[{nextInd = CIFAR`Indices`$StandardFundamentalIndices
                                [[fundIndsCount]]},
                                TT @@ {CIFAR`Indices`$StandardIndices
                                    [[{a}]], nextInd, nextInd}
                            ]
                        ) /.
                TT[a_, i_, i_] ^ 2 :>
                    (
                        fundIndsCount++;
                        With[{nextInd = CIFAR`Indices`$StandardFundamentalIndices
                            [[fundIndsCount]]},
                            TT[a, i, i] TT[a, nextInd, nextInd]
                        ]
                    );*)
                    
                            result =
            result /. toStandardIndsRep /. ff[a__] :> StandardIndexPermutation[
                ff[a]]  /.
                    TT[a__] :>
                        StandardIndexPermutation[(
                            fundIndsCount++;
                            With[{nextInd = CIFAR`Indices`$StandardFundamentalIndices
                                [[fundIndsCount]]},
                                TT @@ {{a}, nextInd, nextInd}
                            ]
                        )] /.
                TT[a_, i_, i_] ^ 2 :>
                    (
                        fundIndsCount++;
                        With[{nextInd = CIFAR`Indices`$StandardFundamentalIndices
                            [[fundIndsCount]]},
                            TT[a, i, i] TT[a, nextInd, nextInd]
                        ]
                    );
        Return[result]
    ];

StandardizeIndicesAdjoint[expr_, OptionsPattern[]] /; FreeQ[expr, ff | FF| dA| dF] :=
    StandardizeIndicesSimple[expr];

StandardizeIndicesAdjoint[expr_, OptionsPattern[]] /; !FreeQ[expr, deltaA| TT] :=
    StandardizeIndicesSimple[expr];

StandardizeIndicesAdjoint[expr_Plus, OptionsPattern[]] :=
    StandardizeIndices /@ expr;
    
StandardizeIndicesAdjoint[expr_] :=
    Module[{result, exprList, toStandardIndsRep},
        result = expr /. FF[a_] :> FF @@ a;
        exprList = Cases[List @@ (dummy result) /. x_^a_ :> (Sequence
             @@ ConstantArray[x, a]), _ff | _FF | _dA | _dF];
        toStandardIndsRep = EdgesToCanonicalGraphStandardization @ ExprAdjointListToEdges
             @ exprList;
   
        result = result /. toStandardIndsRep /. {ff[a__] :> StandardIndexPermutation[
            ff[a]], FF[a__] :> StandardIndexPermutation[FF[{a}]]};
        Return[result]
    ];


(*Functions for extracting the adjoint and fundemental indicies of an expression*)

GetTTIndsandCoef[coef_, TTAdjInd_ : {}, TTFundInd_ : {}] :=
    Module[{coefNew, TTAdjIndNew, TTFundIndNew},
        coefNew = (((one coef) /. {TTcoef_ TT[a_, i_, j_] -> {a, {i, 
            j}, TTcoef}}) /. {one -> 1});
        If[Not[ListQ[coefNew]],
            Return[{TTAdjInd, TTFundInd, coef}]
            ,
            TTAdjIndNew = Append[TTAdjInd, coefNew[[1]]];
            TTFundIndNew = Append[TTFundInd, coefNew[[2]]];
            coefNew = coefNew[[3]];
            Return[GetTTIndsandCoef[coefNew, TTAdjIndNew, TTFundIndNew
                ]]
        ]
    ];

GetffIndandCoef[coef_, ffInd_ : {}] :=
    Module[{coefNew, ffIndNew},
        coefNew = (((one coef) /. {ffcoef_ ff[a_, b_, c_] -> {{a, b, 
            c}, ffcoef}}) /. {one -> 1});
        If[Not[ListQ[coefNew]],
            Return[{ffInd, coef}]
            ,
            ffIndNew = Append[ffInd, coefNew[[1]]];
            coefNew = coefNew[[2]];
            Return[GetffIndandCoef[coefNew, ffIndNew]]
        ]
    ];

GetExprIndsandCoef[coef_, ffInd_ : {}, TTAdjInd_ : {}, TTFundInd_ : {
    }] :=
    Module[{coefNew, ffIndandCoef, TTIndandCoef},
        ffIndandCoef = GetffIndandCoef[coef];
        TTIndandCoef = GetTTIndsandCoef[ffIndandCoef[[2]]];
        Return[Join[{ffIndandCoef[[1]]}, TTIndandCoef]]
    ];


(*Functions for generating expressions from indicies and coefficients *)

(*get structure constants*)

GetffFromInds[inds_] :=
    Module[{result = 1},
        Do[result *= ff @@ inds[[$iter]], {$iter, Length[inds]}];
        Return[result]
    ];

(*get fundamental generators*)

GetTTFromInds[AdjInds_, FundInds_] :=
    Module[{result = 1},
        Do[
            If[Length[AdjInds[[$iter]]] > 0,
                result *= TT @@ Join[{AdjInds[[$iter]]}, FundInds[[$iter
                    ]]]
                ,
                result *= deltaF @@ FundInds[[$iter]]
            ]
            ,
            {$iter, Length[AdjInds]}
        ];
        Return[result]
    ];

(*get complete expressions*)

GetExprFromIndsAndCoef[ffInd_ : {}, TTAdjInd_ : {}, TTFundInd_ : {}, 
    coef_:1] :=
    Module[{result = coef},
        result *= GetffFromInds[ffInd] GetTTFromInds[TTAdjInd, TTFundInd
            ];
        Return[result]
    ];

GetExprFromIndsAndCoef[indsAndCoef_] :=
    GetExprFromIndsAndCoef @@ indsAndCoef;

(*get structure constant loops*)

GetFFFromInds[AdjInds_] :=
    Module[{result = 1},
        Do[result *= FF @ AdjInds[[$iter]], {$iter, Length[AdjInds]}]
            ;
        Return[result]
    ];


(*Functions for commuting fundmental generators within products*)

(*Gives the commutator terms from commuting*)

CommuteBackTTComTerms[TT[a_, i_, j_], currentInd_, newInd_] :=
    Which[
        currentInd < newInd,
            Print["Cannot commute forward"];
            Return[0]
        ,
        currentInd > Length[a],
            Print["Index larger than number of indicies"];
            Return[0]
        ,
        True,
            Module[{comTerms = 0},
                Do[comTerms += I ff[a[[currentInd - iter]], a[[currentInd
                    ]], GetAdjIndex[]] GetTTFromInds[{Insert[Delete[a, {{currentInd - iter
                    }, {currentInd}}], GetAdjIndex[-1], currentInd - iter]}, {{i, j}}], {
                    iter, currentInd - newInd}];
                Return[comTerms]
            ]
    ];

(*Gives the commuted result and the commutator terms from commuting*)

CommuteBackTT[TT[a_, i_, j_], currentInd_, newInd_] :=
    Which[
        currentInd < newInd,
            Print["Cannot commute forward"];
            Return[TT[a, i, j]]
        ,
        currentInd > Length[a],
            Print["Index larger than number of indicies"];
            Return[TT[a, i, j]]
        ,
        True,
            Module[{newFundInds = Insert[Delete[a, currentInd], a[[currentInd
                ]], newInd]},
                Return[GetTTFromInds[{newFundInds}, {{i, j}}] + CommuteBackTTComTerms[
                    TT[a, i, j], currentInd, newInd]]
            ]
    ];

(*Functions for commuting adjoint indicies within structure constant traces*)

CommuteBackFFComTerms[FF[a_], currentInd_, newInd_] :=
    Which[
        currentInd < newInd,
            Print["Cannot commute forward"];
            Return[0]
        ,
        currentInd > Length[a],
            Print["Index larger than number of indicies"];
            Return[0]
        ,
        True,
            Module[{comTerms = 0},
                Do[comTerms -= (ff[a[[currentInd - iter]], a[[currentInd
                    ]], GetAdjIndex[]]) GetFFFromInds[{Insert[Delete[a, {{currentInd - iter
                    }, {currentInd}}], GetAdjIndex[-1], currentInd - iter]}], {iter, currentInd
                     - newInd}];
                Return[comTerms]
            ]
    ];

CommuteBackFF[FF[a_], currentInd_, newInd_] :=
    Which[
        currentInd < newInd,
            Print["Cannot commute forward"];
            Return[FF[a]]
        ,
        currentInd > Length[a],
            Print["Index larger than number of indicies"];
            Return[FF[a]]
        ,
        True,
            Module[{newFundInds = Insert[Delete[a, currentInd], a[[currentInd
                ]], newInd]},
                Return[GetFFFromInds[{newFundInds}] + CommuteBackFFComTerms[
                    FF[a], currentInd, newInd]]
            ]
    ];


(*It is often faster to do some algebra iteratively on an expression rather than all at once:*)

replace1ce =
    Block[{$done = False},
        Fold[
            ReplaceAll
            ,
            #
            ,
            # :>
                    RuleCondition[
                        $done = True;
                        #2
                        ,
                        !$done
                    ]& @@@ #2
        ]
    ]&;

replace1ceSum[expr_, rules_] :=
    Module[{listExpr = (List @@ Expand[expr + zero]) /. zero -> 0},
        Do[listExpr[[iter]] = replace1ce[listExpr[[iter]], rules], {iter,
             Length[listExpr]}];
        Total[listExpr]
    ];

IterativeAlgebra[expr_, iterAlgebra_] :=
    Module[{expr0 = expr, exprsimp = replace1ceSum[Expand[expr], iterAlgebra
        ], n = 0},
        While[
            expr0 =!= exprsimp
            ,
            If[n > 100,
                Print["IterativeAlgebra Error: Cannot end loop"];
                Break[]
            ];
            n++;
            expr0 = exprsimp;
            exprsimp = replace1ceSum[Expand[exprsimp], iterAlgebra]
        ];
        exprsimp
    ];


(*Kronecker delta symbol symmetry*)

SetAttributes[deltaF, Orderless];

SetAttributes[deltaA, Orderless];


(*Assert symmetry of d and shorthand for contractions*)

SetAttributes[dF, Orderless];

SetAttributes[dA, Orderless];

(*UpValues*)

(*Adjoint color tensors with odd number of indices is zero*)

(*Two fully contracted fundamental symmetric tensors*)

dF /: (dF[a__ /; CountDistinct[List[a]] == Length[List[a]]]) ^ 2 :=
    ToExpression[StringJoin["C", ToString[Length[List[a]]], "FF"]];

(*Two fully contracted adjoint symmetric tensors*)

dA /: (dA[a___ /; CountDistinct[List[a]] == Length[List[a]]]) ^ 2 :=
    ToExpression[StringJoin["C", ToString[Length[List[a]]], "AA"]];

(*One fundamental symmetric tensor fully contracted with an adjoint symmetric tensor*)

dF /: dF[a__ /; CountDistinct[List[a]] == Length[List[a]]] dA[a__] :=
    ToExpression[StringJoin["C", ToString[Length[List[a]]], "AF"]];

dA /: dF[a__ /; CountDistinct[List[a]] == Length[List[a]]] dA[a__] :=
    ToExpression[StringJoin["C", ToString[Length[List[a]]], "AF"]];

(*Quadratic Casimir Invariants in terms of d2*)

C2AA /: C2AA :=
    CA^2 DA;

C2AF /: C2AF :=
    CA CF DF;

C2FF /: C2FF :=
    CF DF TF;

(*Zero value cubic Casimir Invariants in terms of d2*)

C3AA /: C3AA :=
    0;

C3AF /: C3AF :=
    0;

(*Definition of symmetrized traces d's*)

StrF[a_] :=
    Module[{result, perms = (Delete[a, 1][[#]])&/@Permutations[Range[Length[a]-1]], fundInds = Table[
        GetFundIndex[], Length[a]]},
        perms = Insert[perms, a[[1]], Table[{iter, 1}, {iter, Length[
            perms]}]];
        AppendTo[fundInds, fundInds[[1]]];
        result = 1 / (Length[a] - 1)! Sum[Product[TT @@ Join[{Transpose[
            {perms[[iter2]]}][[iter1]]}, {fundInds[[iter1]], fundInds[[iter1 + 1]]
            }], {iter1, Length[perms[[iter2]]]}], {iter2, Length[perms]}];
        Return[result];
    ];

StrA[a_] :=
    Module[{result, perms = (Delete[a, 1][[#]])&/@Permutations[Range[Length[a]-1]], loopInds = Table[
        GetAdjIndex[], Length[a]]},
        perms = Insert[perms, a[[1]], Table[{iter, 1}, {iter, Length[
            perms]}]];
        AppendTo[loopInds, loopInds[[1]]];
                 (*Note the structure consants and generators in the 
            adjoint representation
             differ by factors of -i*)
        result = (-I) ^ Length[a] / (Length[a] - 1)! Sum[Product[ff @@
             Join[{perms[[iter2, iter1]]}, {loopInds[[iter1]], loopInds[[iter1 + 
            1]]}], {iter1, Length[perms[[iter2]]]}], {iter2, Length[perms]}];
        Return[result];
    ];


(*Global ff UpValues*)

(*antisymmetry of f's forces intracontractions to zero*)

ff[a_, a_, b_] :=
    0;

ff[a_, b_, a_] :=
    0;

ff[b_, a_, a_] :=
    0;


(* ::Subtitle:: *)
(*Contracting and Tracing Fundamental Generators*)


ToTTProductForm[expr_] :=
    Block[{deltaF},
        (*Get deltaF UpValues*)
        Get[$CIFARPath <> "/lib/deltaF.m"];
        Expand[expr] //. {TT[{a__}, i_, j_] TT[{b__}, j_, k_] -> TT[{
            a, b}, i, k]}
    ];


(*Contracting adjoint indicies in fundamental generators*)

(*Define product chain with zero generators as the identity*)

TT /: TT[{}, i_, j_] :=
    deltaF[i, j];

ContractTT[TT[a_, i_, j_]] :=
    Module[
        {
            result
            ,
            (*Local variables for coefficients and (un/contracted indicies
                )*)
            TTexpr
            ,
            TTcoef
            ,
            TTAdjInd
            ,
            ContInd
            ,
            TTFundInd
            ,
            (*Local variables keeping track of how far contracted indicies
                 are from each other & commutator terms*)
            ContDist
            ,
            minContDistInd
            ,
            RHminCont
            ,
            TTAdjIndCom
            ,
            comTerms = 0
        }
        ,
        (*See where adjoint indicies are contracted*)
        ContInd = PositionDuplicates[a];
        (*If there are no contractions, return original expression*)
        If[Length[ContInd] == 0,
            Return[TT[a, i, j]]
        ];
        (*See how far contracted generators are from each other in product
            *)
        ContDist = -Subtract @@@ ContInd;
        minContDistInd = Ordering[ContDist, 1][[1]];
        If[ContDist[[minContDistInd]] < 3,
            result = TT[a, i, j]
            ,
            result = CommuteBackTT[TT[a, i, j], ContInd[[minContDistInd
                ]][[2]], ContInd[[minContDistInd]][[1]] + 2];
        ];
        Block[
            {TT}
            ,
            (*Get TT UpValues*)
            Get[$CIFARPath <> "lib/TT.m"];
            (*Keep contracting indicies until done*)
            Return[Expand[result] /. {TT[aa_, ii_, jj_] :> ContractTT[
                TT[aa, ii, jj]]}];
        ]
    ];


ContractffTT[expr_] :=
    Module[{
        result
        ,
        (*Deal with each term in expression seperately*)
        resultList = List @@ (Expand[expr] + zero) /. zero -> 0
        ,
        (*Local variables for coefficients and (un/contracted indicies)*)
        ffInd
        ,
        TTAdjInd
        ,
        TTFundInd
        ,
        coef
        ,
        ffTTCont
        ,
        ffTTNotCont
        ,
        (*Local variables keeping track of which T is contracted with
             which f & commutator terms*)
        whichff
        ,
        whichTT
        ,
        firstIndPos
        ,
        secondIndPos
        ,
        thirdIndPos
        ,
        Inds
        ,
        IndsOrder
        ,
        comTerms = 0
    },
        If[(*If there is only one term in the expression*)Length[resultList
            ] == 2,
            {ffInd, TTAdjInd, TTFundInd, coef} = GetExprIndsandCoef[expr
                ];
            (*If there are no structure constants, return expression*)
                
            If[Length[ffInd] == 0,
                Return[expr]
            ];
            (*Loop through structure constants and generators to see 
                if there are any that have 2 or more contracted indicies*)
            Do[
                ffTTCont = Intersection[ffInd[[iter1]], TTAdjInd[[iter2
                    ]]];
                ffTTNotCont = Complement[ffInd[[iter1]], ffTTCont];
                If[Length[ffTTCont] >= 2,
                    {whichff, whichTT} = {iter1, iter2};
                    Break[]
                ]
                ,
                {iter1, Length[ffInd]}
                ,
                {iter2, Length[TTAdjInd]}
            ];
            (*If there were no contractions with more than two indicies
                 found, reutrn expression*)
            If[Length[ffTTCont] < 2,
                Return[expr]
            ];
            (*Contract (and commute if necessary) indicies*)
            (*Get rest of expression with current contracted terms excluded
                *)
            coef = GetExprFromIndsAndCoef[Delete[ffInd, {whichff}], Delete[
                TTAdjInd, {whichTT}], Delete[TTFundInd, {whichTT}], coef];
            (*Only focus on currently contracted indicies*)
            {ffInd, TTAdjInd, TTFundInd} = {ffInd[[whichff]], TTAdjInd
                [[whichTT]], TTFundInd[[whichTT]]};
            Which[(*If there are two indicies contracted between one 
                f and one product of T's*)
                Length[ffTTCont] == 2,
                    (*See where contracted indicies are in TT product
                         chain*){firstIndPos, secondIndPos} = {Position[TTAdjInd, ffTTCont[[1
                        ]]][[1, 1]], Position[TTAdjInd, ffTTCont[[2]]][[1, 1]]};
                    If[firstIndPos > secondIndPos,
                        ffTTCont = Reverse[ffTTCont];
                        {firstIndPos, secondIndPos} = {secondIndPos, 
                            firstIndPos}
                    ];
                    (*Commute secondInd s.t. it is next to firstInd*)
                        
                    comTerms += GetffFromInds[{ffInd}] CommuteBackTTComTerms[
                        GetTTFromInds[{TTAdjInd}, {TTFundInd}], secondIndPos, firstIndPos + 1
                        ];
                    (*Use f^{a b c}T^bT^c=\frac{i}{2} C_A T^a (generalized
                         to cyclic permuations of {a,b,c})*)
                    TTAdjInd = Insert[Delete[TTAdjInd, {{firstIndPos},
                         {secondIndPos}}], ffTTNotCont[[1]], firstIndPos];
                    result = coef (BooleSign[CyclicQ[ffInd] == CyclicQ[
                        Join[ffTTNotCont, ffTTCont]]] (I CA) / 2 GetTTFromInds[{TTAdjInd}, {TTFundInd
                        }] + comTerms)
                ,
                (*If there are three indicies contracted between one 
                    f and one product of T's*)Length[ffTTCont] == 3,
                    (*See where contracted indicies are in TT product
                         chain and put them in order*)Inds = Table[Position[TTAdjInd, ffTTCont
                        [[iter]]][[1, 1]], {iter, 3}];
                    IndsOrder = Ordering[Inds];
                    {firstIndPos, secondIndPos, thirdIndPos} = Inds[[
                        IndsOrder]];
                    ffTTCont = ffTTCont[[IndsOrder]];
                    (*Commute secondInd s.t. it is next to firstInd*)
                        
                    comTerms += GetffFromInds[{ffInd}] CommuteBackTTComTerms[
                        GetTTFromInds[{TTAdjInd}, {TTFundInd}], secondIndPos, firstIndPos + 1
                        ];
                    (*Commute thirdInd s.t. it is next to secondInd*)
                        
                    comTerms += GetffFromInds[{ffInd}] CommuteBackTTComTerms[
                        GetTTFromInds[{Insert[Delete[TTAdjInd, secondIndPos], ffTTCont[[2]], 
                        firstIndPos + 1]}, {TTFundInd}], thirdIndPos, firstIndPos + 2];
                    (*Use f^{a b c}T^aT^bT^c=\frac{i}{2} C_A C_F (generalized
                         to cyclic permuations of {a,b,c})*)
                    TTAdjInd = Delete[TTAdjInd, {{firstIndPos}, {secondIndPos
                        }, {thirdIndPos}}];
                    result = coef (BooleSign[CyclicQ[ffInd] == CyclicQ[
                        ffTTCont]] (I CA CF) / 2 GetTTFromInds[{TTAdjInd}, {TTFundInd}] + comTerms
                        )
            ];
            (*Keep contracting indicies until done*)
            Return[ContractffTT[result]]
            ,
            (*If there are many terms in expression, deal with each one
                 seperately*)
            Return[Total[ContractffTT /@ resultList]];
        ];
    ];


(*Assert that trace of one generator is zero*)

TT /: TT[{a_}, i_, i_] :=
    0;

TraceTT[TT[a_List, i_, j_], opts: OptionsPattern[]] /; !DuplicateFreeQ[a] :=
    ContractTT[TT[a, i, j]] /.TT[aa___]:>TraceTT[TT[aa], opts];

TraceTT[TT[a_, i_, j_], OptionsPattern[]] :=
    If[(*Check if term is actually a trace (i.e. indicies closed)*)i 
        =!= j,
        Print["Fundamental indicies not closed."];
        Return[TT[a, i, j]]
        ,
        (*If so, compute trace*)
        Which[(*Terminates at trace of two generators is Tr[t^a t^b]=
            TF \delta^{a b}*)
            (Length[a] == 2),
                Return[TF (deltaA @@ a)]
            ,
                     (*Tabulate trace of three generators for speed: 
                Tr[t^a 
            t^b t^c]= d^{a b c} +i/2 T_R f^{a b c}*)(Length[a] == 3 &&
     OptionValue[Tabulate]),
                Return[dF @@ a + I / 2 TF ff @@ a]
            ,
                      (*Tabulate trace of four generators for speed: 
                Tr[t^a_1 t
                ^a_2 t^a_3 t^a_4 ]= d^{a_1 a_2 a_3 a_4} +i/2 (d^{a_1 
    a_4 n} f^{a_2 a_
                3 n} - d^{a_2 a_3 n} f^{a_1 a_4 n}) + T_R/6 (f^{a_1 a_
    4 n} f^{a_2 a_3
                 n}-f^{a_1 a_2 n} f^{a_3 a_4 n})*)(Length[a] == 4 && 
    OptionValue[Tabulate]),
                Return[dF @@ a + I / 2 (dF[a[[1]], a[[4]], GetAdjIndex[
                    ]] ff[a[[2]], a[[3]], GetAdjIndex[-1]] - dF[a[[2]], a[[3]], GetAdjIndex[
                    -1]] ff[a[[1]], a[[4]], GetAdjIndex[-1]]) + TF / 6 (ff[a[[1]], a[[4]],
                     GetAdjIndex[-1]] ff[a[[2]], a[[3]], GetAdjIndex[-1]] - ff[a[[1]], a[[
                    2]], GetAdjIndex[-1]] ff[a[[3]], a[[4]], GetAdjIndex[-1]])]
            ,
            (*Compute symmetrized trace otherwise*)True,
                Module[
                    {
                        (*Begin with totally symmetric tensor*)result
                             = dF @@ a
                        ,
                        (*Get all permutations of adjoint indicies*)
                        perms = Permutations[Delete[a, 1]]
                        ,
                               (*local variables for keeping track of
                             index 
                            commuting and collapsing permuations*)
                        currentPos
                        ,
                        distinctPerms
                        ,
                        permsFactors
                    }
                    ,
                         (*Insert first adjoint index for each permutation
                        
                         *)
                    perms = Insert[perms, a[[1]], Table[{iter, 1}, {iter,
                         Length[perms]}]];
                    permsFactors = Table[1, Length[perms]];
                            (*Loop through each adjoint index to commute
                         them
                         into the correct spot*)
                    Do[
                             (*Loop through each permutation for each
                             adjoint
                             index*)Do[
                            (*Get current position of adjoint index*)
                                currentPos = Position[perms[[iter2]], a[[iter1]]][[1, 1]];
                                    (*Commute index into correct posistion
                                , add
                                 commutator terms to result*) result 
    -= permsFactors[[iter2]] / (Length[a] - 1)! CommuteBackTTComTerms[GetTTFromInds[
    {perms[[iter2]]}, {{GetFundIndex[], GetFundIndex[-1]}}], currentPos, 
    iter1];
                            perms[[iter2]] = Insert[Delete[perms[[iter2
                                ]], currentPos], a[[iter1]], iter1]
                            ,
                            {iter2, Length[perms]}
                        ];
                               (*After commuting ith index, examine permuations
                            
                             and collapse duplicates*)
                        distinctPerms = PositionDistinct[perms];
                        permsFactors = Total /@ Table[permsFactors[[distinctPerms
                            [[iter3]]]], {iter3, Length[distinctPerms]}];
                        perms = perms[[distinctPerms[[;;, 1]]]]
                        ,
                        {iter1, 2, Length[a] - 1}
                    ];
                    (*Recursion to evaluate smaller traces*)
                    Return[Expand[result] /. {TT[aa_, ii_, ii_] :> TraceTT[
                        TT[aa, ii, ii]]}]
                ];
        ];
    ];
    
TraceTT[expr_]:=expr; 


(* ::Subtitle:: *)
(*Contracting and Tracing Structure Constants*)


(*identify structure constant loops in expression*)

ToFFLoopForm[expr_] :=
    Module[{result = 0, resultList = List @@ (Expand[expr] + zero) /.
         zero -> 0, exprInds, exprCoef, uncontInd, contInds, FFInds = {}, inIndex,
         outIndex, posNextInd, OnlyDoubleCont, WhereCont, NotContffPos, SingleContPos,
         doubleContInd, tripleContInd, safeTripleCont2, safeTripleCont3, elimIndex,
         elimIndexPos, removeIndPos, endLabel},
        Block[{deltaA, ff},
        (*Get UpValues for deltaA and ff*)
        Get[$CIFARPath <> "lib/deltaA.m"];
        Get[$CIFARPath <> "lib/ff.m"];
        If[Length[resultList] == 2,
            {exprInds, exprCoef} = GetffIndandCoef[Total[resultList]]
                ;
            WhereCont = Gather[Flatten[PositionDuplicates[exprInds], 
                1], First[#1] == First[#2]&];
            If[PossibleZeroQ[Length[WhereCont]],
                Return[expr]
            ];
            NotContffPos = Complement[Range[Length[exprInds]], WhereCont
                [[;;, 1, 1]]];
            exprCoef *= GetffFromInds[exprInds[[NotContffPos]]];
            exprInds = Delete[exprInds, Transpose[{NotContffPos}]];
            WhereCont = Gather[Flatten[PositionDuplicates[exprInds], 
                1], First[#1] == First[#2]&];
            OnlyDoubleCont = Not[AnyTrue[WhereCont, (Length[#] == 1 ||
                 Length[#] == 3)&]];
            While[
                Not[OnlyDoubleCont]
                ,
                SingleContPos = Select[WhereCont, Length[#] == 1&][[;;,
                     ;;, 1]];
                If[Length[SingleContPos] > 0,
                    exprCoef *= GetffFromInds[exprInds[[Transpose[SingleContPos
                        ][[1]]]]];
                    exprInds = Delete[exprInds, SingleContPos]
                ];
                WhereCont = Gather[Flatten[PositionDuplicates[exprInds
                    ], 1], First[#1] == First[#2]&];
                (*Replace one index in triple contracted ff's with a 
                    dummy index times delta function so we can identify loops*)
                tripleContInd = exprInds[[Select[WhereCont, Length[#]
                     == 3&][[;;, 1, 1]]]];
                If[Length[tripleContInd] > 0,
                    doubleContInd = Flatten[exprInds[[Select[WhereCont,
                         Length[#] == 2&][[;;, 1, 1]]]]];
                    If[Length[doubleContInd] > 0,
                        (*First, see which indicies are contracted with
                             ff's which are double contracted; these are off limits. Choose from 
                            the rest.*)
                        Quiet @
                            Check[
                                (*First check if there are f's with only
                                     one safe index; choose these as non-tracing indicies*)elimIndex = Select[
                                    Table[DeleteElements[tripleContInd[[iter]], doubleContInd], {iter, Length[
                                    tripleContInd]}], Length[#] == 1&][[1, 1]]
                                ,
                                (*If not, then check f's with two (and
                                     then three) safe indicies*)
                                safeTripleCont2 = Select[Table[DeleteElements[
                                    tripleContInd[[iter]], doubleContInd], {iter, Length[tripleContInd]}],
                                     Length[#] == 2&];
                                Quiet @
                                    Check[
                                        elimIndex = DuplicateElements[
                                            safeTripleCont2][[1]]
                                        ,
                                        safeTripleCont3 = Select[Table[
                                            DeleteElements[tripleContInd[[iter]], doubleContInd], {iter, Length[tripleContInd
                                            ]}], Length[#] == 3&];
                                        If[Length[safeTripleCont3] ==
                                             0,
                                            (*If you can't find any safe
                                                 indicies, discard one doubly contracted ff and look for smaller loops
                                                *)
                                            removeIndPos = SelectFirst[
                                                WhereCont, Length[#] == 2&][[1, 1]];
                                            exprCoef *= GetffFromInds[
                                                {exprInds[[removeIndPos]]}];
                                            exprInds = Delete[exprInds,
                                                 removeIndPos];
                                            Goto[endLabel]
                                        ];
                                        Do[
                                            elimIndex = DuplicateElements[
                                                Join[safeTripleCont2, safeTripleCont3[[iter]]]];
                                            If[Length[elimIndex] != 0,
                                                
                                                Break[]
                                            ]
                                            ,
                                            {iter, Length[safeTripleCont3
                                                ]}
                                        ];
                                        elimIndex = elimIndex[[1]];
                                    ];
                            ];
                        elimIndexPos = Position[exprInds, elimIndex][[
                            1]]
                        ,
                        elimIndexPos = PositionDuplicates[tripleContInd
                            ][[1, 1]];
                        elimIndexPos = Insert[Position[exprInds, tripleContInd
                            [[elimIndexPos[[1]]]]][[1]], elimIndexPos[[2]], -1];
                    ];
                    exprCoef *= deltaA[GetAdjIndex[], Extract[exprInds,
                         elimIndexPos]];
                    exprInds = ReplacePart[exprInds, Thread[{elimIndexPos
                        } -> GetAdjIndex[-1]]];
                ];
                Label[endLabel];
                WhereCont = Gather[Flatten[PositionDuplicates[exprInds
                    ], 1], First[#1] == First[#2]&];
                OnlyDoubleCont = Not[AnyTrue[WhereCont, (Length[#] ==
                     1 || Length[#] == 3)&]];
            ];
            (*get uncontracted indicies*)
            uncontInd = Flatten[PositionUnique[exprInds], 1];
            (*Reshuffle indicies s.t. uncontracted (non-tracing)indicies
                 are in front*)
            Do[
                If[uncontInd[[iter, 2]] != 1,
                    exprInds = Swap[exprInds, uncontInd[[iter]], {iter,
                         1}];
                    exprCoef *= -1
                ]
                ,
                {iter, Length[uncontInd]}
            ];
            (*now get contracted indicies*)
            contInds = PositionDuplicates[exprInds];
            (*identify loops among contracted indicies*)
            (*Loop through all contracted indicies*)
            While[
                Length[contInds] > 0
                ,
                (*Start new FF loop *)
                AppendTo[FFInds, {}];
                (*Start FF loop construction*)
                inIndex = contInds[[1, 1]];
                While[
                    True
                    ,
                    (*Add next uncontracted index to current loop*)
                    AppendTo[FFInds[[-1]], exprInds[[inIndex[[1]], 1]]
                        ];
                    (*Get outter index of current ff*)
                    outIndex = {inIndex[[1]], 3};
                    (*Switch sign and posistion of inner index not in
                         middle posistion*)
                    If[inIndex[[2]] != 2,
                        exprCoef *= -1;
                        outIndex[[2]] = 2
                    ];
                    (*Delete current contraction from contInds*)
                    contInds = Delete[contInds, Position[contInds, inIndex
                        ]];
                    posNextInd = Position[contInds, outIndex][[1]];
                    contInds = Delete[contInds, posNextInd]; (*Move to
                         next index if available; if not, loop is closed*)
                    Quiet @ Check[inIndex = contInds[[posNextInd[[1]],
                         1]], Break[]];
                ];
                (*Clear empty contractions before moving onto next loop
                    *)
                contInds = DeleteCases[contInds, {}]
            ];
            Return[exprCoef * Times @@ (FF /@ FFInds)]
            ,
            Return[Total[ToFFLoopForm /@ resultList]];
        ]
    ]];


(*Assert that loop with one index is zero (by antisymmetry of f)*)
FF/:FF[{a_}] :=0


(*Evaluating contractions within structure constant loops*)

ContractFF[FF[a_]] :=
    Module[
        {
            result
            ,
            (*Local variables for coefficients and (un/contracted indicies
                )*)
            TTexpr
            ,
            TTcoef
            ,
            TTAdjInd
            ,
            ContInd
            ,
            TTFundInd
            ,
            (*Local variables keeping track of how far contracted indicies
                 are from each other & commutator terms*)
            ContDist
            ,
            minContDistInd
            ,
            RHminCont
            ,
            TTAdjIndCom
            ,
            comTerms = 0
        }
        ,
        (*See where adjoint indicies are contracted*)
        ContInd = PositionDuplicates[a];
        (*If there are no contractions, return result*)
        If[Length[ContInd] == 0,
            Return[FF[a]]
        ];
        (*See how far contracted generators are from each other in product*)
        ContDist = -Subtract @@@ ContInd;
        minContDistInd = Ordering[ContDist, 1][[1]];
        If[ContDist[[minContDistInd]] < 2,
            result = FF[a]
            ,
            (*Commute contracted indicies until they are right next to
                 each other, then use quadratic Casimir F^{a_1 ... x x ... a_n}= -CA 
                F^{a_1 ... a_n}*)
            result = CommuteBackFF[FF[a], ContInd[[minContDistInd]][[
                2]], ContInd[[minContDistInd]][[1]] + 1];
        ];
        Block[
            {FF}
            ,
            (*Get FF UpValues*)
            Get[$CIFARPath <> "lib/FFLoop.m"];
            (*Keep contracting indicies until done*)
            Return[result /. {FF[aa_] :> ContractFF[FF[aa]]}];
        ];
    ];


(*Evaluating structure constant loops*)    
TraceFF[FF[a_List], opts: OptionsPattern[]] /; !DuplicateFreeQ[a]:=ContractFF[FF[a]]/.FF[aa_]:>TraceFF[FF[aa], opts];
    
TraceFF[FF[a_List], opts: OptionsPattern[]] :=
    Which[(*If two index loop, use F^{a b}=- C_A \delta_{a b}*)
        Length[a] == 2,
            Return[-CA deltaA @@ a]
        ,
        (*If three index loop, use F^{a b c}=C_A/2 f^{a b c}*)(Length[
            a] == 3 && OptionValue[Tabulate]),
            1/2 CA ff @@ a
        ,
               (*If three index loop, use F^{a b c}=C_A/2 f^{a b c}*)(Length[
            a] == 4 && OptionValue[Tabulate]),
            With[{dummyInd=GetAdjIndex[]},(dA@@a)+1/6 CA ff[a[[1]],dummyInd,a[[4]]] ff[a[[3]],a[[2]],dummyInd]+1/6 CA ff[a[[1]],a[[2]],dummyInd] ff[a[[4]],a[[3]],dummyInd]]
        ,
        (*If even number of indices loop, use symmetrization algo*)
        EvenQ[Length[a]],
            Module[{
                (*Begin with totally symmetric tensor*)result = I ^ Length[
                    a] dA @@ a
                ,
                (*Get all permutations of adjoint indicies*)
                perms = Permutations[Delete[a, 1]]
                
                ,
                (*local variables for keeping track of index commuting
                     and collapsing permuations*)
                currentPos
                ,
                distinctPerms
                ,
                permsFactors
            },
                permsFactors = Table[1, Length[perms]];
                (*Search for reversals in list permuations; remove them
                     and adjust prefactors permsFactors*)
                Do[
                    If[(*Check if we already counted the reversal*)Not[
                        PossibleZeroQ[permsFactors[[iter]]]],
                        permsFactors[[iter]] += permsFactors[[Position[
                            perms, Reverse[perms[[iter]]]][[1, 1]]]];
                        permsFactors[[Position[perms, Reverse[perms[[
                            iter]]]][[1, 1]]]] = 0;
                    ]
                    ,
                    {iter, Length[permsFactors]}
                ];
                perms = Pick[perms, Not /@ (PossibleZeroQ @ permsFactors
                    )];
                permsFactors = Pick[permsFactors, Not /@ (PossibleZeroQ
                     @ permsFactors)];
                (*Insert first index for each permutation *)
                perms = Insert[perms, a[[1]], Table[{iter, 1}, {iter,
                     Length[perms]}]];
                (*Loop through each index to commute them into the correct spot*)
                Do[
                    (*Loop through each permutation for each index*)Do[
                        
                        (*Get current position of index*)currentPos =
                             Position[perms[[iter2]], a[[iter1]]][[1, 1]];
                        (*Commute index into correct posistion, add commutator
                             terms to result*)
                        result -= permsFactors[[iter2]] / (Length[a] 
                            - 1)! CommuteBackFFComTerms[GetFFFromInds[{perms[[iter2]]}], currentPos,
                             iter1];
                        perms[[iter2]] = Insert[Delete[perms[[iter2]],
                             currentPos], a[[iter1]], iter1];
                        ,
                        {iter2, Length[perms]}
                    ];
                    (*After commuting ith index, examine permuations 
                        and collapse duplicates*)
                    distinctPerms = PositionDistinct[perms];
                    permsFactors = Total /@ Table[permsFactors[[distinctPerms
                        [[iter3]]]], {iter3, Length[distinctPerms]}];
                    perms = perms[[distinctPerms[[;;, 1]]]]
                    ,
                    {iter1, 2, Length[a] - 1}
                ];
                (*Recursion to evaluate smaller traces*)
                Return[result /. {FF[aa_] :> TraceFF[FF[aa]]}];
            ]
        ,
        (*If odd number of indices loop, use trick described above*)
        OddQ[Length[a]],
            Module[
                {
                    (*Begin with zero, since totally symmetric tensor
                         in adjoint rep. is zero*)result = 0
                    ,
                    (*Start with RHS being F^{a_1 a_n ... a_2}*)
                    currentPerm = Join[{a[[1]]}, Reverse[a[[2 ;; ]]]]
                        
                    ,
                    (*Desired RHS is F^{a_n a_1 a_2 ... a_{n-1}}*)
                    endPerm = Join[{a[[-1]]}, a[[ ;; -2]]]
                    ,
                    currentPos
                }
                ,
                (*Loop through each index to commute them into the correct
                     spot*)
                Do[
                    currentPos = Position[currentPerm, endPerm[[iter]]
                        ][[1, 1]];
                    (*subtract commutator terms from result, 1/2 from
                         dividing RHS *)
                    result -= 1/2 CommuteBackFFComTerms[GetFFFromInds[
                        {currentPerm}], currentPos, iter];
                    currentPerm = Insert[Delete[currentPerm, currentPos
                        ], endPerm[[iter]], iter]
                    ,
                    {iter, 1, Length[endPerm] - 1}
                ];
                Return[result /. {FF[aa_] :> TraceFF[FF[aa]]}];
            ]
    ];


(*Helper Function for Full Adjoint Evaluation*)

AdjointReduce[expr_, opts : OptionsPattern[]] :=
    AdjointReduce[expr, False, opts];

AdjointReduce[expr_, fullyContractedQ_:False, opts : OptionsPattern[]
    ] :=
    Module[{expr0, exprsimp, StandardizeIndicesLoc, n = 0},
        StandardizeIndicesLoc =
            If[fullyContractedQ,
                StandardizeIndicesAdjoint[Expand[# (*/. {ff[a__] :> CIFAR`Private`BooleSign[
                    CIFAR`Private`CyclicQ[ff[a]]] (ff[a] // SortBy[#, StringLength[ToString[
                    #]]&]&)}*)]]&
                ,
                Identity
            ];
        expr0 =
            If[fullyContractedQ,
                StandardizeIndicesAdjoint[Expand[expr]]
                ,
                expr
            ];
            
        Block[
            {ff, FF, deltaA, dA, dF}
            ,
            (*Get UpValues for Adjoint objects*)
            Get[$CIFARPath <> "lib/ff.m"];
            Get[$CIFARPath <> "lib/FFLoop.m"];
            Get[$CIFARPath <> "lib/deltaA.m"];
            Get[$CIFARPath <> "lib/dA.m"];
            Get[$CIFARPath <> "lib/dF.m"];
            SetOptions[TraceFF, Tabulate -> OptionValue[Tabulate]
                ];
            exprsimp =
                Collect[
                            (
                                Expand[((ToFFLoopForm[expr0] /. {FF[aa_
                                    ] ^ 2 :> Times[ContractFF[FF[aa]], ContractFF[FF[aa]]]}) /. {FF[aa_] 
                                    :> ContractFF[FF[aa]]})] /.
                                    If[OptionValue[Tabulate],
                                        Get[$CIFARPath <> "lib/ffffFFContraction.m"
                                            ]
                                        ,
                                        {}
                                    ]
                            )
                            ,
                            _FF
                        ] /. {FF[aa_] ^ 2 :> Times[TraceFF[FF[aa]], TraceFF[
                            FF[aa]]]} /. {FF[aa_] :> TraceFF[FF[aa]]};
            exprsimp = StandardizeIndicesLoc[exprsimp];
            Until[
                expr0 === exprsimp
                ,
                If[n > 50,
                    SetOptions[TraceFF, Tabulate -> True];
                    Print["AdjointReduce Error: Cannot end loop"];
                    Break[]
                ];
                n++;
                expr0 = exprsimp;
                exprsimp = (((ToFFLoopForm[Expand[exprsimp]] /. {FF[aa_
                    ] ^ 2 :> Times[ContractFF[FF[aa]], ContractFF[FF[aa]]]}) /. {FF[aa_] 
                    :> ContractFF[FF[aa]]})/. {FF[aa_] ^ 2 :> Times[TraceFF[FF[aa]], TraceFF[FF[aa]]]}) /. {FF[
                    aa_] :> TraceFF[FF[aa]]};
                exprsimp = StandardizeIndicesLoc[exprsimp];
                exprsimp = (ToFFLoopForm[Expand[exprsimp]] /. {FF[aa_
                    ] :> ContractFF[FF[aa]]}) /. {FF[aa_] :> TraceFF[FF[aa]]};
                exprsimp = StandardizeIndicesLoc[exprsimp];
            ];
            SetOptions[TraceFF, Tabulate -> True];
            Return[exprsimp]
        ]
    ];


(*Main kernel carries shared cache*)
If[$KernelID===0,
$CIFARReduceCache=CreateDataStructure["HashTable"];
SetSharedVariable[$CIFARReduceCache];

LookupCIFARReduceCache[expr_]:=$CIFARReduceCache["Lookup",Hash[expr]];
SetSharedFunction[LookupCIFARReduceCache];

UpdateCIFARReduceCache[expr_,result_]:=$CIFARReduceCache["Insert",Hash[expr]->result];
SetSharedFunction[UpdateCIFARReduceCache];
]

LoadCIFARReduceCache[pathname_String]:=$CIFARReduceCache=Check[Get[pathname],CreateDataStructure["HashTable"]];
ExportCIFARReduceCache[pathname_String]:=Export[pathname,$CIFARReduceCache];


CIFARReduce[expr_, opts : OptionsPattern[]] :=
    Module[{result, lookup, fullyContractedQ = True},
        If[OptionValue[UseCache],
            lookup = LookupCIFARReduceCache[expr];
            If[!MatchQ[Head[lookup], Missing],
                Return[lookup]
            ];
        ];
        If[OptionValue[CheckContractions],
            Check[fullyContractedQ = FullyContractedQ[Expand[expr]], 
                Return[expr], {CIFAR`Private`FullyContractedQ::highcount, CIFAR`Private`FullyContractedQ
                ::nocolorobjects}];
        ];
        result = Expand[expr];
        Block[
            {TT, ff, FF, deltaF, deltaA, dA, dF}
            ,
            (*Get UpValues for all objects*)
            Get[$CIFARPath <> "lib/TT.m"];
            Get[$CIFARPath <> "lib/ff.m"];
            Get[$CIFARPath <> "lib/FFLoop.m"];
            Get[$CIFARPath <> "lib/deltaF.m"];
            Get[$CIFARPath <> "lib/deltaA.m"];
            Get[$CIFARPath <> "lib/dA.m"];
            Get[$CIFARPath <> "lib/dF.m"];
            result = ToTTProductForm[result];
            result = result /. {TT[aa_, ii_, jj_] ^ 2 :> Times[ContractTT[
                TT[aa, ii, jj]], ContractTT[TT[aa, ii, jj]]]};
            result = result /. {TT[aa_, ii_, jj_] :> ContractTT[TT[aa,
                 ii, jj]]};
            result = ContractffTT[result];
            SetOptions[TraceTT, Tabulate -> OptionValue[Tabulate]];
            result = result /. {TT[aa_, ii_, ii_] ^ 2 :> Times[TraceTT[
                TT[aa, ii, ii]], TraceTT[TT[aa, ii, ii]]]};
            result = result /. {TT[aa_, ii_, ii_] :> TraceTT[TT[aa, ii,
                 ii]]};
            SetOptions[TraceTT, Tabulate -> True];
            result = AdjointReduce[result, fullyContractedQ, Tabulate
                 -> OptionValue[Tabulate]];
        ];
        If[OptionValue[UseCache],
            UpdateCIFARReduceCache[expr, result]
        ];
        Return[result];
    ]


(* ::Subtitle:: *)
(*Algebra for SU(N)*)


(*
nc: nc of SU(nc) (number of colors)
DF: dim of fund rep;
DA: dim of adj rep;
CF: quadratic Casimir of fund rep;
CA: quadratic Casimir of adj rep;
C3FF, C4FF, C4AF, C4AA: cuibic & quartic Casimir invariants;
TF: quadratic Dynkin index of fund rep (choice of normalization);
*)
SUncValues={DF->nc,DA->nc^2-1,CF->TF (nc^2-1)/nc,CA->2 TF nc,TF->1/2, C3FF->(4-5 nc^2+nc^4)/(16 nc), C4AA->1/24 nc^2 (-36+35 nc^2+nc^4), C4AF->1/48 nc (-6+5 nc^2+nc^4), C4FF->(-18+24 nc^2-7 nc^4+nc^6)/(96 nc^2)};


(*Convert structure constants to fundamental generators so we can use Fierz identity*)
ffToTT[ff[a_,b_,c_]]:=2I(TT[{a},GetFundIndex[],GetFundIndex[]]TT[{c},GetFundIndex[-1],GetFundIndex[]]TT[{b},GetFundIndex[-1],GetFundIndex[-3]]-TT[{a},GetFundIndex[],GetFundIndex[]]TT[{b},GetFundIndex[-1],GetFundIndex[]]TT[{c},GetFundIndex[-1],GetFundIndex[-3]]);
ffToTT[ff[a_,b_,c_]]:=2I(TT[{a},GetFundIndex[],GetFundIndex[]]TT[{c},GetFundIndex[-1],GetFundIndex[]]TT[{b},GetFundIndex[-1],GetFundIndex[-3]]-TT[{a},GetFundIndex[-3],GetFundIndex[-2]]TT[{b},GetFundIndex[-2],GetFundIndex[-1]]TT[{c},GetFundIndex[-1],GetFundIndex[-3]]);
fftoTTRep={
ff[a_,b_,c_]^2:>ffToTT[ff[a,b,c]]*ffToTT[ff[a,b,c]],
ff[a_,b_,c_]:>ffToTT[ff[a,b,c]]};


(*identity that turns fundamental generators to delta functions for evaluation*)
FierzIdentity={TT[{a_},l_,k_]TT[{a_},i_,j_]->1/2 (deltaF[i,k]deltaF[l,j]-1/nc deltaF[l,k]deltaF[i,j]),(TT[{a_},i_,j_])^2->1/2 (nc-1)};


(*Main kernel carries shared cache*)
If[$KernelID===0,
$SUncReduceCache=CreateDataStructure["HashTable"];
SetSharedVariable[$SUncReduceCache];

LookupSUncReduceCache[expr_]:=$SUncReduceCache["Lookup",Hash[expr]];
SetSharedFunction[LookupSUncReduceCache];

UpdateSUncReduceCache[expr_,result_]:=$SUncReduceCache["Insert",Hash[expr]->result];
SetSharedFunction[UpdateSUncReduceCache];
]

LoadSUncReduceCache[pathname_String]:=$SUncReduceCache=Check[Get[pathname],CreateDataStructure["HashTable"]];
ExportSUncReduceCache[pathname_String]:=Export[pathname,$SUncReduceCache];


SUncReduce[expr_, OptionsPattern[]] :=
    Module[{
        result
        ,
        lookup
        ,
        (*Deal with each term in expression seperately*)
        resultList
        ,
        fullyContractedQ = True
    },
        If[OptionValue[UseCache],
            lookup = LookupSUncReduceCache[expr];
            If[!MatchQ[Head[lookup], Missing],
                Return[lookup]
            ];
        ];
        If[OptionValue[CheckContractions],
            fullyContractedQ = Quiet @ Check[FullyContractedQ[Expand[
                expr]], Return[expr //. SUncValues], {CIFAR`Private`FullyContractedQ::nocolorobjects
                }];
            fullyContractedQ = Check[FullyContractedQ[Expand[expr]], 
                Return[expr //. SUncValues], {CIFAR`Private`FullyContractedQ::highcount
                }];
        ];
        result =
            If[fullyContractedQ,
                StandardizeIndicesSimple[Expand[expr]]
                ,
                Expand[expr]
            ];
        resultList = List @@ (Expand[result] + zero) /. zero -> 0;
        Block[
            {deltaA, deltaF, dF, dA}
            ,
            (*Load UpValues for delta functions*)
            Get[$CIFARPath <> "lib/deltaF.m"];
            Get[$CIFARPath <> "lib/deltaA.m"];
            Get[$CIFARPath <> "lib/dF.m"];
            Get[$CIFARPath <> "lib/dA.m"];
            result =
                If[(*If there is only one term in the expression*)Length[
                    resultList] == 2,
                    IterativeAlgebra[(result /. fftoTTRep), FierzIdentity
                        ] //. SUncValues
                    ,
                 (*If there are many terms in expression, deal with each
    
    
                     one
                 seperately*)
                    Total[SUncReduce /@ resultList]
                ];
        ];
        If[OptionValue[UseCache],
            UpdateSUncReduceCache[expr, result]
        ];
        Return[result];
    ];


End[];


EndPackage[];


If[!MemberQ[$ContextPath, "CIFAR`Indices`"],
   $ContextPath = Prepend[$ContextPath, "CIFAR`Indices`"]
];
