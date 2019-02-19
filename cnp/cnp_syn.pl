<<<<<<< HEAD
:- use_module(library(lists)).
:- use_module(library(aggregate)).
:- use_module(library(clpfd)).
:- multifile libPredicate/3.
:- multifile jobValence/1.
:- multifile jobConstant/1.
:- multifile jobObservable/2.

constant(max_height, 6).

jobFromLocalFile(FilenameLocal) :-
  absolute_file_name(FilenameLocal, Filename),
  jobFromAbsoluteFile(Filename).

jobFromAbsoluteFile(FilenameAbsolute) :-
  consult(FilenameAbsolute),
  once(jobValence(Valence)),
  findall(Observable, jobObservable(Observable, true), PosExamples),
  findall(Observable, jobObservable(Observable, false), NegExamples),
  synthesize(P, Valence, PosExamples, NegExamples),
  write(P),nl,
  write('(m)ore or (b)reak?'),
  get_single_char(Response),
  nl,
  (Response=98, break).

synthesize(Prog, Valence, Examples, NegExamples) :-
  searchLogInitialize,
  constant(max_height, N),
  range(1, N, MaxHeight),
  nl, write('Attempting depth='), writeln(MaxHeight),
  syn(Prog, [], MaxHeight, Valence, Examples),
  testExamplesNeg(Prog, NegExamples).

% elementary predicate
syn(Pred, _, MaxHeight, ValencePred, Examples) :-
  MaxHeight>=1,
  valenceElementary(Pred, ValencePred),
  searchLogProgress(Pred, MaxHeight, ValencePred),
  testExamplesPos(Pred, Examples).

% library predicate
syn(Pred, _, MaxHeight, ValencePred, Examples) :-
  MaxHeight>=1,
  valenceLibrary(Pred, ValencePred),
  searchLogProgress(Pred, MaxHeight, ValencePred),
  testExamplesPos(Pred, Examples).

% job constants defined as jobConstant(c_0, 0.0).
syn(Pred, _, MaxHeight, Valence, Examples) :-
  MaxHeight>=1,
  (Valence=[ArgName:in]; Valence=[ArgName:out]),
  jobConstant(ConstValue),
  foreach(member(M, Examples), M=[ArgName:ConstValue]),
  Pred=const(ArgName, ConstValue).

syn(gtValue(N, ConstValue), _, MaxHeight, [N:in], Examples) :-
  MaxHeight>=1,
  jobConstant(ConstValue),
  number(ConstValue),
  forall(member([N:V], Examples), (number(V), V>ConstValue)).

syn(gteValue(N, ConstValue), _, MaxHeight, [N:in], Examples) :-
  MaxHeight>=1,
  jobConstant(ConstValue),
  number(ConstValue),
  forall(member([N:V], Examples), (number(V), V>=ConstValue)).

syn(ltValue(N, ConstValue), _, MaxHeight, [N:in], Examples) :-
  MaxHeight>=1,
  jobConstant(ConstValue),
  number(ConstValue),
  forall(member([N:V], Examples), (number(V), V<ConstValue)).

syn(lteValue(N, ConstValue), _, MaxHeight, [N:in], Examples) :-
  MaxHeight>=1,
  jobConstant(ConstValue),
  number(ConstValue),
  forall(member([N:V], Examples), (number(V), V=<ConstValue)).

syn(iif(P, Q, R), _, MaxHeight, ValenceIif, Examples) :-
  MaxHeight>=2,
  SubMaxHeight is MaxHeight-1,
  valenceIif(ValenceIif, ValenceP, ValenceQR),
  syn_iif_filterPExamples(ValenceP, ValenceQR, Examples, PPos, PNeg, Q, R),
  ground(Q), ground(R),
  syn(P, iif, SubMaxHeight, ValenceP, PPos),
  testExamplesNeg(P, PNeg).


