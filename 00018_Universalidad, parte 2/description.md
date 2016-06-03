Está bien, está bien, te vamos a contar una mejor forma de resolver el mismo problema: utilizando `forall`, el **cuantificador universal** (o dicho en criollo, "para todo").

Este se utiliza así:

```prolog
estaBienUbicado(Persona) :-
   viveEn(Persona, Zona), 
   forall(quiereIr(Persona, Destino), quedaEn(Destino, Zona)).
```

> ¿No nos creés que funciona? ¡Copialo en el editor y probalo!