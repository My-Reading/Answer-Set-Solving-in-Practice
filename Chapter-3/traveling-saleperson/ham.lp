1 { cycle(X, Y) : edge(X, Y) } 1 :- node(X).
1 { cycle(X, Y) : edge(X, Y) } 1 :- node(Y).

reached(Y) :- cycle(1, Y).
reached(Y) :- cycle(X, Y), reached(X).

:- node(Y), not reached(Y).

#show cycle/2.
% #show node/1.

% gringo graph.lp costs.lp ham.lp | clasp 0