syn(ore(P,Q), ParentOp, MaxHeight, ValenceOr, Examples) :-
  (ParentOp=[]; ParentOp=ore),
  MaxHeight>=2,
  SubMaxHeight is MaxHeight-1,
  ValenceP=ValenceOr, ValenceQ=ValenceOr,
  searchLogProgress("ore", MaxHeight, ValenceOr),
  append(ExamplesP, ExamplesQ, Examples),
  ExamplesP\=[], ExamplesQ\=[],
  syn(P, ore, SubMaxHeight, ValenceP, ExamplesP),
  syn(Q, ore, SubMaxHeight, ValenceQ, ExamplesQ),
  P\=Q.

syn(ande(P, Q), _, MaxHeight, ValenceAnd, Examples) :-
  MaxHeight>=2,
  SubMaxHeight is MaxHeight-1,
  valenceAnde(ValenceAnd, ValenceP, ValenceQ),
  % print([valenceAnde, ValenceAnd, ValenceP, ValenceQ, example, Examples]), nl,
  searchLogProgress("ande", MaxHeight, ValenceAnd),
  % argNames(NamesP, ValenceP),
  % argNames(NamesQ, ValenceQ),
  disjoinExamples(ValenceP, Examples, ExamplesP),
  syn(P, ande, SubMaxHeight, ValenceP, ExamplesP),
  disjoinExamples(ValenceQ, Examples, ExamplesQ),
  syn(Q, ande, SubMaxHeight, ValenceQ, ExamplesQ),
  P\=Q.

syn(proj(Q,Projs), ParentOp, MaxHeight, ValenceProj, Examples) :-
  ParentOp\=proj,
  MaxHeight>=2,
  SubMaxHeight is MaxHeight-1,
  valenceProj(ValenceQ, Projs, ValenceProj),
  searchLogProgress("proj", MaxHeight, ValenceProj),
  argNamesDifferent(ValenceQ),
  unprojExamplesToValence(Examples, Projs, ValenceProj, ValenceQ, ExamplesUnproj),
  syn(Q, proj, SubMaxHeight, ValenceQ, ExamplesUnproj).

% syn(foldr2(P,Q), ParentOp, MaxHeight, ValenceFoldr2, Examples) :-
%   MaxHeight>=2,
%   SubMaxHeight is MaxHeight-1,
%   ParentOp\=ore,
%   valenceFoldr2(ValenceFoldr2, ValenceP, ValenceQ),
%   searchLogProgress("foldr2", MaxHeight, ValenceFoldr2),
%   syn_foldr2(P, ValenceP, Q, ValenceQ, SubMaxHeight, Examples).
%
% syn(foldr(P,Q), ParentOp, MaxHeight, ValenceFoldr, Examples) :-
%   MaxHeight>=2,
%   SubMaxHeight is MaxHeight-1,
%   ParentOp \= ore, ParentOp \= foldr,
%   %dif(ParentOp, ore), dif(ParentOp, foldr),
%   valenceFoldr(ValenceFoldr, ValenceP, ValenceQ),
%   searchLogProgress("foldr", MaxHeight, ValenceFoldr),
%   syn_foldr(P, ValenceP, Q, ValenceQ, SubMaxHeight, Examples).

% syn_iif(P, ValenceP, Q, R, ValenceQR, SubMaxHeight, [Eqr|ExamplesP], [Eqr|ExamplesQR]) :-
%   syn(P, iif, SubMaxHeight, ValenceP, [E]),

% syn_iif_find_QRConstants(Valence, _, _, _,) :- Valence\=[o:out], throw('Valence for QR needs to be [o:out].').
% syn_iif_find_QRConstants(_, [], _, _,).
% syn_iif_find_QRConstants([o:out], [[o:V]|Extail], QConstant, RConstant) :-
%   (V=QConstant, V=RConstant),
%   syn_iif_find_QRConstants([o:out], Extail, QConstant, RConstant).


