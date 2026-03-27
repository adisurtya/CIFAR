(* ::Package:: *)

(* ::Subsection:: *)
(*Usage messages of global variables and protected symbols*)


(* ::Text:: *)
(*Constants of the color group:*)


DF::usage = 
"Protected symbol used to represent the dimension of the fundamental representation \!\(\*SubscriptBox[\"D\", \"F\"]\) of the color group.";
Protect[DF];

DA::usage = 
"Protected symbol used to represent the dimension of the fundamental representation \!\(\*SubscriptBox[\"D\", \"A\"]\) of the color group.";
Protect[DA];

TF::usage = 
"Protected symbol used to represent the quadratic Dynkin index of the fundamental representation \!\(\*SubscriptBox[\"T\", \"F\"]\).";
Protect[TF];

CF::usage = 
"Protected symbol used to represent the quadratic Casimir invariant in the adjoint representation \!\(\*SubscriptBox[\"C\", \"F\"]\).";
Protect[CF];

CA::usage = 
"Protected symbol used to represent the quadratic Casimir invariant in the adjoint representation \!\(\*SubscriptBox[\"C\", \"A\"]\).";
Protect[CA];

C3FF::usage = 
"Protected symbol used to represent the cubic Casimir invariant of two contracted three-index symmetric color tensors in the fundamental representaiton: \!\(\*SuperscriptBox[SubscriptBox[\"C\", \"3\"], \"FF\"]\).";
Protect[C3FF];

C4FF::usage = 
"Protected symbol used to represent the quartic Casimir invariant of two contracted four-index symmetric color tensors in the fundamental representaiton: \!\(\*SuperscriptBox[SubscriptBox[\"C\", \"4\"], \"FF\"]\).";
Protect[C4FF];

C4AF::usage = 
"Protected symbol used to represent the quartic Casimir invariant of two contracted four-index symmetric color tensors, one in the fundamental representaiton and in the one in the adjoint representaiton: \!\(\*SuperscriptBox[SubscriptBox[\"C\", \"4\"], \"AF\"]\).";
Protect[C4AF];

C4AA::usage = 
"Protected symbol used to represent the quartic Casimir invariant of two contracted four-index symmetric color tensors in the adjoint representaiton: \!\(\*SuperscriptBox[SubscriptBox[\"C\", \"4\"], \"AA\"]\).";
Protect[C4AA];

nc::usage = 
"Protected symbol used to represent the number of colors \!\(\*StyleBox[SubscriptBox[\"n\", \"c\"], \"TI\"]\) specfically in the color group \!\(\*RowBox[{\"SU(\", SubscriptBox[\"n\", \"c\"], \")\"}]\).";
Protect[nc];


(* ::Subsection:: *)
(*Usage messages of public functions*)


(* ::Subsubsection:: *)
(*CIFAR Objects*)


(* ::Text:: *)
(*(Products and traces of products of) members of the color group:*)


ff::usage = 
"\!\(\*RowBox[{\"ff\", \"[\", RowBox[{StyleBox[\"a\", \"TI\"], \",\", \
StyleBox[\"b\", \"TI\"], \",\", StyleBox[\"c\", \"TI\"]}], \"]\"}]\) \
represents the structure constants \!\(\*SuperscriptBox[\"f\", \
RowBox[{\"a\", \"b\", \"c\"}]]\) \
in the canonical commutation relation of the color group. The indices \
\!\(\*StyleBox[\"a\", \"TI\"]\), \!\(\*StyleBox[\"b\", \"TI\"]\), and \
\!\(\*StyleBox[\"c\", \"TI\"]\) should be symbolic constants.";


