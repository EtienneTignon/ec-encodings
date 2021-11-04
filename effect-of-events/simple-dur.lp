initiates(move(Vo,Vd),on(Vd),T) :- event(move(Vo,Vd),D), timepoint(T).
terminates(move(Vo,Vd),on(Vo),T) :- event(move(Vo,Vd),D), timepoint(T).

%#show terminates/3.
