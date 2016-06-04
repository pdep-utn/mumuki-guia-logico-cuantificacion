En Prolog, por defecto todoa variable libre está cuantificada existencialmente. Pero el `forall` cambia esto y las cuantifica universalmente.

Como moraleja: para estar libre de problemas, siempre que utilicemos `forall`, la primera consulta que le pasamos **debe* tener por lo menos una variable libre (lo más normal es que sea sólo una). 