% Facts
male(me).
male(thatman).
male(myfather).
male(thatman_father).

% Family relationships
father(myfather, me).
father(thatman_father, thatman).
father(myfather,thatman_father).

% Rule for determining a son
son(X, Y) :- father(Y, X),male(X).

% Solving the riddle
solve_riddle(thatman) :-
    father(thatman_father, thatman),
    father(myfather,me),
    son(thatman_father,myfather),
	write('That man is son to me'),nl.