TT::usage = "\!\(\*RowBox[{\"TT\", \"[\", StyleBox[\"{a1, ..., an}\", \"TI\"], \",\", StyleBox[\"i\", \"TI\"], \",\", StyleBox[\"j\", \"TI\"], \"]\"}]\) \
represents a product of fundamental generators \
\!\(\*RowBox[{RowBox[{SubscriptBox[SuperscriptBox[\"T\", \
RowBox[{StyleBox[SubscriptBox[\"a\",\"1\"]], \"...\", StyleBox[SubscriptBox[\"a\",\"n\"]]}]],RowBox[{\"i\",\"j\"}]]}],\"\[Congruent]\", RowBox[{SubscriptBox[SuperscriptBox[\"t\", SubscriptBox[\"a\",\"1\"]], \
RowBox[{\"i\", StyleBox[SubscriptBox[\"i\",\"1\"]]}]]}],RowBox[{SubscriptBox[SuperscriptBox[\"t\", SubscriptBox[\"a\",\"2\"]], \
RowBox[{StyleBox[SubscriptBox[\"i\",\"1\"]], StyleBox[SubscriptBox[\"i\",\"2\"]]}]]}],\"...\",RowBox[{SubscriptBox[SuperscriptBox[\"t\", SubscriptBox[\"a\",\"n\"]], \
RowBox[{StyleBox[SubscriptBox[\"i\",\"n-1\"]], \"j\"}]]}]}]\). \
To represent a single generator \!\(\*RowBox[{SubscriptBox[SuperscriptBox[\"t\", \"a\"], RowBox[{\"i\", \"j\"}]]}]\), input a list with one element \
\!\(\*StyleBox[\"{a}\", \"TI\"]\) \
for the first argument. To express traces of these products \
\!\(\*RowBox[{SuperscriptBox[\"T\", \
RowBox[{StyleBox[SubscriptBox[\"a\",\"1\"]], \"...\", StyleBox[SubscriptBox[\"a\",\"n\"]]}]],\"\[Congruent]\",\"Tr[\",SuperscriptBox[\"t\", SubscriptBox[\"a\",\"1\"]], \"... \", SuperscriptBox[\"t\", SubscriptBox[\"a\",\"n\"]],\"]\"}]\), \
input identical arguments for the latter entry indices: \
\!\(\*RowBox[{\"TT\", \"[\", StyleBox[\"{a1, ..., an}\", \"TI\"], \",\", StyleBox[\"i\", \"TI\"], \",\", StyleBox[\"i\", \"TI\"], \"]\"}]\). \
The adjoint indices \!\(\*StyleBox[\"a1, ..., an\", \"TI\"]\) \
and the entry indices \!\(\*StyleBox[\"i\", \"TI\"]\) and \!\(\*StyleBox[\"j\", \"TI\"]\) \
should be symbolic constants.";


