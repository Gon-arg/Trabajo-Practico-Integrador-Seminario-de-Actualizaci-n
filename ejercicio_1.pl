Consignas
# 1.	Crear al menos 8 hechos usando el predicado creencia/1.
# 2.	Representar ubicacion del robot, conexiones entre lugares y estado de puertas.
# 3.	Consultar si el robot esta ubicado en aula1.
# 4.	Consultar que lugares conectan con pasillo.
# 5.	Explicar por que estos hechos son creencias y no necesariamente verdades absolutas.
% Ubicación del robot
creencia(ubicado(robot, aula1)).

% Conexiones entre lugares
creencia(conecta(aula1, pasillo)).
creencia(conecta(pasillo, biblioteca)).
creencia(conecta(pasillo, laboratorio)).
creencia(conecta(laboratorio, cafeteria)).

% Estado de puertas
creencia(puerta_abierta(aula1)).
creencia(puerta_abierta(biblioteca)).
creencia(puerta_cerrada(laboratorio)).
