% Objetivo: Determinar si una informacion queda confirmada cuando dos fuentes distintas coinciden.
% reporta(sensor1, humo(laboratorio)).
% reporta(sensor2, humo(laboratorio)).
% reporta(camara1, movimiento(pasillo)).

% confirmado(Info) :-
%     reporta(F1, Info),
%     reporta(F2, Info),
%     F1 \= F2.

% Consignas
% 48.	Crear al menos 6 hechos reporta/2.
% 49.	Incluir dos fuentes que reporten humo(laboratorio).
% 50.	Crear la regla confirmado/1.
% 51.	Crear un caso reportado por una sola fuente y verificar que no queda confirmado.
% 52.	Explicar por que la confirmacion multiple es importante en decisiones de riesgo.

% Reportes de fuentes
reporta(sensor1, humo(laboratorio)).
reporta(sensor2, humo(laboratorio)).
reporta(camara1, movimiento(pasillo)).
reporta(sensor3, temperatura(alta)).
reporta(sensor4, puerta_abierta(aula)).
reporta(sensor5, luz_apagada(sala)).

% Confirmado si dos fuentes distintas reportan la misma información
confirmado(Info) :-
    reporta(F1, Info),
    reporta(F2, Info),
    F1 \= F2.

% Caso reportado por una sola fuente
reporta(sensor6, agua_fuga(cocina)).


