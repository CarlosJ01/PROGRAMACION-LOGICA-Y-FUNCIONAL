-- LISTAS --
-- [1, 2, 3] , ['a', 'b', 'c'], ["hola", "a", "todos"]

-- X:[A, B] -> Añade X a la lista -> [X, A, B] --
-- length -> tamaño de una lista
-- head -> primer elemento de una lista
-- tail -> ultimo elemento de una lista

-- [] Sabemos que la lista esta vacia
-- (x:xs) representa una lista con un elemento de cabeza y una cola, X-> cabeza y XS -> sublista

-- Largo de una lista --
largoLista [] = 0
largoLista (x:xs) = 1 + (largoLista xs)

-- Suma de los valores de una lista --
sumaLista [] = 0
sumaLista (x:xs) = x + (sumaLista xs)

-- Pedir el enesimo valor en la pocision n --
valPos [] i = (-1)
valPos (x:xs) 0 = x
valPos (x:xs) i = valPos xs (i-1)

valPosIf [] i = (-1)
valPosIf (x:xs) i = if (i == 0)
                    then x
                else
                    valPosIf xs (i-1)