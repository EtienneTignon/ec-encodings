%Effect of event in fluents
holds_at(F,T) :- happens(E,T-1), initiates(E,F,T-1), timepoint(T).
not holds_at(F,T) :- happens(E,T-1), terminates(E,F,T-1), timepoint(T).

%Inertia
terminated(F,T) :- happens(E,T), terminates(E,F,T).
clipped(T,F,T') :- timepoint(T), timepoint(T'), terminated(F,T''), T<=T'', T''<T.
holds_at(F,T) :- holds_at(F,T'), not clipped(T',F,T), timepoint(T).
initiated(F,T) :- happens(E,T), initiates(E,F,T).
unclipped(T,F,T') :- timepoint(T), timepoint(T'), initiated(F,T''), T<=T'', T''<T.
not holds_at(F,T) :- not holds_at(F,T'), not unclipped(T',F,T), timepoint(T), timepoint(T'), fluent(F).

%dont work