FF::usage = "\!\(\*RowBox[{\"FF\", \"[\", StyleBox[\"{a1, ..., an}\", \"TI\"], \"]\"}]\) \
represents a trace in the adjoint representation as a product of structure constants: \
\!\(\*RowBox[{SuperscriptBox[\"F\", \
RowBox[{StyleBox[SubscriptBox[\"a\",\"1\"]], \"...\", StyleBox[SubscriptBox[\"a\",\"n\"]]}]],\"\[Congruent]\", \
SuperscriptBox[\"f\", \
RowBox[{StyleBox[SubscriptBox[\"a\",\"1\"]], StyleBox[SubscriptBox[\"i\",\"1\"]],StyleBox[SubscriptBox[\"i\",\"2\"]]}]],
SuperscriptBox[\"f\", \
RowBox[{StyleBox[SubscriptBox[\"a\",\"2\"]], StyleBox[SubscriptBox[\"i\",\"2\"]],StyleBox[SubscriptBox[\"i\",\"3\"]]}]],\"...\",
SuperscriptBox[\"f\", \
RowBox[{StyleBox[SubscriptBox[\"a\",\"n\"]], StyleBox[SubscriptBox[\"i\",\"n\"]],StyleBox[SubscriptBox[\"i\",\"1\"]]}]]}]\). \
The adjoint indices \!\(\*StyleBox[\"a1, ..., an\", \"TI\"]\) should be symbolic constants.";


(* ::Text:: *)
(*Other associated tensors:*)


dF::usage = "\!\(\*RowBox[{\"dF\", \"[\", StyleBox[\"a1, ..., an\", \"TI\"], \"]\"}]\) \
represents a symmetric color tensor in the fundamental representation \
\!\(\*RowBox[{SuperscriptBox[SubscriptBox[\"d\",\"A\"], \
RowBox[{StyleBox[SubscriptBox[\"a\",\"1\"]], \"...\", StyleBox[SubscriptBox[\"a\",\"n\"]]}]]}]\). \
The adjoint indices \!\(\*StyleBox[\"a1, ..., an\", \"TI\"]\) should be symbolic constants.";


dA::usage = "\!\(\*RowBox[{\"dA\", \"[\", StyleBox[\"a1, ..., an\", \"TI\"], \"]\"}]\) \
represents a symmetric color tensor in the adjoint representation \
\!\(\*RowBox[{SuperscriptBox[SubscriptBox[\"d\",\"A\"], \
RowBox[{StyleBox[SubscriptBox[\"a\",\"1\"]], \"...\", StyleBox[SubscriptBox[\"a\",\"n\"]]}]]}]\). \
The adjoint indices \!\(\*StyleBox[\"a1, ..., an\", \"TI\"]\) should be symbolic constants.";


deltaF::usage = "\!\(\*RowBox[{\"deltaF\", \"[\", StyleBox[\"i, j\", \"TI\"], \"]\"}]\) \
represents a Kronecker delta symbol in the fundamental representation \
\!\(\*RowBox[{SubscriptBox[\"\[Delta]\", \
RowBox[{\"i\",\"j\"}]]}]\). \
The fundamental indices \!\(\*StyleBox[\"i\", \"TI\"]\) and \!\(\*StyleBox[\"j\", \"TI\"]\) should be symbolic constants.";


deltaA::usage = "\!\(\*RowBox[{\"deltaA\", \"[\", StyleBox[\"a, b\", \"TI\"], \"]\"}]\) \
represents a Kronecker delta symbol in the adjoint representation \
\!\(\*RowBox[{SuperscriptBox[\"\[Delta]\", \
RowBox[{\"a\",\"b\"}]]}]\). \
The adjoint indices \!\(\*StyleBox[\"a\", \"TI\"]\) and \!\(\*StyleBox[\"b\", \"TI\"]\) should be symbolic constants.";


(* ::Subsubsection:: *)
(*CIFAR Functions*)


(* ::Text:: *)
(*Primary functions:*)


CIFARReduce::usage = "\!\(\*RowBox[{\"CIFARReduce\", \"[\", StyleBox[\"expr\", \"TI\"], \"]\"}]\) \
reduces fully contracted expressions in the color group in \!\(\*StyleBox[\"expr\", \"TI\"]\); \
the result is in terms of Casimir invariants (up to quartic) and dimensions of the fundamental and adjoint represent. The default option \
\!\(\*StyleBox[\"CheckContractions->True\", \"TI\"]\) ensures that  \!\(\*StyleBox[\"expr\", \"TI\"]\) \
has fully contracted color indices, and should not be set to \!\(\*StyleBox[\"False\", \"TI\"]\) \
if attempting to reduce an expression that is not fully contracted, as reduction will proceed assuming all indices are contracted. \
The default option \
\!\(\*StyleBox[\"UseCache->True\", \"TI\"]\) enables a cache that stores previous results for efficient repeated computations. \
The default option \
\!\(\*StyleBox[\"Tabulate->True\", \"TI\"]\) enables the use of tabulated results of various contractions and traces that \
speeds up the computaiton.";


SUncReduce::usage = "\!\(\*RowBox[{\"SUncReduce\", \"[\", StyleBox[\"expr\", \"TI\"], \"]\"}]\) \
reduces fully contracted expressions in the color group in \!\(\*StyleBox[\"expr\", \"TI\"]\), assuming \!\(\*RowBox[{\"SU(\", SubscriptBox[\"n\", \"c\"], \")\"}]\). \
The result is in terms of the number of colors \!\(\*StyleBox[\"nc\", \"TI\"]\). Also expresses Casimir invariants and dimensions of various representations in terms \!\(\*StyleBox[\"nc\", \"TI\"]\). The default option \
\!\(\*StyleBox[\"CheckContractions->True\", \"TI\"]\) ensures that  \!\(\*StyleBox[\"expr\", \"TI\"]\) \
 has fully contracted color indices, and should not be set to \!\(\*StyleBox[\"False\", \"TI\"]\) \
if attempting to reduce an expression that is not fully contracted, as reduction will proceed assuming all indices are contracted. \
The default option \
\!\(\*StyleBox[\"UseCache->True\", \"TI\"]\) enables a cache that stores previous results for efficient repeated computations.";


(* ::Text:: *)
(*Auxiliary functions:*)


StandardizeIndices::usage = "\!\(\*RowBox[{\"StandardizeIndices\", \"[\", StyleBox[\"expr\", \"TI\"], \"]\"}]\) \
standardizes indices in an expanded, fully contracted \!\(\*StyleBox[\"expr\", \"TI\"]\) by replacing all indices with standard indices: \
 \!\(\*StyleBox[\"a$, b$, c$, d$, ...\", \"TI\"]\). \
The default option \
\!\(\*StyleBox[\"CheckContractions->True\", \"TI\"]\) ensures that  \!\(\*StyleBox[\"expr\", \"TI\"]\) \
has fully contracted color indices before proceeding. \
The default option \
\!\(\*StyleBox[\"UseGraphStandardization->True\", \"TI\"]\) enables a procedure that uses a graph canonicalization algorithm to find a cannonical map to standard indices. \
Note that graph standardization is only available for expressions with only fundemental generators \!\(\*StyleBox[\"TT[{a1,...,an},i,j]\", \"TI\"]\) \
and structure constants \!\(\*StyleBox[\"ff[{a,b,c}]\", \"TI\"]\). Other color tensors are not supported.";

ToTTProductForm::usage = "\!\(\*RowBox[{\"ToTTProductForm\", \"[\", StyleBox[\"expr\", \"TI\"], \"]\"}]\) \
identifies products of fundamental generators in \!\(\*StyleBox[\"expr\", \"TI\"]\) \
and expresses them in terms of product objects \!\(\*StyleBox[\"TT[{a1,...,an},i,j]\", \"TI\"]\) \
(i.e. \!\(\*RowBox[{SubscriptBox[SuperscriptBox[\"T\", \
RowBox[{StyleBox[SubscriptBox[\"a\",\"1\"]], \"...\", StyleBox[SubscriptBox[\"a\",\"n\"]]}]],RowBox[{\"i\",\"j\"}]]}]\)).";

ContractTT::usage = "\!\(\*RowBox[{\"ContractTT\", \"[\", StyleBox[\"TT[{a1,...,an},i,j]\", \"TI\"], \"]\"}]\) \
reduces contractions of adjoint indices within \!\(\*StyleBox[\"{a1,...,an}\", \"TI\"]\).";

ContractffTT::usage = "\!\(\*RowBox[{\"ToTTProductForm\", \"[\", StyleBox[\"expr\", \"TI\"], \"]\"}]\) \
reduces contractions of doubly contracted adjoint indices between products of fundamental generators \
and structure constants in \!\(\*StyleBox[\"expr\", \"TI\"]\).";

TraceTT::usage = "\!\(\*RowBox[{\"TraceTT\", \"[\", StyleBox[\"TT[{a1,...,an},i,i]\", \"TI\"], \"]\"}]\) \
reduces the trace of the product of fundamental generators \
\!\(\*SuperscriptBox[\"T\", RowBox[{StyleBox[SubscriptBox[\"a\",\"1\"]], \"...\", StyleBox[SubscriptBox[\"a\",\"n\"]]}]]\) \
in terms of structure constants and symmetric color tensors of lower degree.";

AdjointReduce::usage = "\!\(\*RowBox[{\"AdjointReduce\", \"[\", StyleBox[\"expr\", \"TI\"], \"]\"}]\) \
reduces fully contracted expressions in the color group with only adjoint objects \
(including symmetric color tensors d in either representation) \
in \!\(\*StyleBox[\"expr\", \"TI\"]\).";

ToFFLoopForm::usage = "\!\(\*RowBox[{\"ToFFLoopForm\", \"[\", StyleBox[\"expr\", \"TI\"], \"]\"}]\) \
identifies traces of structure constants in \!\(\*StyleBox[\"expr\", \"TI\"]\) \
and expresses them in terms of loop objects \!\(\*StyleBox[\"FF[{a1,...,an}]\", \"TI\"]\) \
(\!\(i.e. \*SuperscriptBox[\"F\", \
RowBox[{StyleBox[SubscriptBox[\"a\",\"1\"]], \"...\", StyleBox[SubscriptBox[\"a\",\"n\"]]}]]\))";

ContractFF::usage = "\!\(\*RowBox[{\"ContractFF\", \"[\", StyleBox[\"FF[{a1,...,an}]\", \"TI\"], \"]\"}]\) \
reduces contractions of adjoint indices within \!\(\*StyleBox[\"{a1,...,an}\", \"TI\"]\).";

TraceFF::usage = "\!\(\*RowBox[{\"TraceFF\", \"[\", StyleBox[\"FF[{a1,...,an}]\", \"TI\"], \"]\"}]\) \
reduces the adjoint loop \
\!\(\*SuperscriptBox[\"F\", RowBox[{StyleBox[SubscriptBox[\"a\",\"1\"]], \"...\", StyleBox[SubscriptBox[\"a\",\"n\"]]}]]\) \
in terms of structure constants and symmetric color tensors of lower degree.";

StrF::usage = "\!\(\*RowBox[{\"StrF\", \"[\", StyleBox[\"{a1,...,an}\", \"TI\"], \"]\"}]\) \
returns the explicit symmetrized trace in the fundamental representation: \
\!\(\*RowBox[{\"Str[\",SuperscriptBox[\"t\", SubscriptBox[\"a\",\"1\"]], \"... \", SuperscriptBox[\"t\", SubscriptBox[\"a\",\"n\"]],\"]\"}]\).";

StrA::usage = "\!\(\*RowBox[{\"StrA\", \"[\", StyleBox[\"{a1,...,an}\", \"TI\"], \"]\"}]\) \
returns the explicit symmetrized trace in the adjoint representation: \
\!\(\*RowBox[{SuperscriptBox[\"i\",\"-n\"],\"Str[\",SuperscriptBox[\"F\", \
RowBox[{StyleBox[SubscriptBox[\"a\",\"1\"]], \"...\", StyleBox[SubscriptBox[\"a\",\"n\"]]}]],\"]\"}]\) \
in terms of structure constants.";


(* ::Text:: *)
(*Cache handling functions:*)


LoadCIFARReduceCache::usage = "\!\(\*RowBox[{\"LoadCIFARReduceCache\", \"[\", StyleBox[\"\\\"filename\\\"\", \"TI\"], \"]\"}]\) \
loads a cache for \!\(\*StyleBox[\"CIFARReduce\", \"TI\"]\) from \!\(\*StyleBox[\"filename\", \"TI\"]\).";


ExportCIFARReduceCache::usage = "\!\(\*RowBox[{\"ExportCIFARReduceCache\", \"[\", StyleBox[\"\\\"filename\\\"\", \"TI\"], \"]\"}]\) \
exports the current cache for \!\(\*StyleBox[\"CIFARReduce\", \"TI\"]\) to \!\(\*StyleBox[\"filename\", \"TI\"]\).";


LoadSUncReduceCache::usage = "\!\(\*RowBox[{\"LoadSUncReduceCache\", \"[\", StyleBox[\"\\\"filename\\\"\", \"TI\"], \"]\"}]\) \
loads a cache for \!\(\*StyleBox[\"SUncReduce\", \"TI\"]\) from \!\(\*StyleBox[\"filename\", \"TI\"]\).";


ExportSUncReduceCache::usage = "\!\(\*RowBox[{\"ExportSUncReduceCache\", \"[\", StyleBox[\"\\\"filename\\\"\", \"TI\"], \"]\"}]\) \
exports the current cache for \!\(\*StyleBox[\"SUncReduce\", \"TI\"]\) to \!\(\*StyleBox[\"filename\", \"TI\"]\).";


(* ::Text:: *)
(*Options for public functions:*)


CheckContractions::usage =
"Option of \!\(\*StyleBox[\"CIFARReduce\", \"TI\"]\), \
\!\(\*StyleBox[\"SUncReduce\", \"TI\"]\), \
and \!\(\*StyleBox[\"StandardizeIndices\", \"TI\"]\) \
that controls whether all indices are checked to be properly contracted. \
The default value is \!\(\*StyleBox[\"True\", \"TI\"]\). \
\!\(\*StyleBox[\"CheckContractions\", \"TI\"]\) should not be set to \!\(\*StyleBox[\"False\", \"TI\"]\) \
if attempting to reduce an expression that is not fully contracted, \
as reduction will proceed assuming all indices are contracted.";


UseCache::usage =
"Option of \!\(\*StyleBox[\"CIFARReduce\", \"TI\"]\) and \
\!\(\*StyleBox[\"SUncReduce\", \"TI\"]\) \
that controls whether results are cached for future repeat evaluations. \
The default value is \!\(\*StyleBox[\"True\", \"TI\"]\).";


Tabulate::usage =
"Option that enables the use of tabulated results for various \
contractions or traces to speed up intermediate computations.\
\!\(\*StyleBox[\"Tabulate\", \"TI\"]\) is an option of the \
following functions: \!\(\*StyleBox[\"CIFARReduce\", \"TI\"]\), \
\!\(\*StyleBox[\"AdjointReduce\", \"TI\"]\), \
\!\(\*StyleBox[\"TraceTT\", \"TI\"]\), and \
\!\(\*StyleBox[\"TraceFF\", \"TI\"]\).";


UseGraphStandardization::usage =
"Option of \!\(\*StyleBox[\"StandardizeIndices\", \"TI\"]\), \ 
that enables a procedure that uses a graph canonicalization algorithm to find a cannonical map to standard indices.\
The default value is \!\(\*StyleBox[\"True\", \"TI\"]\).";
