
:- begin_tests(cnp).

test(id_succeeds_identical) :-
  cnp(id, [a:0.33, b:0.33]).

test(id_succeeds_assignment) :-
  cnp(id, [a:0.33, b:B]),
