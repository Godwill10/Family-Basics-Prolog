/* questions.pl 

Questions about your relations in another file in terms of defined rules in family_rules.
*/ 
 
is_cousin() :- cousin(X, Y), write('Is '), write(X), write(' cousin to '), write(Y), write('?').

who_grandchildren() :- grandparent(X, Y), write('Who are the grandchildren of '), write(X), write('?').

who_ancestors() :- ancestor(X, Y), write('Who are the ancestors of '), write(Y), write('?').

who_siblings() :- sibling(X, Y), write('Who are the siblings of '), write(Y), write('?').

is_grandfather() :- grandfather(X, Y), write('Is '), write(X), write(' the grandfather of '), write(Y), write('?').

who_daughters() :- parent(X, Y), female(Y), write('Who are the daughters of '), write(X), write('?').

is_brother() :- brother(X, Y), write('Is '), write(X), write(' the brother of '), write(Y), write('?').

who_nieces_nephews() :- sibling(P, X), (aunt(Y, P); uncle(Y, P)), write('Who are the nieces/nephews of '), write(X), write('?').

who_female_children() :- parent(X, Y), female(Y), write('Who are the female children of '), write(X), write('?').

who_siblings() :- sibling(X, Y), write('Who are the siblings of '), write(Y), write('?').