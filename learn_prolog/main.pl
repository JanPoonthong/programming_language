male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).
 
female(alice).
female(betsy).
female(diana).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).
 
parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

get_grandchild :- parent(X, carl), parent(X, charlie),
format("~w ~s grandparent ~n", [X, "is the"]).

brother(bob, bill).

grand_parent(X, Y) :- parent(Z, X), parent(Y, Z).

stabs(tom, mom, dad).
stabs(jon, mom, dad).
police_catch(police, X) :- stabs(X, mom, dad), write("police hates "),
write(X), nl.
