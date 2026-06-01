% Objetivo: Elegir acciones segun nivel de riesgo y calidad de informacion.
% riesgo(laboratorio, alto).
% riesgo(biblioteca, bajo).

% accion_recomendada(Lugar, evacuar) :-
%     confirmado(incendio(Lugar)).

% accion_recomendada(Lugar, pedir_mas_informacion) :-
%     riesgo(Lugar, alto),
%     \+ confirmado(seguro(Lugar)).

% Consignas
% 63.	Crear hechos riesgo/2 con valores bajo, medio y alto.
% 64.	Crear una regla accion_recomendada/2.
% 65.	Si hay incendio confirmado, la accion debe ser evacuar.
% 66.	Si hay informacion dudosa y riesgo alto, la accion debe ser pedir_mas_informacion o actuar_con_precaucion.
% 67.	Explicar por que no todas las decisiones requieren el mismo nivel de certeza.

% Riesgo de lugares
riesgo(laboratorio, alto).
riesgo(biblioteca, bajo).
riesgo(aula, medio).
riesgo(pasillo, medio).

% Accion recomendada basada en confirmacion y riesgo
accion_recomendada(Lugar, evacuar) :-
    confirmado(incendio(Lugar)).

accion_recomendada(Lugar, pedir_mas_informacion) :-
    riesgo(Lugar, alto),
    \+ confirmado(seguro(Lugar)).

accion_recomendada(Lugar, actuar_con_precaucion) :-
    riesgo(Lugar, medio),
    \+ confirmado(seguro(Lugar)).

% Confirmaciones para diferentes lugares
confirmado(incendio(laboratorio)).
confirmado(seguro(biblioteca)).
confirmado(seguro(aula)).
confirmado(seguro(pasillo)).