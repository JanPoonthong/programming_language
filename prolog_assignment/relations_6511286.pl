/* Jan Poonthong, 6511286 */

male(kim).
male(kent).
male(herbert).
female(holly).
female(margaret).
female(esther).
female(jean).

parent(kim,holly).
parent(margaret,kim).
parent(margaret,kent).
parent(esther,margaret).
parent(herbert,margaret).
parent(herbert,jean).
parent(kent, jean).

mother(P, C) :- female(P), parent(P, C).
father(P, C) :- male(P), parent(P, C).
sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), not(X=Y).
brother(X, Y) :- male(X), parent(Z, X), parent(Z, Y), not(X=Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), not(X=Y).
cousin(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B), not(X=Y).
