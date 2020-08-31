row(1..n).
col(1..n).

n { queen(I, J) : col(I), row(J) } n.
% { queen(I, J) : col(I), row(J) }.
% :- not n { queen(I, J) } n.

#show queen/2.

% gringo queensIII.lp --const n=5 | clasp 5