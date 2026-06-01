% Objetivo: Implementar una revision basica de creencias con assertz/1 y retractall/1.
% :- dynamic creencia/1.

% actualizar(Nueva) :-
%     opuesta(Nueva, Vieja),
%     retractall(creencia(Vieja)),
%     retractall(creencia(Nueva)),
%     assertz(creencia(Nueva)).

% actualizar(Nueva) :-
%     \+ opuesta(Nueva, _),
%     retractall(creencia(Nueva)),
%     assertz(creencia(Nueva)).

% Consignas
% 38.	Declarar creencia/1 como dinamico.
% 39.	Crear actualizar/1 para borrar creencias opuestas antes de agregar la nueva.
% 40.	Evitar duplicar la misma creencia.
% 41.	Probar actualizar(puerta_abierta(laboratorio)) cuando antes estaba cerrada.
% 42.	Listar las creencias finales y explicar el resultado.

% Declarar creencia/1 como dinámico
:- dynamic creencia/1.

% Predicado para determinar si dos creencias son opuestas
opuesta(puerta_abierta(X), puerta_cerrada(X)).
opuesta(puerta_cerrada(X), puerta_abierta(X)).
opuesta(luz_encendida(X), luz_apagada(X)).
opuesta(luz_apagada(X), luz_encendida(X)).

% Creencia inicial
creencia(puerta_cerrada(laboratorio)).

% Actualizar creencias cuando existe opuesta
actualizar(Nueva) :-
    opuesta(Nueva, Vieja),
    retractall(creencia(Vieja)),
    retractall(creencia(Nueva)),
    assertz(creencia(Nueva)).

% Actualizar cuando no existe opuesta
actualizar(Nueva) :-
    \+ opuesta(Nueva, _),
    retractall(creencia(Nueva)),
    assertz(creencia(Nueva)).