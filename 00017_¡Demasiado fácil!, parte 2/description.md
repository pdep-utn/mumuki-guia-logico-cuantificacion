¡Ups! No, no lo sería porque también habíamos usado la variable `Habitante` en el `forall`, y para que tuviera sentido, tenía que ser una _variable libre_. Y ya no lo es, porque `viveEn` le dio un valor. 

Es cierto que si llamábamos a esta variable de otra forma, no hubiera habido problema, pero, vamos, ¡es fácil confundirse! ¿Cuál es la mejor forma de evitar estas situaciones? Fácil: ¡delegando! 


```prolog
zonaHabitada(Zona) :-
  viveEn(_, Zona).

dificilDeEstacionarV3(Zona) :-
    zonaHabitada(Zona),
    forall(viveEn(Habitante, Zona), tieneAuto(Habitante)).
```

Ahora, aun si accidentalmente no utilizamos la variable anónima en `zonaHabitada`, no nos afectará al correcto funcionamiento de esta solución, porque sus variables libres no interferirán con las de `dificilDeEstacionar`. Y en el camino, hicimos que `dificilDeEstacionar` sea aún más facil de entender. 

La moraleja es: cuanto más fácil de leer y entender una solución, ¡mejor!

> Probá esta solución en la consola