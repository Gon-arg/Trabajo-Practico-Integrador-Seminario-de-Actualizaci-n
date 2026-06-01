% Objetivo: Representar un agente mediante el modelo BDI.
% creencia(ubicado(robot, aula1)).
% creencia(conecta(aula1, pasillo)).
% creencia(conecta(pasillo, biblioteca)).

% deseo(llegar(robot, biblioteca)).

% puede_intentar(Agente, mover(Agente, Destino)) :-
%     creencia(ubicado(Agente, Origen)),
%     creencia(conecta(Origen, Destino)),
%     \+ creencia(bloqueado(Destino)).

% Consignas
% 53.	Crear hechos creencia/1, deseo/1 e intencion/1.
% 54.	El robot debe querer llegar a biblioteca.
% 55.	Crear una regla puede_intentar/2.
% 56.	La intencion debe depender de las creencias actuales.
% 57.	Modificar una creencia y observar si cambia la intencion posible.

% Creencias sobre la ubicación y conexiones
creencia(ubicado(robot, aula1)).
creencia(conecta(aula1, pasillo)).
creencia(conecta(pasillo, biblioteca)).
creencia(bloqueado(pasillo)).

% Deseo del robot
deseo(llegar(robot, biblioteca)).

% Puede intentar mover si no hay bloqueos
puede_intentar(Agente, mover(Agente, Destino)) :-
    creencia(ubicado(Agente, Origen)),
    creencia(conecta(Origen, Destino)),
    \+ creencia(bloqueado(Destino)).

% Intención de mover si es posible
intencion(mover(robot, biblioteca)) :-
    deseo(llegar(robot, biblioteca)),
    puede_intentar(robot, mover(robot, biblioteca)).

