% Objetivo: Crear reglas que permitan inferir si un lugar puede ser alcanzado por el agente.
% accesible(Destino) :-
%     creencia(conecta(_, Destino)),
%     \+ creencia(bloqueado(Destino)).

% Consignas
% 13.	Crear una regla accesible/1.
% 14.	Un lugar sera accesible si existe una conexion hacia el y no esta bloqueado.
% 15.	Agregar una creencia bloqueado(laboratorio).
% 16.	Probar accesible(laboratorio) antes y despues del bloqueo.
% 17.	Explicar que informacion fue explicita y cual fue inferida.

% Accesibilidad de lugares
accesible(Destino) :-
    creencia(conecta(_, Destino)),
    \+ creencia(bloqueado(Destino)).

% Bloqueo de lugares
creencia(bloqueado(laboratorio)).

% lugar accesible antes del bloqueo
creencia(conecta(aula1, pasillo)).
creencia(conecta(pasillo, laboratorio)).
creencia(conecta(pasillo, biblioteca)).
creencia(conecta(laboratorio, cafeteria)).