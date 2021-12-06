%Effect of event in fluents
holds_at(F,T) :- initiated(F,T'), not stopped_in(T',F,T-1), timepoint(T).
not holds_at(F,T) :- terminated(F,T'), not started_in(T',F,T-1), timepoint(T).

%Inertia
holds_at(F,T) :- holds_at(F,T-1), not terminated(F,T-1), timepoint(T).
not holds_at(F,T) :- not holds_at(F,T-1), not initiated(F,T-1), timepoint(T-1), timepoint(T), fluent(F).


%Some definitions
terminated(F,T) :- happens(E,T), terminates(E,F,T).
 initiated(F,T) :- happens(E,T), initiates(E,F,T).
stopped_in(T,F,T'') :- timepoint(T), timepoint(T''), terminated(F,T'), T<=T', T'<=T''.
started_in(T,F,T'') :- timepoint(T), timepoint(T''), initiated(F,T'), T<=T', T'<=T''.

%dont work yet
