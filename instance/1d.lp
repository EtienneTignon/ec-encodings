%Graph
edge(1,2,1).
edge(2,3,1).
edge(3,1,3).
edge(V,V') :- edge(V',V).
vertice(1..3).
objectif(1,2).

#const h=3.
