% Objetivo: Diferenciar entre falso, desconocido y no demostrable.
% puede_entrar(Lugar) :-
%     \+ creencia(puerta_cerrada(Lugar)).

%  Mejora posible:
% puede_entrar_seguro(Lugar) :-
%     creencia(estado_puerta(Lugar, abierta)).

% Consignas
% 28.	Probar una regla que permita entrar si no se puede probar que una puerta esta cerrada.
% 29.	Consultar puede_entrar(laboratorio) sin tener informacion del laboratorio.
% 30.	Agregar estado_puerta(laboratorio, desconocido).
% 31.	Reformular la regla para que solo permita entrar si el estado es abierta.
% 32.	Explicar por que esta version es mas segura.

% regla para determinar si se puede entrar a un lugar
puede_entrar(Lugar) :-
    \+ creencia(puerta_cerrada(Lugar)).

% regla mejorada para determinar si se puede entrar a un lugar de manera segura
puede_entrar_seguro(Lugar) :-
    creencia(estado_puerta(Lugar, abierta)).

% Hechos de estado de puertas
creencia(estado_puerta(laboratorio, desconocido)).
creencia(estado_puerta(aula1, abierta)).
creencia(estado_puerta(cafeteria, cerrada)).
creencia(estado_puerta(biblioteca, abierta)).

% Hechos de puertas cerradas
creencia(puerta_cerrada(pasillo)).

