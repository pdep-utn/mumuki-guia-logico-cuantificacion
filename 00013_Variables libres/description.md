_Más despacio, cerebrito. ¡Quiero entender qué acaba de pasar!_ :thought_balloon:

Concentrémonos en esta condición: 

```prolog
forall(quiereIr(Persona, Destino), quedaEn(Destino, Zona))
```

Si expresamos este predicado en términos lógicos, nos queda: 

```
∀ Destino : quiereIr(Persona, Destino) => quedaEn(Destino, Zona)
```

Lo cual se lee como _para todo destino, si la persona quiere ir a él, le queda cerca_,  que no es más que la formalización de lo que veníamos diciendo. 

Sin embargo, ¿Cómo se dio cuenta Prolog de la variable que cuantificamos existencialmente es `Destino`? Es decir, ¿por qué no interpretó, por ejemplo, _para toda persona, si el destino es de interés para la persona, le queda cerca_?:

```
∀ Persona : quiereIr(Persona, Destino) => quedaEn(Destino, Zona)
```

La clave acá está en _las variables libres_, por lo que tenemos que mirar toda la cláusula:

```prolog
estaBienUbicado(Persona) :-
  viveEn(Persona, Zona),    
  forall(quiereIr(Persona, Destino), quedaEn(Destino, Zona)). % Destino es una variable libre: no viene como
                                                              % argumento ni es instanciada por ninguna condición anterior
```

Dentro de un `forall`, lo que **cuantificamos universalmente** son las variables libres. 

> Veamos si se entiende: escribí un predicado `destinoAccesible/1` que nos diga si llegan fácil todas las personas que quieran ir a éste. Recordá que existe el predicado llegaFacil/2 que relaciona una persona y un destino.

