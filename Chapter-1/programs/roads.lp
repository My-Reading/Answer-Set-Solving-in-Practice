road(berlin, potsdam).
road(potsdam, werder).
road(werder, brandenburg).
road(X, Y) :- road(Y, X).

blocked(werder, brandenburg).

route(X, Y) :- road(X, Y), not blocked(X, Y).
route(X, Y) :- road(X, Z), road(Z, Y).

drive(X) :- route(berlin, X).

#show drive/1.

% grounder gringo and solver clasp
% the argument 0 makes the solver compute all stable models.
% $ gringo roads.lp | clasp 0