%syn_iif_filterPExamples(ValenceP, ValenceQR, Examples, PPos, PNeg, Q, R),

%syn_iif_filterPExamples(PValence, QRValence, Examples, PPositiveExamples, PNegativeExamples, QConst, RConst) :-
syn_iif_filterPExamples(_, _, [], [], [], _, _).
syn_iif_filterPExamples(PValence, QRValence, [E|Examples], PPos, PNeg, QConstant, RConstant) :-
  disjoinATupleToAComponent(PValence, E, PExample),
  disjoinATupleToAComponent([o:out], E, QRExample),
  QRExample=[o:Value],
  ((Value=QConstant, PPos=[PExample|PPosTail], syn_iif_filterPExamples(PValence, QRValence, Examples, PPosTail, PNeg, QConstant, RConstant));
   (Value=RConstant, PNeg=[PExample|PNegTail], syn_iif_filterPExamples(PValence, QRValence, Examples, PPos, PNegTail, QConstant, RConstant))).



% syn_foldr2(_, _, Q, ValenceQ, SubMaxHeight, [[as:[],b:W]]) :-
%   syn(Q, foldr2, SubMaxHeight, ValenceQ, [[b:W]]).
% syn_foldr2(P, ValenceP, Q, ValenceQ, SubMaxHeight, [[as:[],b:W]|Examples]) :-
%   syn(Q, foldr2, SubMaxHeight, ValenceQ, [[b:W]]),
%   syn_foldr2(P, ValenceP, Q, ValenceQ, SubMaxHeight, Examples).
% syn_foldr2(P, ValenceP, Q, ValenceQ, SubMaxHeight, [[as:[X|T],b:W]|Examples]) :-
%   syn_foldr2(P, ValenceP, Q, ValenceQ, SubMaxHeight, [[as:T,b:Z]|Examples]),
%   syn(P, foldr2, SubMaxHeight, ValenceP, [[a:X,b:Z,ab:W]]).
%
% syn_foldr(_, _, _, _, _, []).
% syn_foldr(P, ValP, Q, ValQ, SubMaxHeight, [[a0:A0, as:[], b:B]|ExRest]) :-
%   syn(Q, foldr, SubMaxHeight, ValQ, [[a:A0, b:B]]),
%   syn_foldr(P, ValP, Q, ValQ, SubMaxHeight, ExRest).
% syn_foldr(P, ValP, Q, ValQ, SubMaxHeight, [[a0:A0, as:[A|As], b:AB]|ExRest]) :-
%   syn_foldr(P, ValP, Q, ValQ, SubMaxHeight, [[a0:A0, as:As, b:B]|ExRest]),
%   syn(P, foldr, SubMaxHeight, ValP, [[a:A, b:B, ab:AB]]).

testExamplesPos(_, []).
testExamplesPos(P, [E|Er]) :- once(cnp(P, E)), testExamplesPos(P, Er).

testExamplesNeg(_, []).
testExamplesNeg(P, [E|Er]) :- \+once(cnp(P, E)), testExamplesNeg(P, Er).

rangeList(Lo, Up, []) :- Lo>Up.
rangeList(Lo, Up, [Lo|Ns]) :- Lo=<Up, Lo1 is Lo+1, rangeList(Lo1, Up, Ns).

range(Lo, Up, N) :- rangeList(Lo, Up, Ns), member(N, Ns).

%disjoinExamples(Examples, NamesP, NamesQ, ExamplesP, ExamplesQ).
% disjoinExamples([], _, _, [], []).
% disjoinExamples([E|Examples], NamesP, NamesQ, [Ep|ExamplesP], [Eq|ExamplesQ]) :-
%   splitArgs(E, NamesP, NamesQ, Ep, Eq),
%   disjoinExamples(Examples, NamesP, NamesQ, ExamplesP, ExamplesQ).

