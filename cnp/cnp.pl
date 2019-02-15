%:- use_module(library(sets)).
?- use_module(library(lists)).
:- op(500, xfx, [->,:,/]).
:- multifile libPredicate/3.
:- include("valences_generated.pl").
:- include("valences_written.pl").


% CNP elementary predicates
cnp(true, []).
cnp(isNil, [nil:[]]).
cnp(const(N, C), [N:C]).
cnp(id, [a:X, b:X]).
cnp(cons, [a:X, b:Y, ab:[X|Y]]).

% CNP natural numbers peano
% cnp(gt, [a:[[]|_], b:[]]).
% cnp(gt, [a:[[]|Na], b:[[]|Nb]]) :- cnp(gt, [a:Na, b:Nb]).
% cnp(gte, [a:A, b:A]).
% cnp(gte, [a:A, b:B]) :- A\=B, cnp(gt, [a:A, b:B]).

% cnp natural numbers
cnp(gt, [a:X, b:Y]) :- (number(X), number(Y)) -> (X>Y) ; fail.
cnp(gte, [a:X, b:Y]) :- (number(X), number(Y)) -> (X>=Y) ; fail.
cnp(lt, [a:X, b:Y]) :- (number(X), number(Y)) -> (X<Y) ; fail.
cnp(lte, [a:X, b:Y]) :- (number(X), number(Y)) -> (X=<Y) ; fail.
cnp(add, [a:X, b:Y, c:Z]) :- (number(X), number(Y)) -> (Z is X+Y) ; fail.

cnp(debug(Mess), [obj:Obj]) :- write(Mess), write(":"), writeln(Obj).

cnp(gtValue(N, V), [N:X]) :- (number(V)) -> (X>V) ; fail.
cnp(gteValue(N, V), [N:X]) :- (number(V)) -> (X>=V) ; fail.
cnp(ltValue(N, V), [N:X]) :- (number(V)) -> (X<V) ; fail.
cnp(lteValue(N, V), [N:X]) :- (number(V)) -> (X=<V) ; fail.

% if iif has 3 arguments [a:in, b:in, o:out]  a and b go into conditional P:[a:in, b:in] and o is output, one of the constants Q or R.
cnp(iif(P, QVal, RVal), Args) :-
  names(P, NamesP),
  splitArgs(Args, NamesP, [o], ArgsP, ArgsQR),
  (cnp(P, ArgsP) -> (ArgsQR=[o:QVal]) ; (ArgsQR=[o:RVal])).



cnp(ande(A, B), Args) :-
  names(A, NamesA), names(B, NamesB),
  names(ande(A, B), NamesAB),
  subtract(NamesAB, NamesB, NamesOnlyA),
  subtract(NamesAB, NamesOnlyA, NamesBOrd),
  splitArgs(Args, NamesA, NamesBOrd, ArgsA, ArgsBOrd),
  reorderArgs(ArgsBOrd, NamesB, ArgsB),
  cnp(A, ArgsA),
  cnp(B, ArgsB).
cnp(ande(A,B,C), Args) :- cnp(ande(ande(A,B),C), Args).
cnp(ande(A,B,C,D), Args) :- cnp(ande(ande(A,B), ande(C,D)), Args).
cnp(ande(A,B,C,D,E), Args) :- cnp(ande(ande(A,B), ande(C,D), E), Args).

cnp(ore(P, Q), Args) :-
  names(P, NamesP),
  names(Q, NamesQ),
  names(ore(P, Q), NamesPQ),
  subtract(NamesPQ, NamesQ, NamesOnlyP),
  subtract(NamesPQ, NamesOnlyP, NamesQOrd),
  splitArgs(Args, NamesP, NamesQOrd, ArgsP, ArgsQOrd),
  reorderArgs(ArgsQOrd, NamesQ, ArgsQ),
  (cnp(P, ArgsP); (cnp(Q, ArgsQ))).
cnp(ore(P,Q,R), Args) :- cnp(ore(ore(P,Q),R), Args).
cnp(ore(P,Q,R,S), Args) :- cnp(ore(ore(P,Q),ore(R,S)), Args).
cnp(ore(P,Q,R,S,T), Args) :- cnp(ore(ore(P,Q),ore(R,S),T), Args).

cnp(Q/Projs, Args) :-
  cnp(proj(Q, Projs), Args).
cnp(proj(Q, Projs), Args) :-
  names(Q, NamesQ),
  namesInProj(Projs, SourceNames, _),
  renameArgs(ArgsToProject, Projs, Args),
  expand(ArgsToProject, SourceNames, NamesQ, ArgsQ),
  %print('expanded'+Q+Args+ArgsQ),
  cnp(Q, ArgsQ).

