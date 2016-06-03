test('no puedeLlevar(mariano, fede)'):-
  \+ puedeLlevar(mariano, fede).
  
test('no puedeLlevar(fede, fede)'):-
  \+ puedeLlevar(fede, fede).
  
test('puedeLlevar(fede, mariano)'):-
  puedeLlevar(fede, mariano).
  
test('no puedeLlevar(fede, victoria)'):-
  \+ puedeLlevar(fede, victoria).