% Objetivo: Representar informacion que llega desde sensores, usuarios o camaras.
% :- dynamic creencia/1.

% percibe(sensor_humo, humo(laboratorio)).
% percibe(camara1, movimiento(pasillo)).

% registrar_percepcion(Info) :-
%     assertz(creencia(Info)).

% Consignas
% 18.	Crear al menos 6 hechos percibe/2.
% 19.	Incluir percepciones de distintos tipos: humo, temperatura, puerta, ruido o movimiento.
% 20.	Crear una regla registrar_percepcion/1 que agregue una percepcion como creencia.
% 21.	Usar assertz/1 para modificar la base de conocimiento.
% 22.	Explicar por que una percepcion puede fallar.

:- dynamic creencia/1.

% Percepciones de sensores y cámaras
percibe(sensor_humo,
        humo(laboratorio)).

percibe(camara1,
        movimiento(pasillo)).

percibe(sensor_temperatura,
        temperatura(laboratorio, alta)).

percibe(camara2,
        puerta_abierta(aula1)).

percibe(sensor_ruido,
        ruido(cafeteria, fuerte)).

percibe(camara3,
        movimiento(biblioteca)).

% Registrar percepciones como creencias
registrar_percepcion(Info) :-
    assertz(creencia(Info)).