% disjoinExamples(ComponentValence, Example, ComponentExamples).
disjoinExamples(_, [], []).
disjoinExamples(ComponentValence, [E|Etail], [CE|CEtail]) :-
  disjoinATupleToAComponent(ComponentValence, E, CE),
  disjoinExamples(ComponentValence, Etail, CEtail).


% disjoinATupleToAComponent(ComponentValence, Example, ComponentExample) :- print([disjoinATupleToAComponent, ComponentValence, Example, ComponentExample]), nl, fail.
disjoinATupleToAComponent([], _, []).
disjoinATupleToAComponent([_|_], [], _) :- throw('disjoinATupleToAComponent: There are some names in component valence that did not exist in the original example.').
disjoinATupleToAComponent([N:_|ValenceTail], Example, [N:V|ComponentExampleTail]) :-
  select(N:V, Example, ExampleRest),
  disjoinATupleToAComponent(ValenceTail, ExampleRest, ComponentExampleTail).

% map unprojToValence to a list of examples.
unprojExamplesToValence([], _, _, _, []).
unprojExamplesToValence([E|Examples], Projs, ValenceProj, ValenceUnproj, [Eun|ExamplesUnproj]) :-
  unprojToValence(E, Projs, ValenceProj, ValenceUnproj, Eun),
  unprojExamplesToValence(Examples, Projs, ValenceProj, ValenceUnproj, ExamplesUnproj).

unprojToValence([], [], [], [], []).
unprojToValence(ArgsProj, Projs, ValenceProj, [Norig:IO|ValenceOrig], [Norig:V|ArgsOrig]) :-
  select(Norig->Nproj, Projs, ProjsRest),
  select(Nproj:V, ArgsProj, ArgsProjRest),
  select(Nproj:IO, ValenceProj, ValenceProjRest),
  unprojToValence(ArgsProjRest, ProjsRest, ValenceProjRest, ValenceOrig, ArgsOrig).
unprojToValence(ArgsProj, Projs, ValenceProj, [_:out|ValenceOrig], [_:_|ArgsOrig]) :-
  unprojToValence(ArgsProj, Projs, ValenceProj, ValenceOrig, ArgsOrig).

argNamesDifferent([]).
argNamesDifferent([A:_|Arest]) :-
  nameIsDiffToAllArgNames(A, Arest),
  argNamesDifferent(Arest).

nameIsDiffToAllArgNames(_, []).
nameIsDiffToAllArgNames(A, [B:_|Arest]) :- dif(A, B), nameIsDiffToAllArgNames(A, Arest).

valenceLibrary(Pred, ValencePred) :-
  libPredicate(Pred, _, Valences),
  member(ValencePred, Valences).

searchLogInitialize :-
  constant(max_height, N),
  repeatTermInList(N, ' ', List),
  nb_setval(lastSearchPath, List).

searchLogProgress(_, _, _).
% searchLogProgress(Operator, Height, Valence) :-
%   constant(max_height, MaxHeight),
%   nb_getval(lastSearchPath, Path),
%   makeUnboundList(MaxHeight, NewPath),
%   CurDepth is MaxHeight - Height,
%   unifyFirstNInList(CurDepth, Path, NewPath),
%   nth0(CurDepth, NewPath, Operator),
%   write("  "),
%   write(NewPath),
%   write('  '),
%   write(Valence),
%   write('  '),
%   write(Height), nl,
%   nb_setval(lastSearchPath, NewPath).

unifyFirstNInList(0, _, _).
unifyFirstNInList(N, [], _) :- N>0, throw('There is not any more items in the left list to unify.' + N).
unifyFirstNInList(N, _, []) :- N>0, throw('There is not any more items in the right list to unify.' + N).
unifyFirstNInList(N, [H|T1], [H|T2]) :-
  N>0,
  Nm is N-1,
  unifyFirstNInList(Nm, T1, T2).

