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
ancestor(X, Y) :- parent(X, Y), born(X, BX), born(Y, BY), BX =< BY.
ancestor(X, Y) :- parent(Z, Y), ancestor(X, Z), born(X, BX), born(Y, BY), BY - BX >= 30.

/* Aunt rule */
aunt(X, Y) :- parent(Z, Y), sister(X, Z).
aunt(X, Y) :- parent(Z, Y), sibling(Z, P), married(X, P), female(X).

/* Uncle rule */
uncle(X, Y) :- parent(Z, Y), brother(X, Z).
uncle(X, Y) :- parent(Z, Y), sibling(Z, P), married(X, P), male(X).

/* Counsin rule */
cousin(X, Y) :- parent(P1, X), parent(P2, Y), sibling(P1, P2).

/* Related rule */
related(X, Y) :- ancestor(X, Y).
related(X, Y) :- ancestor(Y, X).
related(X, Y) :- sibling(X, Y).
related(X, Y) :- sibling(Y, X).
related(X, Y) :- parent(X, Z), related(Z, Y).
related(X, Y) :- parent(Y, Z), related(Z, X).
related(X, Y) :- aunt(X, Z), related(Z, Y).
related(X, Y) :- aunt(Y, Z), related(Z, X).
related(X, Y) :- uncle(X, Z), related(Z, Y).
related(X, Y) :- uncle(Y, Z), related(Z, X).
related(X, Y) :- cousin(X, Y).
related(X, Y) :- cousin(Y, X).
