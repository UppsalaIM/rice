:- multifile libPredicate/3.

% libPredicate(zero, const(zero, 0), [[zero:in], [zero:out]]).
% libPredicate(greaterThan1, proj(ande(const(b, 1), gt), [a->number]), [[number:in]]).
% libPredicate(lessThanOrEq2, proj(ande(const(a, 2), gte), [b->number]), [[number:in]]).



%
% % defPredicate(appendExp,  ore(ande(proj(isNil, [nil->xs]), proj(id, [a->ys, b->zs]))
% %                             ,proj(ande(proj(cons, [a->headx, b->tailx, ab->xs])
% %                                       ,proj(append, [xs->tailx, ys, zs->inlist])
% %                                       ,proj(cons, [a->headx, b->inlist, ab->zs])),
% %                                   [xs, ys, zs]))).
% %
% % defPredicate(frConsID, foldr(cons,id)).
% %
% % % test predicate for append.
% % % used as: cnp(append, [xs:[1], ys:[2,3], zs:X]).
% % %      or: cnp(append, [xs:X,   ys:Y,     zs:[1,2,3,4]]).
% % defPredicate(append, proj(foldr(cons,id),[as->xs, b0->ys, b->zs])).
% %
% % defPredicate(reverseFL, ande(foldl(cons,id), isNil/[nil->b0]) / [as->xs, b->ys]).
% %
%
%
% valencePredicate(asList, [a:in, aNil:out]).
% defPredicate(asList, proj(ande(cons, proj(isNil, [nil->b])), [a->a, ab->aNil])).

% valencePredicate(gtePass, [a:in, b:in, pass:out]).
% defPredicate(gtePass, ore(ande(gte,
%                                proj(asList, [a->a, aNil->pass])),
%                           ande(proj(gt, [a->b, b->a]),
%                                proj(isNil, [nil->pass])))).
%
% valencePredicate(ltPass, [a:in, b:in, pass:out]).
% defPredicate(ltPass, ore(ande(proj(gt, [b->a, a->b]),
%                               proj(asList, [a->a, aNil->pass])),
%                          ande(gte,
%                               proj(isNil, [nil->pass])))).
% %
% valencePredicate(append, [xs:in, ys:in, zs:out]).
% defPredicate(append, proj(foldr(cons,id),[as->xs, b0->ys, b->zs])).
%
%
% defPredicate(filterGte, ande(foldr(ande(ande( cons / [ab->b, a->elem, b->listSoFar],
%                                               gtePass / [a, b->elem, pass]),
%                                         ande( append / [xs->pass, ys->listSoFar, zs->listNew],
%                                               cons / [a->elem, b->listNew, ab]))
%                                       /[a, b, ab],
%                                     proj(asList, [a, aNil->b])) %base case couples-in the threshold
%                                 /[b0->elem, as->list, b->thrAndGteList],
%                               cons / [ab->thrAndGteList, b->listGte]) %uncouples the threshold from the result
%                            /[elem, list, listGte]   ).

%
% defPredicate(inc, ande(proj(cons, [b, a->nil, ab]), isNil)/[b,ab]).
% valencePredicate(inc, [b:in, ab:out]).
%
% defPredicate(isOne, ande(cons, isNil/[nil->a], isNil/[nil->b])/[ab->a]).
% valencePredicate(isOne, [a:out]).
%
% defPredicate(plus, proj(foldr(cons, id), [a0->a, as->b, b->ab])).
% valencePredicate(plus, [a:in, b:in, ab:out]).
%
% defPredicate(insEnd, proj(foldr(cons, proj(asList, [a->a, aNil->b])), [a0->a,  (as)->b, b->ab])).
% valencePredicate(insEnd, [a:in, b:in, ab:out]).
%

% defPredicate(man, ore(const(name, adam),
%                       const(name, peter),
%                       const(name, paul))).
% valencePredicate(man, [name:out]).
% valencePredicate(man, [name:in]).
%
% defPredicate(woman, ore(const(name, marry),
%                         const(name, eve))).
% valencePredicate(woman, [name:out]).
% valencePredicate(woman, [name:in]).
%
% defPredicate(parent, ore(ande(const(parent, adam), const(child, peter)),
%                          ande(const(parent, eve), const(child, peter)),
%                          ande(const(parent, adam), const(child, paul)),
%                          ande(const(parent, marry), const(child, paul)))).
% valencePredicate(parent, [parent:in, child:out]).
% valencePredicate(parent, [parent:out, child:in]).
% valencePredicate(parent, [parent:in, child:in]).
% valencePredicate(parent, [parent:out, child:out]).
%
%
