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