% firstNInList(0, _, []).
% firstNInList(N, [], _) :- N>0, throw('There is not enough items in the lh list:' + N).
% firstNInList(N, [Lh|Lt], L2) :-
%   N>0,
%   Nm1 is N-1,
%   L2=[Lh|L2t],
%   firstNInList(Nm1, Lt, L2t).

makeUnboundList(0, []).
makeUnboundList(N, [_|T]) :-
  N>0,
  Nm1 is N-1,
  makeUnboundList(Nm1, T).

repeatTermInList(0, _, []).
repeatTermInList(N, E, [E|Tail]) :-
  N>0,
  Nm is N-1,
  repeatTermInList(Nm, E, Tail).
%
% repeatString(String, 1, RepeatedString) :- RepeatedString=String.
% repeatString(String, N, RepeatedString) :-
%   N>1,
%   Nm is N-1,
%   repeatString(String, Nm, RepeatedNm),
%   string_concat(String, RepeatedNm, RepeatedString).
=======
:- use_module(library(lists)).
:- use_module(library(aggregate)).
:- use_module(library(clpfd)).

:- multifile jobValence/1.
:- multifile jobConstant/1.
:- multifile jobObservable/2.

constant(max_height, 6).

jobFromLocalFile(FilenameLocal) :-
  absolute_file_name(FilenameLocal, Filename),
  jobFromAbsoluteFile(Filename).

jobFromAbsoluteFile(FilenameAbsolute) :-
  consult(FilenameAbsolute),
  once(jobValence(Valence)),
  findall(Observable, jobObservable(Observable, true), PosExamples),
  findall(Observable, jobObservable(Observable, false), NegExamples),
  synthesize(P, Valence, PosExamples, NegExamples),
  write(P),nl,
  write('(m)ore or (b)reak?'),
  get_single_char(Response),
  nl,
  (Response=98, break).

synthesize(Prog, Valence, Examples, NegExamples) :-
  searchLogInitialize,
  constant(max_height, N),
  range(1, N, MaxHeight),
  nl, write('Attempting depth='), writeln(MaxHeight),
  syn(Prog, [], MaxHeight, Valence, Examples),
  testExamplesNeg(Prog, NegExamples).

% elementary predicate
syn(Pred, _, MaxHeight, ValencePred, Examples) :-
  MaxHeight>=1,
  valenceElementary(Pred, ValencePred),
  searchLogProgress(Pred, MaxHeight, ValencePred),
  testExamplesPos(Pred, Examples).

% library predicate
syn(Pred, _, MaxHeight, ValencePred, Examples) :-
  MaxHeight>=1,
  valenceLibrary(Pred, ValencePred),
  searchLogProgress(Pred, MaxHeight, ValencePred),
  testExamplesPos(Pred, Examples).

% job constants defined as jobConstant(c_0, 0.0).
syn(Pred, _, MaxHeight, Valence, Examples) :-
  MaxHeight>=1,
  (Valence=[ArgName:in]; Valence=[ArgName:out]),
  jobConstant(ConstValue),
  foreach(member(M, Examples), M=[ArgName:ConstValue]),
  Pred=const(ArgName, ConstValue).

syn(gtValue(N, ConstValue), _, MaxHeight, [N:in], Examples) :-
  MaxHeight>=1,
  jobConstant(ConstValue),
  number(ConstValue),
  forall(member([N:V], Examples), (number(V), V>ConstValue)).

syn(gteValue(N, ConstValue), _, MaxHeight, [N:in], Examples) :-
  MaxHeight>=1,
  jobConstant(ConstValue),
  number(ConstValue),
  forall(member([N:V], Examples), (number(V), V>=ConstValue)).

syn(ltValue(N, ConstValue), _, MaxHeight, [N:in], Examples) :-
  MaxHeight>=1,
  jobConstant(ConstValue),
  number(ConstValue),
  forall(member([N:V], Examples), (number(V), V<ConstValue)).

