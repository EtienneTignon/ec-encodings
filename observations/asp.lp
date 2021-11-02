holds_at(on(Vi),0) :- objectif(Vi,Vf).

{holds_at(F,T)} :- fluent(F), timepoint(T).
