% Defining adjacent positions for tents
adjacent(X, Y) :- hasTent(X, Y), hasTent(X+1, Y).
adjacent(X, Y) :- hasTent(X, Y), hasTent(X-1, Y).
adjacent(X, Y) :- hasTent(X, Y), hasTent(X, Y+1).
adjacent(X, Y) :- hasTent(X, Y), hasTent(X+1, Y+1).
adjacent(X, Y) :- hasTent(X, Y), hasTent(X-1, Y+1).
adjacent(X, Y) :- hasTent(X, Y), hasTent(X, Y-1).
adjacent(X, Y) :- hasTent(X, Y), hasTent(X+1, Y-1).
adjacent(X, Y) :- hasTent(X, Y), hasTent(X-1, Y-1).

% Define the number of tents in each row
numTents(N) :- N = #sum{S, C : rowsum(C, S), line(C)}.

% Define possible positions for tents adjacent to trees in the grid
tentAdjacentPos(X+1, Y, X, Y) :- free(X, Y), tree(X+1, Y), lines(L), X < L.
tentAdjacentPos(X, Y+1, X, Y) :- free(X, Y), tree(X, Y+1), columns(C), Y < C.
tentAdjacentPos(X-1, Y, X, Y) :- free(X, Y), tree(X-1, Y), X > 0.
tentAdjacentPos(X, Y-1, X, Y) :- free(X, Y), tree(X, Y-1), Y > 0.

% Tents cannot be adjacent to each other
:- hasTent(X, Y), adjacent(X, Y).

% Ensure each tree is linked with only one tent
1 {attachedTo(TR_X, TR_Y, TE_X, TE_Y) : tentAdjacentPos(TR_X, TR_Y, TE_X, TE_Y)} 1 :- 
    hasTent(TE_X, TE_Y).

% Ensure all trees have tents next to them
:- tree(X, Y), not attachedTo(X, Y, _, _).

% Constraints for correct row sums and column sums
:- rowsum(R, M), N = #count{Y: hasTent(R, Y)}, N != M.
:- colsum(C, M), N = #count{X: hasTent(X, C)}, N != M.

% Ensure there are N tents adjacent to trees according to the row count
N {hasTent(X, Y) : tentAdjacentPos(_, _, X, Y)} N :- numTents(N).

% Show the solution for: tent placements
#show hasTent/2.