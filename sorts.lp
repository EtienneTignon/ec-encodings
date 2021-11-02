timepoint(0..h).
#const h=2.
fluent(on(V)) :- vertice(V).
event(move(Vo,Vd)) :- edge(Vo,Vd).
