Bueno, para ser justos, también podés llegar fácilmente si vivís en la misma zona del destino (caminar hace bien ;)). Es decir, alguien llega fácil a un destino, si vive en la misma zona en la que queda este destino. ¿Se podrá decir expresar esto en Prolog?


```prolog
llegaFacil(batman, _).
llegaFacil(Persona, _) :-
 tieneAuto(Persona).
llegaFacil(Persona, Destino) :-
  viveEn(Persona, Zona),
  quedaEn(Destino, Zona).
```

> ¡Probalo en la consola!



