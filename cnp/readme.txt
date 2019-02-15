This is CNPInduce, the synthesizer for CNP.

Use loader.pl as the main entry point for CNP synthesizer, such as:
  swipl loader.pl

Use goal synthesize(Prog, Valence, Examples, NegExamples) to start.
  Prog: a variable for the program. Can be unbound such as P,
    so the synthesizer will bind it to a program. Or it can be
    partially bound such as ande(P, Q) if you know the top operator
    will be ande.
  Valence: valence for the program with its arguments.
    For example: [a:in, b:in]
  Examples: a list of positive examples for the program, for example:
    [[a:5, b:4], [a:4.1, b:4]]
  NegExamples: a list of negative examples for the program, for example:
    [[a:3.9, b:4]]

When the goal is run, it will start binding P to different programs, where
  the shorter programs are suggested first.

  ?- synthesize(P, [a:in, b:in], [[a:5, b:4], [a:4.1, b:4]], [[a:3.9, b:4]]).
  Attempting depth=1
  P = gt ;
  P = gte ;

To add component predicates to be available to the synthesizer, add them with:
  libPredicate(pred_name, Body, Valences).
where Body is a CNP program. You will need to add every valid valence for the
program as well. These need to be in a library file that starts with directive:
  :- multifile libPredicate/3.
  libPredicate(greaterThan1, proj(ande(const(b, 1), gt), [a->number]), [[number:in]]).
  libPredicate(lessThanOrEq2, proj(ande(const(a, 2), gt), [b->number]), [[number:in]]).

Once these are typed in the console or loaded from a file using 'consult', then
synthesizer will locate them:
  for X>1
  synthesize(P, [number:in], [[number:1.1]], [[number:1.0]]).
  for 2>=X
  synthesize(P, [number:in], [[number:1.9], [number:2.0]], [[number:2.1]]).
  for 2>=X>1
  synthesize(P, [number:in], [[number:1.1], [number:1.5], [number:2.0]], [[number:1.0], [number:2.1]]).

Hit Space to see other suggestions. Hit Enter to stop search.
Write "halt." and hit Enter to quit.

Alternatively: jobFromLocalFile(file.pl) or jobFromAbsoluteFile(../path/to/file.pl). 
