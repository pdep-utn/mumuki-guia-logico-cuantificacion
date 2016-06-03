```prolog
estaBienUbicado(Persona) :-
   viveEn(Persona, Zona), 
   forall(quiereIr(Persona, Destino), quedaEn(Destino, Zona)).
```

todo
