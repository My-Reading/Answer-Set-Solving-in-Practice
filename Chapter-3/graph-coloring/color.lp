col(r).
col(g).
col(b).

1 {color(X, C) : col(C)} 1 :- node(X).
:- edge(X, Y), color(X, C), color(Y, C).

% #hide.
#show color/2.

% gringo --text color.lp graph.lp
% gringo color.lp graph.lp | clasp 0