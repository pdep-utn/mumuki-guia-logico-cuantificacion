tieneAuto(tomas).
tieneAuto(fede).

viveEn(victoria, versalles).
viveEn(mariano, avellaneda).
viveEn(fede, avellaneda).
viveEn(tomas, nuniez).

quedaEn(exactas, nuniez).

llegaFacil(batman, _).
llegaFacil(Persona, _) :-
 tieneAuto(Persona).
llegaFacil(Persona, Destino) :-
  viveEn(Persona, Zona),
  quedaEn(Destino, Zona).
 