% foldr/foldl:
% - The argument names for the base case (binary) are [a, b]
% - The argument names for the recursive case (ternary) are [a, b, ab]
% - The resulting predicates argument names are [as, b0, b]
cnp(foldr(_, Q), [a0:A0, as:[], b:B]) :-
  cnp(Q, [a:A0, b:B]).
cnp(foldr(P, Q), [a0:A0, as:[A|As], b:B]) :-
  cnp(foldr(P, Q), [a0:A0, as:As, b:Bmid]),
  cnp(P, [a:A, b:Bmid, ab:B]).

cnp(foldl(_, Q), [a0:A0, as:[], b:B]) :-
  cnp(Q, [a:A0, b:B]).
cnp(foldl(P, Q), [a0:A0, as:[A|As], b:B]) :-
  cnp(P, [a:A, b:A0, ab:Bmid]),
  cnp(foldl(P, Q), [a0:Bmid, as:As, b:B]).

% Constraints for using foldr2:
% - The argument name for Q is only [b]
% - The argument names for P are [a, b, ab]
% - The resulting arguments are [as, b]
cnp(foldr2(_, Q), [as:[], b:B]) :-
  cnp(Q, [b:B]).
cnp(foldr2(P, Q), [as:[A|As], b:B]) :-
  cnp(foldr2(P, Q), [as:As, b:Bmid]),
  cnp(P, [a:A, b:Bmid, ab:B]).

cnp(natrec(_, Q), [a0:A0, as:[], b:B]) :-
  cnp(Q, [a:A0, b:B]).
cnp(natrec(P, Q), [a0:A0, as:[[]|As], b:B]) :-
  cnp(natrec(P,Q), [a0:A0, as:As, b:Bmid]),
  cnp(P, [a:A0, b:Bmid, ab:B]).
% variant with binary recursive case and unary base case
cnp(natrec(_, Q), [a0:_, as:[], b:B]) :-
  cnp(Q, [b:B]).
cnp(natrec(P, Q), [a0:A0, as:[[]|As], b:B]) :-
  cnp(natrec(P,Q), [a0:A0, as:As, b:Bmid]),
  cnp(P, [b:Bmid, ab:B]).


% user predicates are defined with libPredicate(name, Body).
cnp(Pred, Args) :-
  atomic(Pred),
  libPredicate(Pred, Body, _),
  cnp(Body, Args).

% cnp with unordered arguments. it's more efficient to implement this
% only as a user-facing separate predicate, as below.
cunp(E, UArgs) :- cnp(E, Args), permutation(Args, UArgs).

% projNames(Projs, SourceNames, NewNames)
namesInProj([], [], []).
namesInProj([A->B|Projs], [A|ARest], [B|BRest]) :- namesInProj(Projs, ARest, BRest).
namesInProj([A|Projs], SourceNames, NewNames) :-
  atomic(A),
  namesInProj([A->A|Projs], SourceNames, NewNames).

renameArgs([], [], []).
renameArgs([A:V|SourceRest], Projs, [B:V|NewArgsRest]) :-
  select(A->B, Projs, ProjsRest),
  renameArgs(SourceRest, ProjsRest, NewArgsRest).
renameArgs(SourceArgs, [A|ProjRest], NewArgs) :-
  atomic(A),
  renameArgs(SourceArgs, [A->A|ProjRest], NewArgs).

%reorderArgs(Args, NamesOrd, ArgsOrd)
reorderArgs([], [], []).
reorderArgs(Args, [N|NamesOrd], [N:V|ArgsOrd]) :-
  select(N:V, Args, ArgsRest),
  reorderArgs(ArgsRest, NamesOrd, ArgsOrd).

% calculating the Names for a cnp expression E.
% names(E, Names).
names(true, []).
names(isNil, [nil]).
names(const(N, _), [N]).
names(id, [a, b]).
names(cons, [a, b, ab]).

%names(nat, n).
names(gt, [a, b]).
names(gte, [a, b]).
% names(diff, [a,b]).
names(debug(_), [obj]).

names(gtValue(N, _), [N]).
names(gteValue(N, _), [N]).
names(ltValue(N, _), [N]).
names(lteValue(N, _), [N]).

names(Q/Projs, Names) :- names(proj(Q,Projs), Names).
names(proj(_, []), []).
names(proj(_, [_->B|Projs]), [B|Names]) :- names(proj(_, Projs), Names).
names(proj(_, [A|Projs]), [A|Names]) :- atomic(A),
                                        names(proj(_, Projs), Names).

names(ande(A,B), Names) :- unionNames(A, B, Names).
names(ande(A,B,C), Names) :- unionNames(ande(A,B), C, Names).
names(ande(A,B,C,D), Names) :- unionNames(ande(A,B), ande(C,D), Names).
names(ande(A,B,C,D,E), Names) :- unionNames(ande(A,B,C), ande(D,E), Names).

