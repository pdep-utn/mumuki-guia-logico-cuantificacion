En Prolog, por defecto todoa variable libre está cuantificada existencialmente. Pero el `forall` cambia esto y las cuantifica universalmente. 

Como moraleja: para estar libre de problemas, siempre que utilicemos `forall`, la primera consulta que le pasamos **debe* tener exactamente una variable libre. 
