/* questions.pl 

Questions about your relations in another file in terms of defined rules in family_rules.
*/ 
 
is_cousin(X, Y) :- cousin(X, Y), write(X), write(' is a cousin of '), write(Y), nl.
is_grandchildren(X, Y) :- grandparent(X, Y), write(X), write(' is a grandparent of '), write(Y), nl.
is_ancestor(X, Y) :- ancestor(X, Y), write(X), write(' is an ancestor of '), write(Y), nl.
who_siblings(X, Y) :- sibling(X, Y), write(X), write(' and '), write(Y), write(' are siblings'), nl.
is_grandfather(X, Y) :- grandfather(X, Y), write(X), write(' is the grandfather of '), write(Y), nl.
who_female_children(X, Y) :- parent(X, Y), female(Y), write(Y), write(' is a female child of '), write(X), nl.
is_brother(X, Y) :- brother(X, Y), write(X), write(' is the brother of '), write(Y), nl.
who_nieces_nephews(P, X) :- sibling(P, X), (aunt(X, P); uncle(X, P)), write(X), write(' is a niece or nephew of '), write(P), nl.
who_children(X, Y) :- parent(X, Y), write(Y), write(' is a child of '), write(X), nl.

/* Iteration 2 questions*/
is_not_related(X, Y) :-
    not(related(X, Y)),
    not(related(Y, X)).
is_parent_less_than_20(X, Y) :- parent(X, Y), born(Y, BY), BY - X < 20, write(X), write(' had a child at age less than 20'), nl.
is_younger_parent(X, Y) :- parent(X, Y), born(X, BX), born(Y, BY), BX > BY, write(X), write(' is younger than their child '), write(Y), nl.
count_adults_in_2021(X, BX) :- born(X, BX), 2021 - BX >= 18, write(X), write(' is an adult in 2021'), nl.
count_older_than_aunt_uncle (A, X) :- (aunt(A, X); uncle(U, X)), born(X, BX), born(AU, BAU), BX < BAU, write(X), write(' is older than their aunt/uncle'), nl.