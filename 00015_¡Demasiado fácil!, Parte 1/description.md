Las variables libres pueden ser a veces un verdadero dolor de cabeza, porque son libres mientras no les demos un valor antes. Y a veces, es fácil hacer esto por accidente. Por ejemplo, volvamos a:

```prolog
dificilDeEstacionarV1(Zona) :-
    viveEn(_, Zona),
    forall(viveEn(Habitante, Zona), tieneAuto(Habitante)).
```

Acá, astutamente utilizamos la variable anónima: `viveEn(_, Zona)`.  Sin embargo, ¿qué hubiera pasado si, en lugar de ello, le dabamos un nombre a la variable? ¿Sería lo mismo?

```prolog
dificilDeEstacionarV2(Zona) :-
    viveEn(Habitante, Zona),
    forall(viveEn(Habitante, Zona), tieneAuto(Habitante)).
```

> Probá en la consola los predicados `dificilDeEstacionarV1` y `dificilDeEstacionarV2`
