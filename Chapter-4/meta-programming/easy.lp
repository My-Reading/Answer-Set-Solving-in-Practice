{ p(1..3) }
:- { p(X) } 2.
q(X) :- p(X), p(X+1), X>1.
p(X+1) :- q(X).

% gringo --text easy.lp
% gringo -o reify easy.lp