names(ore(A,B), Names) :- unionNames(A, B, Names).
names(ore(A,B,C), Names) :- unionNames(ore(A,B), C, Names).
names(ore(A,B,C,D), Names) :- unionNames(ore(A,B), ore(C,D), Names).
names(ore(A,B,C,D,E), Names) :- unionNames(ore(A,B,C), ore(D,E), Names).

names(foldr(_,_), [a0, as, b]).
names(natrec(_,_), [a0, as, b]).
names(foldr2(_,_), [as, b]).
names(foldl(_,_), [a0, as, b]).

names(Pred, Names) :- atomic(Pred), libPredicate(Pred, Body, _), names(Body, Names).

% argNames(Names, Args)
argNames([], []).
argNames([N|Nrest], [N:_|Arest]) :- argNames(Nrest, Arest).


% unifySeqArgs(ArgsA, ArgsB, Args).
unifySeqArgs([], [], []).
unifySeqArgs([], [N:V|ArgsB], [N:V|Args]) :- unifySeqArgs([], ArgsB, Args).
unifySeqArgs([N:V|ArgsA], [], [N:V|Args]) :- unifySeqArgs(ArgsA, [], Args).
unifySeqArgs([N:V|ArgsA], [N:V|ArgsB], [N:V|Args]) :- unifySeqArgs(ArgsA, ArgsB, Args).
unifySeqArgs([N:V|ArgsA], [Nb:Vb|ArgsB], [N:V|Args]) :- N\=Nb, unifySeqArgs(ArgsA, [Nb:Vb|ArgsB], Args).


% splitArgs(Args, NamesA, NamesB, ArgsA, ArgsB).
% requires namesa and namesb in the same order as they are in args.
% splitArgs([a:2, b:1], [b], [a,b], [b:1], [a:2, b:1]).
% for debugging:
% splitArgs(Args, NamesA, NamesB, _, _) :- print(['splitArgs', Args, NamesA, NamesB]), nl, fail.
splitArgs([], [], [], [], []).
splitArgs([], [_|_], [], _, _) :- throw("splitArgs: The args in the LH name list wasn't in order.").
splitArgs([], [], [_|_], _, _) :- throw("splitArgs:The args in the RH name list wasn't in order.").
splitArgs([_|_], [], [], _, _) :- throw("splitArgs:There were some arg names that weren't on either LH or RH names.").
splitArgs([N:V|Args], [], [N|NamesB], [], [N:V|ArgsB]) :- splitArgs(Args, [], NamesB, [], ArgsB).
splitArgs([N:V|Args], [N|NamesA], [], [N:V|ArgsA], []) :- splitArgs(Args, NamesA, [], ArgsA, []).
splitArgs([N:V|Args], [N|NamesA], [N|NamesB], [N:V|ArgsA], [N:V|ArgsB]) :- splitArgs(Args, NamesA, NamesB, ArgsA, ArgsB).
splitArgs([N:V|Args], [N|NamesA], [Nb|NamesB], [N:V|ArgsA], ArgsB) :- N\=Nb, splitArgs(Args, NamesA, [Nb|NamesB], ArgsA, ArgsB).
splitArgs([N:V|Args], [Na|NamesA], [N|NamesB], ArgsA, [N:V|ArgsB]) :- N\=Na, splitArgs(Args, [Na|NamesA], NamesB, ArgsA, ArgsB).

unionNames(A, B, Names) :-
  names(A, NamesA),
  names(B, NamesB),
  subtract(NamesB, NamesA, NamesBOnly),
  append(NamesA, NamesBOnly, Names).

% % onlyArgsNamed(Args, Names, ArgsWithNames)
% % requires the names are in the same order
% onlyArgsNamed([], [], []).
% onlyArgsNamed([_:_|Args], [], []) :- onlyArgsNamed(Args, [], []).
% onlyArgsNamed([N:A|Args], [N|Names], [N:A|ArgsN]) :- onlyArgsNamed(Args, Names, ArgsN).
% onlyArgsNamed([N:_|Args], [N1|Names], ArgsN) :- N\=N1, onlyArgsNamed(Args, [N1|Names], ArgsN).

% expands the given Args to a new ExpandedArgs
% that contains an unbound arg for every new name.
% expand(Args, ArgNames, Names, ExpandedArgs)
% !!! does not work in reverse direction.
expand(Args, ArgNames, [], []) :- argNames(ArgNames, Args).
expand(Args, ArgNames, [N|Names], [N:V|EArgs]) :- member(N:V, Args), expand(Args, ArgNames, Names, EArgs).
expand(Args, ArgNames, [N|Names], [N:_|EArgs]) :- \+member(N:_, Args), expand(Args, ArgNames, Names, EArgs).
