row(1..n).
col(1..n).

n { queen(I, J) : col(I), row(J) } n.
% { queen(I, J) : col(I), row(J) }.
% :- not n { queen(I, J) } n.
:- queen(I, J), queen(I, JJ), J != JJ.
:- queen(I, J), queen(II, J), I != II.

#show queen/2.

% gringo queensIV.lp --const n=5 | clasp 5