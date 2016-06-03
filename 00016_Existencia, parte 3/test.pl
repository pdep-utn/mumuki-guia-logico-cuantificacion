test('destinosProximos(exactas, river)') :-
  destinosProximos(exactas, river).
  
test('destinosProximos(river, exactas)') :-
  destinosProximos(river, exactas).
  
test('no son destinosProximos(river, river)') :-
  \+ destinosProximos(river, river).
  
test('no son destinosProximos(utn, racing)') :-
  \+ destinosProximos(utn, racing).