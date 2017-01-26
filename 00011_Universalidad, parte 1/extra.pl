viveEn(mariano, avellaneda).
viveEn(fede, avellaneda).
viveEn(victoria, versalles).
viveEn(rodrigo, villaBallester).
viveEn(tomas, nuniez).

quedaEn(utn, almagro).
quedaEn(utn, villaLugano).
quedaEn(exactas, nuniez).
quedaEn(river, nuniez).
quedaEn(racing, avellaneda). 
quedaEn(montoto, palermo).
quedaEn(montoto, nuniez).
quedaEn(montoto, avellaneda).

tieneAuto(tomas).
tieneAuto(fede). 

llegaFacil(batman, _).
llegaFacil(Persona, _) :-
 tieneAuto(Persona).
llegaFacil(Persona, Destino) :-
  viveEn(Persona, Zona),
  quedaEn(Destino, Zona).
  
destinosProximos(Destino, OtroDestino) :-
   quedaEn(Destino, Zona),
   quedaEn(OtroDestino, Zona).
   
sonVecinos(UnaPersona, OtraPersona) :-
    UnaPersona \= OtraPersona,
    viveEn(UnaPersona, Zona), 
    viveEn(OtraPersona, Zona).
    
loLleva(UnaPersona, OtraPersona) :-
    tieneAuto(UnaPersona),
    not(tieneAuto(OtraPersona)), 
    sonVecinos(UnaPersona, OtraPersona).
    
quiereIr(fede, racing).
quiereIr(fede, montoto).
quiereIr(victoria, montoto).
quiereIr(tomas, montoto).
quiereIr(tomas, utn).