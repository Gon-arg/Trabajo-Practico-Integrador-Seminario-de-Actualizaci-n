% Objetivo: Incorporar la fuente de una creencia y evaluar si debe ser aceptada.
% creencia(puerta_abierta(aula), sensor1).
% creencia(puerta_cerrada(aula), sensor2).

% confiabilidad(sensor1, 90).
% confiabilidad(sensor2, 60).

% fuente_confiable(Fuente) :-
%     confiabilidad(Fuente, Valor),
%     Valor >= 70.

% aceptar_como_verdadero(Info) :-
%     creencia(Info, Fuente),
%     fuente_confiable(Fuente).

% Consignas
% 43.	Crear creencias con fuente usando creencia/2.
% 44.	Definir confiabilidad/2 para al menos 4 fuentes.
% 45.	Crear fuente_confiable/1 para fuentes con valor mayor o igual a 70.
% 46.	Crear aceptar_como_verdadero/1.
% 47.	Probar casos aceptados y rechazados.

% Creencias con fuente
creencia(puerta_abierta(aula), sensor1).
creencia(puerta_cerrada(aula), sensor2).

% Confiabilidad de las fuentes
confiabilidad(sensor1, 90).
confiabilidad(sensor2, 60).
confiabilidad(sensor3, 80).
confiabilidad(sensor4, 50).

% Fuente confiable
fuente_confiable(Fuente) :-
    confiabilidad(Fuente, Valor),
    Valor >= 70.

% Aceptar como verdadero
aceptar_como_verdadero(Info) :-
    creencia(Info, Fuente),
    fuente_confiable(Fuente).


