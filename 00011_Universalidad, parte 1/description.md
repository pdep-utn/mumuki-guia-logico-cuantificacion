Ahora queremos saber si alguien está bien ubicado: esto ocurre cuando vive en una zona en la que están todos los destinos a los que quiere ir.  Para eso, contamos con la nueva información de `quiereIr/2`: 

```prolog
quiereIr(fede, racing).
quiereIr(fede, montoto).
quiereIr(victoria, montoto).
quiereIr(tomas, montoto).
quiereIr(tomas, utn).
```

¿Pero cómo podemos hacer para saber si todos los lugares a donde quiere ir están en su zona? ¿Se te ocure alguna forma de resolverlo, usando sólo lo que vimos hasta ahora?

> Escribí el predicado `bienUbicado/1`. Asumí que ya escribimos `quiereIr/2` por vos. 