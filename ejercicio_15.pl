Objetivo: Implementar una version simplificada de Minimax para elegir la mejor jugada.
% Arbol de juego simplificado
jugada(inicio, a, estado_a).
jugada(inicio, b, estado_b).
jugada(estado_a, a1, gana).
jugada(estado_a, a2, empata).
jugada(estado_b, b1, pierde).
jugada(estado_b, b2, empata).

terminal(gana).
terminal(empata).
terminal(pierde).

valor(gana, 1).
valor(empata, 0).
valor(pierde, -1).

% Version orientativa: completar y mejorar
minimax(Estado, _, Valor) :-
    terminal(Estado),
    valor(Estado, Valor).

% Desafio: implementar alternancia entre maximizador y minimizador.

Consignas
73.	Definir un juego simple de dos jugadores, por ejemplo Ta-Te-Ti reducido, quitar fichas o arbol de decisiones predefinido.
74.	Crear hechos jugada/3 con la forma jugada(EstadoActual, Movimiento, EstadoSiguiente).
75.	Definir estados terminales y sus valores.
76.	Crear predicados minimax/3 o elegir_mejor_jugada/3.
77.	Probar al menos 3 estados diferentes y explicar por que el agente elige esa jugada.
Preguntas para responder
78.	Que significa maximizar en un juego?
79.	Que significa minimizar?
80.	Por que Minimax supone que el rival tambien juega de manera racional?
81.	Que limitacion tendria Minimax si el arbol de juego fuera muy grande?

% Árbol de juego simplificado
jugada(inicio, a, estado_a).
jugada(inicio, b, estado_b).

jugada(estado_a, a1, gana).
jugada(estado_a, a2, empata).

jugada(estado_b, b1, pierde).
jugada(estado_b, b2, empata).

% Estados terminales
terminal(gana).
terminal(empata).
terminal(pierde).

% Utilidad de los estados terminales
valor(gana, 1).
valor(empata, 0).
valor(pierde, -1).

% Caso base: si el estado es terminal, devolver su valor
minimax(Estado, _, Valor) :-
    terminal(Estado),
    valor(Estado, Valor).

% Alternancia de jugadores
otro(max, min).
otro(min, max).

% Caso recursivo: evaluar los estados hijos
minimax(Estado, Jugador, Valor) :-
    \+ terminal(Estado),
    otro(Jugador, Siguiente),
    findall(
        ValorHijo,
        (
            jugada(Estado, _, Hijo),
            minimax(Hijo, Siguiente, ValorHijo)
        ),
        Valores
    ),
    (
        Jugador = max ->
        max_list(Valores, Valor)
        ;
        min_list(Valores, Valor)
    ).

