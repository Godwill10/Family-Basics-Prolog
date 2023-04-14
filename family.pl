/*
    Project 4: Prolog
    Author: Godwill Afolabi
    CSC 391 Programming Languages

    family.pl
*/

/* family_facts.pl */
parent(john, jim).
parent(john, julia).
parent(bob, alice).
parent(bob, ben).
parent(dave, emma).

parent(susan, jim).
parent(susan, julia).
parent(linda, alice).
parent(linda, ben).
parent(jane, emma).

married(john, susan).
married(bob, linda).
married(dave, jane).

male(john).
male(bob).
male(jim).
male(ben).
male(dave).

female(susan).
female(julia).
female(linda).
female(alice).
female(jane).
female(emma).

/* family_rules.pl */
/* Mother rule */
mother(X, Y) :- parent(X, Y), female(X).

/* Father rule */
father(X, Y) :- parent(X, Y), male(X).

/* Brother rule */
brother(X, Y) :- sibling(X, Y), male(X).

/* Sister rule */
sister(X, Y) :- sibling(X, Y), female(X).