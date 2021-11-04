%Effect of event in fluents
holds_at(F,T) :- happens(E,T-D,D), initiates(E,F,T-D), not terminates(E,F,T-1), timepoint(T).
not holds_at(F,T) :- happens(E,T-1,D), terminates(E,F,T-1), timepoint(T).

%Inertia
terminated(F,T) :- happens(E,T,D), terminates(E,F,T).
holds_at(F,T) :- holds_at(F,T-1), not terminated(F,T-1), timepoint(T).
initiated(F,T) :- happens(E,T,D), initiates(E,F,T).
not holds_at(F,T) :- not holds_at(F,T-1), not initiated(F,T-1), fluent(F), timepoint(T), timepoint(T-1).