syn(lteValue(N, ConstValue), _, MaxHeight, [N:in], Examples) :-
  MaxHeight>=1,
  jobConstant(ConstValue),
  number(ConstValue),
  forall(member([N:V], Examples), (number(V), V=<ConstValue)).

syn(iif(P, Q, R), _, MaxHeight, ValenceIif, Examples) :-
  MaxHeight>=2,
  SubMaxHeight is MaxHeight-1,
  valenceIif(ValenceIif, ValenceP, ValenceQR),
  syn_iif_filterPExamples(ValenceP, ValenceQR, Examples, PPos, PNeg, Q, R),
  ground(Q), ground(R),
  syn(P, iif, SubMaxHeight, ValenceP, PPos),
  testExamplesNeg(P, PNeg).


syn(ore(P,Q), ParentOp, MaxHeight, ValenceOr, Examples) :-
  (ParentOp=[]; ParentOp=ore),
  MaxHeight>=2,
  SubMaxHeight is MaxHeight-1,
  ValenceP=ValenceOr, ValenceQ=ValenceOr,
  searchLogProgress("ore", MaxHeight, ValenceOr),
  append(ExamplesP, ExamplesQ, Examples),
  ExamplesP\=[], ExamplesQ\=[],
  syn(P, ore, SubMaxHeight, ValenceP, ExamplesP),
  syn(Q, ore, SubMaxHeight, ValenceQ, ExamplesQ),
  P\=Q.

syn(ande(P, Q), _, MaxHeight, ValenceAnd, Examples) :-
  MaxHeight>=2,
  SubMaxHeight is MaxHeight-1,
  valenceAnde(ValenceAnd, ValenceP, ValenceQ),
  % print([valenceAnde, ValenceAnd, ValenceP, ValenceQ, example, Examples]), nl,
  searchLogProgress("ande", MaxHeight, ValenceAnd),
  disjoinExamples(ValenceP, Examples, ExamplesP),
  syn(P, ande, SubMaxHeight, ValenceP, ExamplesP),
  disjoinExamples(ValenceQ, Examples, ExamplesQ),
  syn(Q, ande, SubMaxHeight, ValenceQ, ExamplesQ),
  P\=Q.

syn(proj(Q,Projs), ParentOp, MaxHeight, ValenceProj, Examples) :-
  ParentOp\=proj,
  MaxHeight>=2,
  SubMaxHeight is MaxHeight-1,
  valenceProj(ValenceQ, Projs, ValenceProj),
  searchLogProgress("proj", MaxHeight, ValenceProj),
  argNamesDifferent(ValenceQ),
  unprojExamplesToValence(Examples, Projs, ValenceProj, ValenceQ, ExamplesUnproj),
  syn(Q, proj, SubMaxHeight, ValenceQ, ExamplesUnproj).

syn(foldr2(P,Q), ParentOp, MaxHeight, ValenceFoldr2, Examples) :-
  MaxHeight>=2,
  SubMaxHeight is MaxHeight-1,
  ParentOp\=ore,
  valenceFoldr2(ValenceFoldr2, ValenceP, ValenceQ),
  searchLogProgress("foldr2", MaxHeight, ValenceFoldr2),
  syn_foldr2(P, ValenceP, Q, ValenceQ, SubMaxHeight, Examples).

syn(foldr(P,Q), ParentOp, MaxHeight, ValenceFoldr, Examples) :-
  MaxHeight>=2,
  SubMaxHeight is MaxHeight-1,
  ParentOp \= ore, ParentOp \= foldr,
  %dif(ParentOp, ore), dif(ParentOp, foldr),
  valenceFoldr(ValenceFoldr, ValenceP, ValenceQ),
  searchLogProgress("foldr", MaxHeight, ValenceFoldr),
  syn_foldr(P, ValenceP, Q, ValenceQ, SubMaxHeight, Examples).

