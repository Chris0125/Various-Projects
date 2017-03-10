/*
Christopher James
Prolog Homework
*/

part_of2(cord, hotplate).
part_of2(heating_element, hotplate).
part_of2(cover, hotplate).
part_of2(knob, cover).
part_of2(wire, cord).
part_of2(insulator, cord).

made_of2(metal, heating_element).
made_of2(plastic, knobs).
made_of2(metal, wire).
made_of2(fiber, wire).

part_of(A,B):- part_of2(A,B).
part_of(A,C) :- part_of2(A,B), part_of(B,C).


made_of(A,B):- made_of2(A,B).
made_of(A,C) :- made_of2(A,B), made_of(B,C).


made_of(A,B):- part_of2(A,B).
made_of(A,C) :- part_of2(A,B), made_of(B,C).
