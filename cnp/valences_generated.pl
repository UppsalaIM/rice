% valenceProj(SourceValence, ProjItems, ProjValence)
valenceProj([A:in], [A->U], [U:in]).
valenceProj([A:out], [A->U], [U:out]).
valenceProj([A:in, B:in], [A->U, B->V], [U:in, V:in]).
valenceProj([A:in, B:out], [A->U, B->V], [U:in, V:out]).
valenceProj([A:out, B:in], [A->U, B->V], [U:out, V:in]).
valenceProj([A:out, B:out], [A->U, B->V], [U:out, V:out]).
valenceProj([A:in, B:in, C:in], [A->U, B->V, C->X], [U:in, V:in, X:in]).
valenceProj([A:in, B:in, C:out], [A->U, B->V, C->X], [U:in, V:in, X:out]).
valenceProj([A:in, B:out, C:in], [A->U, B->V, C->X], [U:in, V:out, X:in]).
valenceProj([A:in, B:out, C:out], [A->U, B->V, C->X], [U:in, V:out, X:out]).
valenceProj([A:out, B:in, C:in], [A->U, B->V, C->X], [U:out, V:in, X:in]).
valenceProj([A:out, B:in, C:out], [A->U, B->V, C->X], [U:out, V:in, X:out]).
valenceProj([A:out, B:out, C:in], [A->U, B->V, C->X], [U:out, V:out, X:in]).
valenceProj([A:out, B:out, C:out], [A->U, B->V, C->X], [U:out, V:out, X:out]).
% valenceAnde(AndeValence, PValence, QValence)
valenceAnde([A:in], [A:in], [A:in]).
valenceAnde([A:in], [A:in], [A:out]).
valenceAnde([A:in], [A:out], [A:in]).
valenceAnde([A:in], [A:out], [A:out]).
valenceAnde([A:out], [A:out], [A:in]).
valenceAnde([A:out], [A:out], [A:out]).
valenceAnde([A:in], [A:in], [A:in]).
valenceAnde([A:in], [A:in], [A:out]).
valenceAnde([A:in], [A:out], [A:in]).
valenceAnde([A:in], [A:out], [A:out]).
valenceAnde([A:out], [A:out], [A:in]).
valenceAnde([A:out], [A:out], [A:out]).
valenceAnde([A:in, B:in], [A:in], [A:in, B:in]).
valenceAnde([A:in, B:in], [A:in], [A:in, B:out]).
valenceAnde([A:in, B:in], [A:in], [A:out, B:in]).
valenceAnde([A:in, B:in], [A:in], [A:out, B:out]).
valenceAnde([A:in, B:in], [A:out], [A:in, B:in]).
valenceAnde([A:in, B:in], [A:out], [A:in, B:out]).
valenceAnde([A:in, B:in], [A:out], [A:out, B:in]).
valenceAnde([A:in, B:in], [A:out], [A:out, B:out]).
valenceAnde([A:in, B:out], [A:in], [A:in, B:out]).
valenceAnde([A:in, B:out], [A:in], [A:out, B:out]).
valenceAnde([A:in, B:out], [A:out], [A:in, B:out]).
valenceAnde([A:in, B:out], [A:out], [A:out, B:out]).
valenceAnde([A:out, B:in], [A:out], [A:in, B:in]).
valenceAnde([A:out, B:in], [A:out], [A:in, B:out]).
valenceAnde([A:out, B:in], [A:out], [A:out, B:in]).
valenceAnde([A:out, B:in], [A:out], [A:out, B:out]).
valenceAnde([A:out, B:out], [A:out], [A:in, B:out]).
valenceAnde([A:out, B:out], [A:out], [A:out, B:out]).
valenceAnde([A:in, B:in], [A:in, B:in], [A:in]).
valenceAnde([A:in, B:in], [A:in, B:in], [A:out]).
valenceAnde([A:in, B:in], [A:in, B:out], [A:in]).
valenceAnde([A:in, B:in], [A:in, B:out], [A:out]).
valenceAnde([A:in, B:in], [A:out, B:in], [A:in]).
valenceAnde([A:in, B:in], [A:out, B:in], [A:out]).
valenceAnde([A:in, B:in], [A:out, B:out], [A:in]).
valenceAnde([A:in, B:in], [A:out, B:out], [A:out]).
valenceAnde([A:in, B:out], [A:in, B:out], [A:in]).
valenceAnde([A:in, B:out], [A:in, B:out], [A:out]).
valenceAnde([A:in, B:out], [A:out, B:out], [A:in]).
valenceAnde([A:in, B:out], [A:out, B:out], [A:out]).
valenceAnde([A:out, B:in], [A:out, B:in], [A:in]).
valenceAnde([A:out, B:in], [A:out, B:in], [A:out]).
valenceAnde([A:out, B:in], [A:out, B:out], [A:in]).
valenceAnde([A:out, B:in], [A:out, B:out], [A:out]).
valenceAnde([A:out, B:out], [A:out, B:out], [A:in]).
valenceAnde([A:out, B:out], [A:out, B:out], [A:out]).
valenceAnde([A:in, B:in], [A:in, B:in], [B:in]).
valenceAnde([A:in, B:in], [A:in, B:in], [B:out]).
valenceAnde([A:in, B:in], [A:in, B:out], [B:in]).
valenceAnde([A:in, B:in], [A:in, B:out], [B:out]).
valenceAnde([A:in, B:in], [A:out, B:in], [B:in]).
valenceAnde([A:in, B:in], [A:out, B:in], [B:out]).
valenceAnde([A:in, B:in], [A:out, B:out], [B:in]).
valenceAnde([A:in, B:in], [A:out, B:out], [B:out]).
valenceAnde([A:in, B:out], [A:in, B:out], [B:in]).
valenceAnde([A:in, B:out], [A:in, B:out], [B:out]).
valenceAnde([A:in, B:out], [A:out, B:out], [B:in]).
valenceAnde([A:in, B:out], [A:out, B:out], [B:out]).
valenceAnde([A:out, B:in], [A:out, B:in], [B:in]).
valenceAnde([A:out, B:in], [A:out, B:in], [B:out]).
valenceAnde([A:out, B:in], [A:out, B:out], [B:in]).
valenceAnde([A:out, B:in], [A:out, B:out], [B:out]).
valenceAnde([A:out, B:out], [A:out, B:out], [B:in]).
valenceAnde([A:out, B:out], [A:out, B:out], [B:out]).
valenceAnde([A:in, B:in], [B:in], [A:in, B:in]).
valenceAnde([A:in, B:in], [B:in], [A:in, B:out]).
valenceAnde([A:in, B:in], [B:in], [A:out, B:in]).
valenceAnde([A:in, B:in], [B:in], [A:out, B:out]).
valenceAnde([A:in, B:in], [B:out], [A:in, B:in]).
valenceAnde([A:in, B:in], [B:out], [A:in, B:out]).
valenceAnde([A:in, B:in], [B:out], [A:out, B:in]).
valenceAnde([A:in, B:in], [B:out], [A:out, B:out]).
valenceAnde([A:in, B:out], [B:out], [A:in, B:in]).
valenceAnde([A:in, B:out], [B:out], [A:in, B:out]).
valenceAnde([A:in, B:out], [B:out], [A:out, B:in]).
valenceAnde([A:in, B:out], [B:out], [A:out, B:out]).
valenceAnde([A:out, B:in], [B:in], [A:out, B:in]).
valenceAnde([A:out, B:in], [B:in], [A:out, B:out]).
valenceAnde([A:out, B:in], [B:out], [A:out, B:in]).
valenceAnde([A:out, B:in], [B:out], [A:out, B:out]).
valenceAnde([A:out, B:out], [B:out], [A:out, B:in]).
valenceAnde([A:out, B:out], [B:out], [A:out, B:out]).
valenceAnde([A:in, B:in], [A:in, B:in], [A:in, B:in]).
valenceAnde([A:in, B:in], [A:in, B:in], [A:in, B:out]).
valenceAnde([A:in, B:in], [A:in, B:in], [A:out, B:in]).
valenceAnde([A:in, B:in], [A:in, B:in], [A:out, B:out]).
valenceAnde([A:in, B:in], [A:in, B:out], [A:in, B:in]).
valenceAnde([A:in, B:in], [A:in, B:out], [A:in, B:out]).
valenceAnde([A:in, B:in], [A:in, B:out], [A:out, B:in]).
valenceAnde([A:in, B:in], [A:in, B:out], [A:out, B:out]).
valenceAnde([A:in, B:in], [A:out, B:in], [A:in, B:in]).
valenceAnde([A:in, B:in], [A:out, B:in], [A:in, B:out]).
valenceAnde([A:in, B:in], [A:out, B:in], [A:out, B:in]).
valenceAnde([A:in, B:in], [A:out, B:in], [A:out, B:out]).
valenceAnde([A:in, B:in], [A:out, B:out], [A:in, B:in]).
valenceAnde([A:in, B:in], [A:out, B:out], [A:in, B:out]).
valenceAnde([A:in, B:in], [A:out, B:out], [A:out, B:in]).
valenceAnde([A:in, B:in], [A:out, B:out], [A:out, B:out]).
valenceAnde([A:in, B:out], [A:in, B:out], [A:in, B:in]).
valenceAnde([A:in, B:out], [A:in, B:out], [A:in, B:out]).
valenceAnde([A:in, B:out], [A:in, B:out], [A:out, B:in]).
valenceAnde([A:in, B:out], [A:in, B:out], [A:out, B:out]).
valenceAnde([A:in, B:out], [A:out, B:out], [A:in, B:in]).
valenceAnde([A:in, B:out], [A:out, B:out], [A:in, B:out]).
valenceAnde([A:in, B:out], [A:out, B:out], [A:out, B:in]).
valenceAnde([A:in, B:out], [A:out, B:out], [A:out, B:out]).
valenceAnde([A:out, B:in], [A:out, B:in], [A:in, B:in]).
valenceAnde([A:out, B:in], [A:out, B:in], [A:in, B:out]).
valenceAnde([A:out, B:in], [A:out, B:in], [A:out, B:in]).
valenceAnde([A:out, B:in], [A:out, B:in], [A:out, B:out]).
valenceAnde([A:out, B:in], [A:out, B:out], [A:in, B:in]).
valenceAnde([A:out, B:in], [A:out, B:out], [A:in, B:out]).
valenceAnde([A:out, B:in], [A:out, B:out], [A:out, B:in]).
valenceAnde([A:out, B:in], [A:out, B:out], [A:out, B:out]).
valenceAnde([A:out, B:out], [A:out, B:out], [A:in, B:in]).
valenceAnde([A:out, B:out], [A:out, B:out], [A:in, B:out]).
valenceAnde([A:out, B:out], [A:out, B:out], [A:out, B:in]).
valenceAnde([A:out, B:out], [A:out, B:out], [A:out, B:out]).
valenceAnde([A:in, B:in], [A:in, B:in], [A:in, B:in]).
valenceAnde([A:in, B:in], [A:in, B:in], [A:in, B:out]).
valenceAnde([A:in, B:in], [A:in, B:in], [A:out, B:in]).
valenceAnde([A:in, B:in], [A:in, B:in], [A:out, B:out]).
valenceAnde([A:in, B:in], [A:in, B:out], [A:in, B:in]).
valenceAnde([A:in, B:in], [A:in, B:out], [A:in, B:out]).
valenceAnde([A:in, B:in], [A:in, B:out], [A:out, B:in]).
valenceAnde([A:in, B:in], [A:in, B:out], [A:out, B:out]).
valenceAnde([A:in, B:in], [A:out, B:in], [A:in, B:in]).
valenceAnde([A:in, B:in], [A:out, B:in], [A:in, B:out]).
valenceAnde([A:in, B:in], [A:out, B:in], [A:out, B:in]).
valenceAnde([A:in, B:in], [A:out, B:in], [A:out, B:out]).
valenceAnde([A:in, B:in], [A:out, B:out], [A:in, B:in]).
valenceAnde([A:in, B:in], [A:out, B:out], [A:in, B:out]).
valenceAnde([A:in, B:in], [A:out, B:out], [A:out, B:in]).
valenceAnde([A:in, B:in], [A:out, B:out], [A:out, B:out]).
valenceAnde([A:in, B:out], [A:in, B:out], [A:in, B:in]).
valenceAnde([A:in, B:out], [A:in, B:out], [A:in, B:out]).
valenceAnde([A:in, B:out], [A:in, B:out], [A:out, B:in]).
valenceAnde([A:in, B:out], [A:in, B:out], [A:out, B:out]).
valenceAnde([A:in, B:out], [A:out, B:out], [A:in, B:in]).
valenceAnde([A:in, B:out], [A:out, B:out], [A:in, B:out]).
valenceAnde([A:in, B:out], [A:out, B:out], [A:out, B:in]).
valenceAnde([A:in, B:out], [A:out, B:out], [A:out, B:out]).
valenceAnde([A:out, B:in], [A:out, B:in], [A:in, B:in]).
valenceAnde([A:out, B:in], [A:out, B:in], [A:in, B:out]).
valenceAnde([A:out, B:in], [A:out, B:in], [A:out, B:in]).
valenceAnde([A:out, B:in], [A:out, B:in], [A:out, B:out]).
valenceAnde([A:out, B:in], [A:out, B:out], [A:in, B:in]).
valenceAnde([A:out, B:in], [A:out, B:out], [A:in, B:out]).
valenceAnde([A:out, B:in], [A:out, B:out], [A:out, B:in]).
valenceAnde([A:out, B:in], [A:out, B:out], [A:out, B:out]).
valenceAnde([A:out, B:out], [A:out, B:out], [A:in, B:in]).
valenceAnde([A:out, B:out], [A:out, B:out], [A:in, B:out]).
valenceAnde([A:out, B:out], [A:out, B:out], [A:out, B:in]).
valenceAnde([A:out, B:out], [A:out, B:out], [A:out, B:out]).
valenceAnde([A:in, B:in, C:in], [A:in], [B:in, C:in]).
valenceAnde([A:in, B:in, C:in], [A:in], [B:in, C:out]).
valenceAnde([A:in, B:in, C:in], [A:in], [B:out, C:in]).
valenceAnde([A:in, B:in, C:in], [A:in], [B:out, C:out]).
valenceAnde([A:in, B:in, C:in], [A:out], [B:in, C:in]).
valenceAnde([A:in, B:in, C:in], [A:out], [B:in, C:out]).
valenceAnde([A:in, B:in, C:in], [A:out], [B:out, C:in]).
valenceAnde([A:in, B:in, C:in], [A:out], [B:out, C:out]).
valenceAnde([A:in, B:in, C:out], [A:in], [B:in, C:out]).
valenceAnde([A:in, B:in, C:out], [A:in], [B:out, C:out]).
valenceAnde([A:in, B:in, C:out], [A:out], [B:in, C:out]).
valenceAnde([A:in, B:in, C:out], [A:out], [B:out, C:out]).
valenceAnde([A:in, B:out, C:in], [A:in], [B:out, C:in]).
valenceAnde([A:in, B:out, C:in], [A:in], [B:out, C:out]).
valenceAnde([A:in, B:out, C:in], [A:out], [B:out, C:in]).
valenceAnde([A:in, B:out, C:in], [A:out], [B:out, C:out]).
valenceAnde([A:in, B:out, C:out], [A:in], [B:out, C:out]).
valenceAnde([A:in, B:out, C:out], [A:out], [B:out, C:out]).
valenceAnde([A:out, B:in, C:in], [A:out], [B:in, C:in]).
valenceAnde([A:out, B:in, C:in], [A:out], [B:in, C:out]).
valenceAnde([A:out, B:in, C:in], [A:out], [B:out, C:in]).
valenceAnde([A:out, B:in, C:in], [A:out], [B:out, C:out]).
valenceAnde([A:out, B:in, C:out], [A:out], [B:in, C:out]).
valenceAnde([A:out, B:in, C:out], [A:out], [B:out, C:out]).
valenceAnde([A:out, B:out, C:in], [A:out], [B:out, C:in]).
valenceAnde([A:out, B:out, C:in], [A:out], [B:out, C:out]).
valenceAnde([A:out, B:out, C:out], [A:out], [B:out, C:out]).
valenceAnde([A:in, B:in, C:in], [B:in, C:in], [A:in]).
valenceAnde([A:in, B:in, C:in], [B:in, C:in], [A:out]).
valenceAnde([A:in, B:in, C:in], [B:in, C:out], [A:in]).
valenceAnde([A:in, B:in, C:in], [B:in, C:out], [A:out]).
valenceAnde([A:in, B:in, C:in], [B:out, C:in], [A:in]).
valenceAnde([A:in, B:in, C:in], [B:out, C:in], [A:out]).
valenceAnde([A:in, B:in, C:in], [B:out, C:out], [A:in]).
valenceAnde([A:in, B:in, C:in], [B:out, C:out], [A:out]).
valenceAnde([A:in, B:in, C:out], [B:in, C:out], [A:in]).
valenceAnde([A:in, B:in, C:out], [B:in, C:out], [A:out]).
valenceAnde([A:in, B:in, C:out], [B:out, C:out], [A:in]).
valenceAnde([A:in, B:in, C:out], [B:out, C:out], [A:out]).
valenceAnde([A:in, B:out, C:in], [B:out, C:in], [A:in]).
valenceAnde([A:in, B:out, C:in], [B:out, C:in], [A:out]).
valenceAnde([A:in, B:out, C:in], [B:out, C:out], [A:in]).
valenceAnde([A:in, B:out, C:in], [B:out, C:out], [A:out]).
valenceAnde([A:in, B:out, C:out], [B:out, C:out], [A:in]).
valenceAnde([A:in, B:out, C:out], [B:out, C:out], [A:out]).
valenceAnde([A:out, B:in, C:in], [B:in, C:in], [A:out]).
valenceAnde([A:out, B:in, C:in], [B:in, C:out], [A:out]).
valenceAnde([A:out, B:in, C:in], [B:out, C:in], [A:out]).
valenceAnde([A:out, B:in, C:in], [B:out, C:out], [A:out]).
valenceAnde([A:out, B:in, C:out], [B:in, C:out], [A:out]).
valenceAnde([A:out, B:in, C:out], [B:out, C:out], [A:out]).
valenceAnde([A:out, B:out, C:in], [B:out, C:in], [A:out]).
valenceAnde([A:out, B:out, C:in], [B:out, C:out], [A:out]).
valenceAnde([A:out, B:out, C:out], [B:out, C:out], [A:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in], [C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in], [C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in], [C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in], [C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out], [C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out], [C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out], [C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out], [C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in], [C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in], [C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in], [C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in], [C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out], [C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out], [C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out], [C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in], [C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in], [C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out], [C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out], [C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in], [C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in], [C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out], [C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in], [C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in], [C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out], [C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out], [C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in], [C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in], [C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out], [C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in], [C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out], [C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in], [C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out], [C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out], [C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out], [C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out], [C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out], [C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out], [C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out], [C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out], [C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out], [C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out], [C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out], [C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out], [C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out], [C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out], [C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in], [C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in], [C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in], [C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in], [C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out], [C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out], [C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out], [C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in], [C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in], [C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out], [C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in], [C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in], [C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out], [C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in], [C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out], [C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out], [C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out], [C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out], [C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out], [C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out], [C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [C:in, D:in], [A:in, B:in]).
valenceAnde([A:in, B:in, C:in, D:in], [C:in, D:in], [A:in, B:out]).
valenceAnde([A:in, B:in, C:in, D:in], [C:in, D:in], [A:out, B:in]).
valenceAnde([A:in, B:in, C:in, D:in], [C:in, D:in], [A:out, B:out]).
valenceAnde([A:in, B:in, C:in, D:in], [C:in, D:out], [A:in, B:in]).
valenceAnde([A:in, B:in, C:in, D:in], [C:in, D:out], [A:in, B:out]).
valenceAnde([A:in, B:in, C:in, D:in], [C:in, D:out], [A:out, B:in]).
valenceAnde([A:in, B:in, C:in, D:in], [C:in, D:out], [A:out, B:out]).
valenceAnde([A:in, B:in, C:in, D:in], [C:out, D:in], [A:in, B:in]).
valenceAnde([A:in, B:in, C:in, D:in], [C:out, D:in], [A:in, B:out]).
valenceAnde([A:in, B:in, C:in, D:in], [C:out, D:in], [A:out, B:in]).
valenceAnde([A:in, B:in, C:in, D:in], [C:out, D:in], [A:out, B:out]).
valenceAnde([A:in, B:in, C:in, D:in], [C:out, D:out], [A:in, B:in]).
valenceAnde([A:in, B:in, C:in, D:in], [C:out, D:out], [A:in, B:out]).
valenceAnde([A:in, B:in, C:in, D:in], [C:out, D:out], [A:out, B:in]).
valenceAnde([A:in, B:in, C:in, D:in], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:in, B:in, C:in, D:out], [C:in, D:out], [A:in, B:in]).
valenceAnde([A:in, B:in, C:in, D:out], [C:in, D:out], [A:in, B:out]).
valenceAnde([A:in, B:in, C:in, D:out], [C:in, D:out], [A:out, B:in]).
valenceAnde([A:in, B:in, C:in, D:out], [C:in, D:out], [A:out, B:out]).
valenceAnde([A:in, B:in, C:in, D:out], [C:out, D:out], [A:in, B:in]).
valenceAnde([A:in, B:in, C:in, D:out], [C:out, D:out], [A:in, B:out]).
valenceAnde([A:in, B:in, C:in, D:out], [C:out, D:out], [A:out, B:in]).
valenceAnde([A:in, B:in, C:in, D:out], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:in, B:in, C:out, D:in], [C:out, D:in], [A:in, B:in]).
valenceAnde([A:in, B:in, C:out, D:in], [C:out, D:in], [A:in, B:out]).
valenceAnde([A:in, B:in, C:out, D:in], [C:out, D:in], [A:out, B:in]).
valenceAnde([A:in, B:in, C:out, D:in], [C:out, D:in], [A:out, B:out]).
valenceAnde([A:in, B:in, C:out, D:in], [C:out, D:out], [A:in, B:in]).
valenceAnde([A:in, B:in, C:out, D:in], [C:out, D:out], [A:in, B:out]).
valenceAnde([A:in, B:in, C:out, D:in], [C:out, D:out], [A:out, B:in]).
valenceAnde([A:in, B:in, C:out, D:in], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:in, B:in, C:out, D:out], [C:out, D:out], [A:in, B:in]).
valenceAnde([A:in, B:in, C:out, D:out], [C:out, D:out], [A:in, B:out]).
valenceAnde([A:in, B:in, C:out, D:out], [C:out, D:out], [A:out, B:in]).
valenceAnde([A:in, B:in, C:out, D:out], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:in, B:out, C:in, D:in], [C:in, D:in], [A:in, B:out]).
valenceAnde([A:in, B:out, C:in, D:in], [C:in, D:in], [A:out, B:out]).
valenceAnde([A:in, B:out, C:in, D:in], [C:in, D:out], [A:in, B:out]).
valenceAnde([A:in, B:out, C:in, D:in], [C:in, D:out], [A:out, B:out]).
valenceAnde([A:in, B:out, C:in, D:in], [C:out, D:in], [A:in, B:out]).
valenceAnde([A:in, B:out, C:in, D:in], [C:out, D:in], [A:out, B:out]).
valenceAnde([A:in, B:out, C:in, D:in], [C:out, D:out], [A:in, B:out]).
valenceAnde([A:in, B:out, C:in, D:in], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:in, B:out, C:in, D:out], [C:in, D:out], [A:in, B:out]).
valenceAnde([A:in, B:out, C:in, D:out], [C:in, D:out], [A:out, B:out]).
valenceAnde([A:in, B:out, C:in, D:out], [C:out, D:out], [A:in, B:out]).
valenceAnde([A:in, B:out, C:in, D:out], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:in, B:out, C:out, D:in], [C:out, D:in], [A:in, B:out]).
valenceAnde([A:in, B:out, C:out, D:in], [C:out, D:in], [A:out, B:out]).
valenceAnde([A:in, B:out, C:out, D:in], [C:out, D:out], [A:in, B:out]).
valenceAnde([A:in, B:out, C:out, D:in], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:in, B:out, C:out, D:out], [C:out, D:out], [A:in, B:out]).
valenceAnde([A:in, B:out, C:out, D:out], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:out, B:in, C:in, D:in], [C:in, D:in], [A:out, B:in]).
valenceAnde([A:out, B:in, C:in, D:in], [C:in, D:in], [A:out, B:out]).
valenceAnde([A:out, B:in, C:in, D:in], [C:in, D:out], [A:out, B:in]).
valenceAnde([A:out, B:in, C:in, D:in], [C:in, D:out], [A:out, B:out]).
valenceAnde([A:out, B:in, C:in, D:in], [C:out, D:in], [A:out, B:in]).
valenceAnde([A:out, B:in, C:in, D:in], [C:out, D:in], [A:out, B:out]).
valenceAnde([A:out, B:in, C:in, D:in], [C:out, D:out], [A:out, B:in]).
valenceAnde([A:out, B:in, C:in, D:in], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:out, B:in, C:in, D:out], [C:in, D:out], [A:out, B:in]).
valenceAnde([A:out, B:in, C:in, D:out], [C:in, D:out], [A:out, B:out]).
valenceAnde([A:out, B:in, C:in, D:out], [C:out, D:out], [A:out, B:in]).
valenceAnde([A:out, B:in, C:in, D:out], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:out, B:in, C:out, D:in], [C:out, D:in], [A:out, B:in]).
valenceAnde([A:out, B:in, C:out, D:in], [C:out, D:in], [A:out, B:out]).
valenceAnde([A:out, B:in, C:out, D:in], [C:out, D:out], [A:out, B:in]).
valenceAnde([A:out, B:in, C:out, D:in], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:out, B:in, C:out, D:out], [C:out, D:out], [A:out, B:in]).
valenceAnde([A:out, B:in, C:out, D:out], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:out, B:out, C:in, D:in], [C:in, D:in], [A:out, B:out]).
valenceAnde([A:out, B:out, C:in, D:in], [C:in, D:out], [A:out, B:out]).
valenceAnde([A:out, B:out, C:in, D:in], [C:out, D:in], [A:out, B:out]).
valenceAnde([A:out, B:out, C:in, D:in], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:out, B:out, C:in, D:out], [C:in, D:out], [A:out, B:out]).
valenceAnde([A:out, B:out, C:in, D:out], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:out, B:out, C:out, D:in], [C:out, D:in], [A:out, B:out]).
valenceAnde([A:out, B:out, C:out, D:in], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:out, B:out, C:out, D:out], [C:out, D:out], [A:out, B:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:in, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:in, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:in, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:in], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:in, B:out, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:in, C:out, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:in, D:out]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:in]).
valenceAnde([A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out], [A:out, B:out, C:out, D:out]).
