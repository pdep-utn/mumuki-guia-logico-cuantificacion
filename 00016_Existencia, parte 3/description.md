Interesante lo que acaba de suceder, ¿no? Cuando hacemos una consulta como `llegaFacil(fede, exactas)`, `llegaFacil/2` funciona, _pese_ a que en la tercera cláusula nunca dijimos _cuál_ es la zona. 

```prolog
llegaFacil(Persona, Destino) :-
  viveEn(Persona, Zona), %% Zona es una variable que salió "de la nada" :o 
  quedaEn(Destino, Zona).
```
A diferencia de `Persona`, a la que cuando la consultamos le dimos el valor `fede`, nunca dijimos cual iba a ser el valor de `Zona` antes de usarla po primera vez. `Zona` es entonces una **variable libre**: la usamos sin haberla _instanciado_ previamente. 

Peeero, resulta que Prolog, es un tipo muy inteligente para estas cosas, y se da cuenta de que **existe** una `Zona` (`nuniez`) en la que al mismo tiempo vive `fede` y en la que queda `exactas`: 

```prolog
∃ Zona : viveEn(fede, Zona) ∧ quedaEn(exactas, Zona)
```

Y entonces, sin siquiera dudarlo, Prolog nos dice `yes` :thumbsup:

> Veamos si queda claro: escribí un predicado `destinosProximos/2`, que nos dice si dos destinos están en la misma zona. 

