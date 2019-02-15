
valenceElementary(isNil, [nil:out]).
valenceElementary(isNil, [nil:in]).
valenceElementary(id, [a:in, b:in]).
% valenceElementary(id, [a:out, b:in]).
% valenceElementary(id, [a:in, b:out]).
valenceElementary(cons, [a:in, b:in, ab:out]).
valenceElementary(cons, [a:in, b:out, ab:in]).
valenceElementary(cons, [a:in, b:in, ab:in]).
valenceElementary(cons, [a:out, b:in, ab:in]).
valenceElementary(cons, [a:out, b:out, ab:in]).
valenceElementary(gt, [a:in, b:in]).
valenceElementary(gte, [a:in, b:in]).
valenceElementary(lt, [a:in, b:in]).
valenceElementary(lte, [a:in, b:in]).
valenceElementary(add, [a:in, b:in, c:out]).

% valenceIif(ValenceIif, ValenceP, ValenceQR) :- fail.
valenceIif([a:in, o:out], [a:in], [o:out]).
valenceIif([a:in, b:in, o:out], [a:in, b:in], [o:out]).
valenceIif([a:in, b:in, c:in, o:out], [a:in, b:in, c:in], [o:out]).
valenceIif([a:in, b:in, c:in, d:in, o:out], [a:in, b:in, c:in, d:in], [o:out]).

% valenceFoldr(ValenceFoldr, ValenceP, ValenceQ)

valenceFoldr([a0:in,  as:in,  b:out], [a:in,  b:in, ab:out], [a:in,  b:out]).
valenceFoldr([a0:in,  as:in,  b:out], [a:in,  b:in, ab:out], [a:out, b:out]).
% valenceFoldr([a0:in,  as:out, b:out], [a:in,  b:in, ab:out], [a:in,  b:out]).
% valenceFoldr([a0:in,  as:out, b:out], [a:in,  b:in, ab:out], [a:out, b:out]).
valenceFoldr([a0:out, as:in,  b:out], [a:in,  b:in, ab:out], [a:in,  b:out]).
valenceFoldr([a0:out, as:in,  b:out], [a:in,  b:in, ab:out], [a:out, b:out]).
% valenceFoldr([a0:out, as:out, b:out], [a:in,  b:in, ab:out], [a:in,  b:out]).
% valenceFoldr([a0:out, as:out, b:out], [a:in,  b:in, ab:out], [a:out, b:out]).
valenceFoldr([a0:in,  as:in,  b:out], [a:out, b:in, ab:out], [a:out, b:out]).
% valenceFoldr([a0:in,  as:out, b:out], [a:out, b:in, ab:out], [a:out, b:out]).
valenceFoldr([a0:out, as:in,  b:out], [a:out, b:in, ab:out], [a:out, b:out]).
% valenceFoldr([a0:out, as:out, b:out], [a:out, b:in, ab:out], [a:out, b:out]).
% valenceFoldr(_, _, _) :- fail.

% valenceNatrec(NatrecValence, PValence, QValence)
% valenceNatrec([a0:in, as:in, b:out], [a:in, b:in, ab:out], [a:in, b:out]).
% valenceNatrec([a0:in, as:in, b:out], [b:in, ab:out], [b:out]).
%

% valenceFoldr2(Foldr2Valence, PValence, QValence)
valenceFoldr2([as:in, b:out], [a:in,  b:in,  ab:out], [b:in] ).
valenceFoldr2([as:in, b:out], [a:in,  b:in,  ab:out], [b:out]).
% valenceFoldr2([as:in, b:out], [a:in,  b:out, ab:out], [b:in] ).
% valenceFoldr2([as:in, b:out], [a:in,  b:out, ab:out], [b:out]).
valenceFoldr2([as:in, b:out], [a:out, b:in,  ab:out], [b:in] ).
valenceFoldr2([as:in, b:out], [a:out, b:in,  ab:out], [b:out]).
% valenceFoldr2([as:in, b:out], [a:out, b:out, ab:out], [b:in] ).
% valenceFoldr2([as:in, b:out], [a:out, b:out, ab:out], [b:out]).
% valenceFoldr2(_, _, _) :- fail.