%syn_iif_filterPExamples(PValence, QRValence, Examples, PPositiveExamples, PNegativeExamples, QConst, RConst) :-
syn_iif_filterPExamples(_, _, [], [], [], _, _).
syn_iif_filterPExamples(PValence, QRValence, [E|Examples], PPos, PNeg, QConstant, RConstant) :-
  disjoinATupleToAComponent(PValence, E, PExample),
  disjoinATupleToAComponent([o:out], E, QRExample),
  QRExample=[o:Value],
  ((Value=QConstant, PPos=[PExample|PPosTail], syn_iif_filterPExamples(PValence, QRValence, Examples, PPosTail, PNeg, QConstant, RConstant));
   (Value=RConstant, PNeg=[PExample|PNegTail], syn_iif_filterPExamples(PValence, QRValence, Examples, PPos, PNegTail, QConstant, RConstant))).

syn_foldr2(_, _, Q, ValenceQ, SubMaxHeight, [[as:[],b:W]]) :-
  syn(Q, foldr2, SubMaxHeight, ValenceQ, [[b:W]]).
syn_foldr2(P, ValenceP, Q, ValenceQ, SubMaxHeight, [[as:[],b:W]|Examples]) :-
  syn(Q, foldr2, SubMaxHeight, ValenceQ, [[b:W]]),
  syn_foldr2(P, ValenceP, Q, ValenceQ, SubMaxHeight, Examples).
syn_foldr2(P, ValenceP, Q, ValenceQ, SubMaxHeight, [[as:[X|T],b:W]|Examples]) :-
  syn_foldr2(P, ValenceP, Q, ValenceQ, SubMaxHeight, [[as:T,b:Z]|Examples]),
  syn(P, foldr2, SubMaxHeight, ValenceP, [[a:X,b:Z,ab:W]]).

syn_foldr(_, _, _, _, _, []).
syn_foldr(P, ValP, Q, ValQ, SubMaxHeight, [[a0:A0, as:[], b:B]|ExRest]) :-
  syn(Q, foldr, SubMaxHeight, ValQ, [[a:A0, b:B]]),
  syn_foldr(P, ValP, Q, ValQ, SubMaxHeight, ExRest).
syn_foldr(P, ValP, Q, ValQ, SubMaxHeight, [[a0:A0, as:[A|As], b:AB]|ExRest]) :-
  syn_foldr(P, ValP, Q, ValQ, SubMaxHeight, [[a0:A0, as:As, b:B]|ExRest]),
  syn(P, foldr, SubMaxHeight, ValP, [[a:A, b:B, ab:AB]]).

testExamplesPos(_, []).
testExamplesPos(P, [E|Er]) :- once(cnp(P, E)), testExamplesPos(P, Er).

testExamplesNeg(_, []).
testExamplesNeg(P, [E|Er]) :- \+once(cnp(P, E)), testExamplesNeg(P, Er).

rangeList(Lo, Up, []) :- Lo>Up.
rangeList(Lo, Up, [Lo|Ns]) :- Lo=<Up, Lo1 is Lo+1, rangeList(Lo1, Up, Ns).

range(Lo, Up, N) :- rangeList(Lo, Up, Ns), member(N, Ns).

%disjoinExamples(Examples, NamesP, NamesQ, ExamplesP, ExamplesQ).
% disjoinExamples([], _, _, [], []).
% disjoinExamples([E|Examples], NamesP, NamesQ, [Ep|ExamplesP], [Eq|ExamplesQ]) :-
%   splitArgs(E, NamesP, NamesQ, Ep, Eq),
%   disjoinExamples(Examples, NamesP, NamesQ, ExamplesP, ExamplesQ).

% disjoinExamples(ComponentValence, Example, ComponentExamples).
disjoinExamples(_, [], []).
disjoinExamples(ComponentValence, [E|Etail], [CE|CEtail]) :-
  disjoinATupleToAComponent(ComponentValence, E, CE),
  disjoinExamples(ComponentValence, Etail, CEtail).


