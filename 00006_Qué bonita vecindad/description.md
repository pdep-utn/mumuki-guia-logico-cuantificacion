sonVecinos(UnaPersona, OtraPersona) :-
       viveEn(UnaPersona, Lugar),
       viveEn(OtraPersona, Lugar),
       UnaPersona \= OtraPersona.
