test('viveEn(mariano, avellaneda)') :-
   viveEn(mariano, avellaneda).

test('viveEn(fede, avellaneda)') :-
   viveEn(fede, avellaneda).
   
test('viveEn(victoria, versalles)') :-
   viveEn(victoria, versalles).
   
test('viveEn(tomas, nuniez)') :-
   viveEn(tomas, nuniez).

test('no viveEn(tomas, versalles)') :-
   \+ viveEn(tomas, versalles).

test('quedaEn(utn, almagro)') :-
   quedaEn(utn, almagro).

test('quedaEn(utn, villaLugano)') :-
   quedaEn(utn, villaLugano).

test('quedaEn(exactas, nuniez)') :-
   quedaEn(exactas, nuniez).

test('quedaEn(racing, avellaneda)') :-
   quedaEn(racing, avellaneda).

test('not quedaEn(racing, palomar)') :-
   \+ quedaEn(racing, palomar).

