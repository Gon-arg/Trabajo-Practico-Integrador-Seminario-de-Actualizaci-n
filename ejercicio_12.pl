% Objetivo: Construir planes como listas de acciones.
% plan(ir_biblioteca, [mover(aula1, pasillo), mover(pasillo, biblioteca)]) :-
%     creencia(conecta(aula1, pasillo)),
%     creencia(conecta(pasillo, biblioteca)),
%     \+ creencia(bloqueado(pasillo)),
%     \+ creencia(bloqueado(biblioteca)).

% Consignas
% 58.	Representar un recorrido desde aula1 hasta biblioteca.
% 59.	Crear un predicado plan/2 que devuelva una lista de acciones.
% 60.	El plan debe evitar lugares bloqueados.
% 61.	Agregar un bloqueo y verificar que el plan deja de ser valido.
% 62.	Proponer un plan alternativo si existe otro camino.

% Creencias sobre conexiones y bloqueos
creencia(conecta(aula1, pasillo)).
creencia(conecta(pasillo, biblioteca)).
creencia(conecta(aula1, biblioteca)).
creencia(bloqueado(pasillo)).

% Plan para ir a la biblioteca evitando bloqueos
plan(ir_biblioteca, [mover(aula1, biblioteca)]) :-
    creencia(conecta(aula1, biblioteca)),
    \+ creencia(bloqueado(aula1)),
    \+ creencia(bloqueado(biblioteca)).

% Plan alternativo si el pasillo está bloqueado
plan(ir_biblioteca,[mover(aula1, biblioteca)]) :-
    creencia(conecta(aula1, biblioteca)),
    \+ creencia(bloqueado(biblioteca)).

