test('no loLleva(mariano, fede)'):-
  \+ loLleva(mariano, fede).
  
test('no loLleva(fede, fede)'):-
  \+ loLleva(fede, fede).
  
test('loLleva(fede, mariano)'):-
  loLleva(fede, mariano).
  
test('no loLleva(fede, victoria)'):-
  \+ loLleva(fede, victoria).