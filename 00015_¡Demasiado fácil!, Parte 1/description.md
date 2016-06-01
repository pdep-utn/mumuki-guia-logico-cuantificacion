Las variables libres pueden ser a veces un verdadero dolor de cabeza, porque son libres mientras no les demos un valor antes. Y a veces, es fácil hacer esto por accidente. Por ejemplo, volvamos a:

```prolog
dificilDeEstacionarV1(Zona) :-
    viveEn(Zona, _),
    forall(viveEn(Habitante, Zona), tieneAuto(Habitante)).
```

Acá, astutamente utilizamos la variable anónima: `viveEn(Zona, _)`.  Sin embargo, ¿qué hubiera pasado si, en lugar de ello, le dabamos un nombre a la variable? ¿Sería lo mismo?

```prolog
dificilDeEstacionarV2(Zona) :-
    viveEn(Zona, Habitante),
    forall(viveEn(Habitante, Zona), tieneAuto(Habitante)).
```

> ¡Probalo en la consola!
