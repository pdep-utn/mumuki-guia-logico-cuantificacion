La clave de este problema estaba en pensar no solamente que _para cada habitante de la zona, este debe tener auto_, sino que además, la zona _debe estar habitada_. 

Y la forma más simple de pensar esto es la siguiente: 

```prolog
dificilDeEstacionar(Zona) :-
    viveEn(Zona, _),
    forall(viveEn(Habitante, Zona), tieneAuto(Habitante)).
```

Mediante la condición `viveEn(Zona, _)` nos aseguramos de que haya al menos un habitante (sin importarnos quién). 

Ah, ¿lo hiciste de otra forma? Acompañanos, vamos a ver a continuación distintas maneras de encarar este problema. 