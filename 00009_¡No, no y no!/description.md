Ya estamos convencidos de que en Prolog es fácil preguntar si _existe_ una forma de probar algo, ¿no?. Por ejemplo, si queremos saber si Tomás tiene auto, podemos consultar así:

```prolog
? tieneAuto(tomas).
yes
? tieneAuto(victoria).
no
```

Pero ¿cómo hacemos para decir lo contrario? ¿Cómo hacemos para preguntar si NO existen pruebas de que tomás tenga auto? Adiviná, existe un predicado `not/1`, que _niega consultas_. 

> Descubrilo vos mismo; probá las siguientes consultas: 
> 
> * `not(tieneAuto(tomas))`
> * `not(tieneAuto(victoria))`