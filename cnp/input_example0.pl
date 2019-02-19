:- multifile jobValence/1.
:- multifile jobConstant/1.
:- multifile jobObservable/2.
jobValence([red:in, distance:in, go:out]).
% Constants
jobConstant(0).
jobConstant(0.0).
jobConstant(1.0).
jobConstant(9).
jobConstant(10).
jobConstant(59).
jobConstant(60).
jobConstant(79).
jobConstant(80).
jobConstant(100).
% Observables
% jobObservable([red:1.0, amber:0.0, distance:0, go:0.0], true).
% jobObservable([red:1.0, amber:0.0, distance:59, go:0.0], true).
% jobObservable([red:1.0, amber:0.0, distance:60, go:1.0], true).
% jobObservable([red:1.0, amber:0.0, distance:100, go:1.0], true).


jobObservable([red:1.0, distance:100, go:1.0], true).
jobObservable([red:1.0, distance:60, go:1.0], true).
jobObservable([red:1.0, distance:59, go:0.0], true).
jobObservable([red:1.0, distance:0, go:0.0], true).




%
% jobObservable([red:1.0, distance:0, go:0.0], true).
% jobObservable([red:1.0, distance:59, go:0.0], true).
% jobObservable([red:1.0, distance:60, go:1.0], true).
% jobObservable([red:1.0, distance:100, go:1.0], true).
%
% jobObservable([red:1.0, green:0.0, distance:0, go:0.0], true).
% jobObservable([red:1.0, green:0.0, distance:59, go:0.0], true).
% jobObservable([red:1.0, green:0.0, distance:60, go:1.0], true).
% jobObservable([red:1.0, green:0.0, distance:100, go:1.0], true).


% jobObservable([red:1.0, green:0.0, i_2:0.0, distance:0.0], false).
% jobObservable([red:1.0, green:0.0, i_2:0.0, distance:0.59], false).
% jobObservable([red:1.0, green:0.0, i_2:0.0, distance:0.6], true).
% jobObservable([red:1.0, green:0.0, i_2:0.0, distance:1.0], true).
% jobObservable([red:0.0, green:1.0, i_2:0.0, distance:0.0], true).
% jobObservable([red:0.0, green:1.0, i_2:0.0, distance:0.09], true).
% jobObservable([red:0.0, green:1.0, i_2:0.0, distance:0.1], false).
% jobObservable([red:0.0, green:1.0, i_2:0.0, distance:0.79], false).
% jobObservable([red:0.0, green:1.0, i_2:0.0, distance:0.8], true).
% jobObservable([red:0.0, green:1.0, i_2:0.0, distance:1.0], true).
% jobObservable([red:0.0, green:0.0, i_2:1.0, distance:0.0], true).
% jobObservable([red:0.0, green:0.0, i_2:1.0, distance:1.0], true).
