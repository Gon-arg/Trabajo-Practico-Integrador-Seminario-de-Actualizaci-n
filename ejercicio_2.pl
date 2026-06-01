% Objetivo: Usar variables para recuperar informacion de la base de conocimiento.
% ?- creencia(ubicado(robot, Lugar)).
% ?- creencia(conecta(pasillo, Destino)).

% Consignas
% 6.	Consultar donde esta ubicado el robot.
% 7.	Consultar todos los destinos posibles desde pasillo.
% 8.	Consultar todos los lugares con puerta abierta.
% 9.	Agregar otro agente y repetir las consultas.
% 10.	Explicar que significa una variable en una consulta Prolog.
% Preguntas para responder
% 11.	Que diferencia hay entre preguntar por un dato concreto y preguntar usando una variable?
% 12.	Por que Prolog puede devolver mas de una respuesta?
% Ubicación del robot
creencia(ubicado(robot, aula1)).
creencia(ubicado(drone, biblioteca)).
creencia(ubicado(sensor, laboratorio)).
creencia(ubicado(asistente, cafeteria)).

% Conexiones entre lugares
creencia(conecta(aula1, pasillo)).
creencia(conecta(pasillo, biblioteca)).
creencia(conecta(pasillo, laboratorio)).
creencia(conecta(laboratorio, cafeteria)).

% Estado de puertas
creencia(puerta_abierta(aula1)).
creencia(puerta_abierta(biblioteca)).
creencia(puerta_cerrada(laboratorio)).
creencia(puerta_abierta(cafeteria)).