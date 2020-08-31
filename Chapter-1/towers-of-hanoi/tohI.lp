% Problem Instance

% Describing the pegs and disks of a Towers of Hanoi puzzle

% the number of moves in which the goal must be archived
#const moves=15.

% 3 pegs: a, b and c
peg(a; b; c). % peg(a). peg(b). peg(c)

% 4 disks: 1, 2, 3, 4
disk(1..4). % disk(1). disk(2). disk(3). disk(4).

% initial situation/state
init_on(1..4, a). % init_on(1, a). init_on(2, a). init_on(3, a). init_on(4, a).

% goal situation/state
goal_on(1..4, c). % goal_on(1, c). goal_on(2, c). goal_on(3, c). goal_on(4, c).