conf(S,L,A,R) :- start(S), tape(L,A,R).

conf(SN,l(L,AN),AR,R) :- conf(S,L,A,r(AR ,R)), trans(S,A,AN,SN,r).
conf(SN,l(L,AN),AR,n) :- conf(S,L,A,n), blank(AR), trans(S,A,AN,SN,r).
conf(SN,L,AL,r(AN ,R)) :- conf(S,l(L,AL),A,R), trans(S,A,AN ,SN,l).
conf(SN ,n,AL,r(AN ,R)) :- conf(S,n,A,R), blank(AL), trans(S,A,AN,SN,l).

% gringo --text beaver.lp turing.lp