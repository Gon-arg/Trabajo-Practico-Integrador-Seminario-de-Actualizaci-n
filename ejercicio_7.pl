% Objetivo: Modelar informacion incompatible dentro del sistema de creencias.
% opuesta(puerta_abierta(X), puerta_cerrada(X)).
% opuesta(puerta_cerrada(X), puerta_abierta(X)).
% opuesta(luz_encendida(X), luz_apagada(X)).
% opuesta(luz_apagada(X), luz_encendida(X)).

% Consignas
% 33.	Cargar creencia(puerta_abierta(laboratorio)) y creencia(puerta_cerrada(laboratorio)).
% 34.	Crear el predicado opuesta/2.
% 35.	Agregar contradicciones para luz_encendida/luz_apagada.
% 36.	Consultar si dos creencias son opuestas.
% 37.	Explicar por que un agente no deberia actuar como si ambas fueran verdaderas.

% Predicado para determinar si dos creencias son opuestas
opuesta(puerta_abierta(X), puerta_cerrada(X)).
opuesta(puerta_cerrada(X), puerta_abierta(X)).
opuesta(luz_encendida(X), luz_apagada(X)).
opuesta(luz_apagada(X), luz_encendida(X)).

% Contradicciones de puertas
creencia(puerta_abierta(laboratorio)).
creencia(puerta_cerrada(laboratorio)).

% Contradicciones de luz
creencia(luz_encendida(aula1)).
creencia(luz_apagada(aula1)).