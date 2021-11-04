%Graph
edge(1,2).
edge(2,3).
edge(3,1).
edge(V,V') :- edge(V',V).
vertice(1..3).
objectif(1,2).

#const h=2.
