Ejercicio 14 — Evaluacion de estados de juego
Dificultad: Avanzado
Objetivo: Representar estados simples de un juego y asignarles una utilidad.
valor(gana, 1).
valor(empata, 0).
valor(pierde, -1).

mejor_estado(E1, E2, E1) :-
    valor(E1, V1),
    valor(E2, V2),
    V1 >= V2.

mejor_estado(E1, E2, E2) :-
    valor(E1, V1),
    valor(E2, V2),
    V2 > V1.

Consignas
68.	Crear estados terminales con valores: gana, pierde o empata.
69.	Representar la utilidad con valor/2.
70.	Asignar 1 a ganar, -1 a perder y 0 a empatar.
71.	Crear una regla mejor_estado/2 que compare dos estados terminales.
72.	Explicar por que el agente no elige solo por la jugada inmediata sino por el resultado esperado.

% Estados terminales y sus valores
terminal(gana).
terminal(empata).
terminal(pierde).
valor(gana, 1).
valor(empata, 0).
valor(pierde, -1).

% Regla para comparar dos estados terminales y elegir el mejor
mejor_estado(E1, E2, E1) :-
    valor(E1, V1),
    valor(E2, V2),
    V1 >= V2.

mejor_estado(E1, E2, E2) :-
    valor(E1, V1),
    valor(E2, V2),
    V2 > V1.


