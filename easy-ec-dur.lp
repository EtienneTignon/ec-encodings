#include "sorts-dur.lp".
#include "effect-of-events/simple-dur.lp".
#include "narrative/planning-dur.lp".
#include "constraints/asp.lp".
#include "observations/asp.lp".
#include "ec-axiomes/iteratif-dur.lp".

:- happens(_,T,D), not timepoint(T+D).

#show happens/3.
#show holds_at/2.
