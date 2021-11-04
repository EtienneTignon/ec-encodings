timepoint(0..h).
fluent(on(V)) :- vertice(V).
event(move(Vo,Vd),D) :- edge(Vo,Vd,D).
