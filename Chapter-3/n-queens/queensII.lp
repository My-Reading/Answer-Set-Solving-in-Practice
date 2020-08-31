row(1..n).
col(1..n).

{ queen(I, J) : col(I), row(J) }.

#show queen/2.

% gringo queensII.lp --const n=5 | clasp 5