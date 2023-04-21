/*
    Project 4: Prolog
    Author: Godwill Afolabi
    CSC 391 Programming Languages

    family_facts.pl
*/

/* First family facts */

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

born(john, 1950).
born(susan, 1955).
born(jim, 1975).
born(julia, 1978).
born(bob, 1962).
born(linda, 1965).
born(alice, 1990).
born(ben, 1993).
born(dave, 1970).
born(jane, 1973).
born(emma, 2000).
