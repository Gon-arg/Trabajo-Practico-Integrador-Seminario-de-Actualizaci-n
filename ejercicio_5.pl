% Objetivo: Analizar el uso de \+ y sus riesgos en un agente inteligente.
% puede_avanzar(Lugar) :-
%     accesible(Lugar),
%     \+ creencia(peligroso(Lugar)).

% Consignas
% 23.	Crear la regla puede_avanzar/1.
% 24.	El agente puede avanzar si el lugar es accesible y no se puede probar que sea peligroso.
% 25.	Probar la regla con un lugar sin peligro registrado.
% 26.	Agregar creencia(peligroso(pasillo)) y volver a probar.
% 27.	Explicar por que no poder probar peligro no significa seguridad real.

% regla para determinar si el agente puede avanzar a un lugar
puede_avanzar(Lugar) :-
    accesible(Lugar),
    \+ creencia(peligroso(Lugar)).

% Hechos de accesibilidad
accesible(laboratorio).
accesible(pasillo).
accesible(aula1).
accesible(cafeteria).
accesible(biblioteca).

% Hecho de peligro
creencia(peligroso(pasillo)).
creencia(peligroso(cafeteria)).