% disjoinATupleToAComponent(ComponentValence, Example, ComponentExample) :- print([disjoinATupleToAComponent, ComponentValence, Example, ComponentExample]), nl, fail.
disjoinATupleToAComponent([], _, []).
disjoinATupleToAComponent([_|_], [], _) :- throw('disjoinATupleToAComponent: There are some names in component valence that did not exist in the original example.').
disjoinATupleToAComponent([N:_|ValenceTail], Example, [N:V|ComponentExampleTail]) :-
  select(N:V, Example, ExampleRest),
  disjoinATupleToAComponent(ValenceTail, ExampleRest, ComponentExampleTail).

% map unprojToValence to a list of examples.
unprojExamplesToValence([], _, _, _, []).
unprojExamplesToValence([E|Examples], Projs, ValenceProj, ValenceUnproj, [Eun|ExamplesUnproj]) :-
  unprojToValence(E, Projs, ValenceProj, ValenceUnproj, Eun),
  unprojExamplesToValence(Examples, Projs, ValenceProj, ValenceUnproj, ExamplesUnproj).

unprojToValence([], [], [], [], []).
unprojToValence(ArgsProj, Projs, ValenceProj, [Norig:IO|ValenceOrig], [Norig:V|ArgsOrig]) :-
  select(Norig->Nproj, Projs, ProjsRest),
  select(Nproj:V, ArgsProj, ArgsProjRest),
  select(Nproj:IO, ValenceProj, ValenceProjRest),
  unprojToValence(ArgsProjRest, ProjsRest, ValenceProjRest, ValenceOrig, ArgsOrig).
unprojToValence(ArgsProj, Projs, ValenceProj, [_:out|ValenceOrig], [_:_|ArgsOrig]) :-
  unprojToValence(ArgsProj, Projs, ValenceProj, ValenceOrig, ArgsOrig).

argNamesDifferent([]).
argNamesDifferent([A:_|Arest]) :-
  nameIsDiffToAllArgNames(A, Arest),
  argNamesDifferent(Arest).

nameIsDiffToAllArgNames(_, []).
nameIsDiffToAllArgNames(A, [B:_|Arest]) :- dif(A, B), nameIsDiffToAllArgNames(A, Arest).

valenceLibrary(Pred, ValencePred) :-
  libPredicate(Pred, _, Valences),
  member(ValencePred, Valences).

searchLogInitialize :-
  constant(max_height, N),
  repeatTermInList(N, ' ', List),
  nb_setval(lastSearchPath, List).

searchLogProgress(_, _, _).
% searchLogProgress(Operator, Height, Valence) :-
%   constant(max_height, MaxHeight),
%   nb_getval(lastSearchPath, Path),
%   makeUnboundList(MaxHeight, NewPath),
%   CurDepth is MaxHeight - Height,
%   unifyFirstNInList(CurDepth, Path, NewPath),
%   nth0(CurDepth, NewPath, Operator),
%   write("  "),
%   write(NewPath),
%   write('  '),
%   write(Valence),
%   write('  '),
%   write(Height), nl,
%   nb_setval(lastSearchPath, NewPath).

unifyFirstNInList(0, _, _).
unifyFirstNInList(N, [], _) :- N>0, throw('There is not any more items in the left list to unify.' + N).
unifyFirstNInList(N, _, []) :- N>0, throw('There is not any more items in the right list to unify.' + N).
unifyFirstNInList(N, [H|T1], [H|T2]) :-
  N>0,
  Nm is N-1,
  unifyFirstNInList(Nm, T1, T2).

makeUnboundList(0, []).
makeUnboundList(N, [_|T]) :-
  N>0,
  Nm1 is N-1,
  makeUnboundList(Nm1, T).

repeatTermInList(0, _, []).
repeatTermInList(N, E, [E|Tail]) :-
  N>0,
  Nm is N-1,
  repeatTermInList(Nm, E, Tail).
>>>>>>> master
