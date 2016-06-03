test('sonVecinos(mariano, fede)') :-
  sonVecinos(mariano, fede).
  
test('sonVecinos(fede, mariano)') :-
  sonVecinos(fede, mariano).
  
test('no son sonVecinos(rodrigo, victoria)') :-
  \+ sonVecinos(rodrigo, victoria).

test('no son sonVecinos(victoria, victoria)') :-
  \+ sonVecinos(victoria, victoria).

test('no son sonVecinos(rodrigo, rodrigo)') :-
  \+ sonVecinos(rodrigo, rodrigo).