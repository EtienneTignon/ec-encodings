not holds_at(on(V),T) :- holds_at(on(V'),T), fluent(on(V)), V!=V'.

%Action precondition
holds_at(on(Vo),T) :- happens(move(Vo,Vd),T,D).
