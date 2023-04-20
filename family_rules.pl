/* family_rules.pl 

    Write rules which define mother( X, Y), 
    father( X, Y), brother( X, Y), sister( X, Y),
    sibling( X, Y), grandparent( X, Y), grandmother( X, Y),
    grandfather( X, Y), ancestor( X, Y), aunt( X, Y),
    uncle( X, Y), cousin( X, Y).
*/

/* Mother rule */
mother(X, Y) :- parent(X, Y), female(X).

/* Father rule */
father(X, Y) :- parent(X, Y), male(X).

/* Brother rule */
brother(X, Y) :- sibling(X, Y), male(X).

/* Sister rule */
sister(X, Y) :- sibling(X, Y), female(X).

/* Sibling rule */
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X = Y.

/* Grandparent rule */
grandparent(X, Y) :- parent(X, Z), parent(Z, Y), born(X, GX), born(Y, GY), GY - GX >= 30.

/* Grandmother rule */
grandmother(X, Y) :- grandparent(X, Y), female(X).

/* Grandfather rule */
grandfather(X, Y) :- grandparent(X, Y), male(X).

/* Ancestor rule */
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(Z, Y), ancestor(X, Z).

/* Aunt rule */
aunt(X, Y) :- parent(Z, Y), sister(X, Z).
aunt(X, Y) :- parent(Z, Y), sibling(Z, P), married(X, P), female(X).

/* Uncle rule */
uncle(X, Y) :- parent(Z, Y), brother(X, Z).
uncle(X, Y) :- parent(Z, Y), sibling(Z, P), married(X, P), male(X).

/* Counsin rule */
cousin(X, Y) :- parent(P1, X), parent(P2, Y), sibling(P1, P2).