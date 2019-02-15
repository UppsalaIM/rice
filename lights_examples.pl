:- multifile jobValence/1.
:- multifile jobConstant/1.
:- multifile jobObservable/2.
jobValence([rd:in, am:in, gr:in, dist:in, go:out]).
%% Constants
jobConstant(0.0).
jobConstant(0.08).
jobConstant(0.09).
jobConstant(0.59).
jobConstant(0.6).
jobConstant(0.78).
jobConstant(0.79).
jobConstant(1.0).
%% Observables
jobObservable([rd:1.00, am:0.00, gr:0.00, dist:0.00, go:0.00], true).
jobObservable([rd:1.00, am:0.00, gr:0.00, dist:0.59, go:0.00], true).
jobObservable([rd:1.00, am:0.00, gr:0.00, dist:0.60, go:1.00], true).
jobObservable([rd:1.00, am:0.00, gr:0.00, dist:1.00, go:1.00], true).
jobObservable([rd:0.00, am:1.00, gr:0.00, dist:0.00, go:1.00], true).
jobObservable([rd:0.00, am:1.00, gr:0.00, dist:0.08, go:1.00], true).
jobObservable([rd:0.00, am:1.00, gr:0.00, dist:0.09, go:0.00], true).
jobObservable([rd:0.00, am:1.00, gr:0.00, dist:0.78, go:0.00], true).
jobObservable([rd:0.00, am:1.00, gr:0.00, dist:0.79, go:1.00], true).
jobObservable([rd:0.00, am:1.00, gr:0.00, dist:1.00, go:1.00], true).
jobObservable([rd:0.00, am:0.00, gr:1.00, dist:0.00, go:1.00], true).
jobObservable([rd:0.00, am:0.00, gr:1.00, dist:1.00, go:1.00], true).
