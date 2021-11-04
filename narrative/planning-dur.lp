{happens(E,T,D)} :- event(E,D), timepoint(T).
:- not holds_at(on(Vf),h), objectif(Vi,Vf).
