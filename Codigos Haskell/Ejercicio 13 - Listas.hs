-- Hacer una función para eliminar de una lista el valor más pequeño y el más grande --
-- borraMinMax [3,4,5,6,3]  => [4,5] --
borraMinMax [] = []
borraMinMax (x:xs) = let
                    minimoLista = (minimo (x:xs) x)
                    maximoLista = (maximo (x:xs) x)
                 in
                    (borrar2Lista (x:xs) minimoLista maximoLista)

minimo [] min = min
minimo (x:xs) min = if(x <= min) then
                       (minimo xs x)
                    else
                        (minimo xs min)
maximo [] max = max
maximo (x:xs) max = if(x >= max) then
                        (maximo xs x)
                    else
                        (maximo xs max)

borrar2Lista [] val1 val2 = []
borrar2Lista (x:xs) val1 val2 = if (x == val1 || x == val2) then
                                    (borrar2Lista xs val1 val2)
                                else
                                    x:(borrar2Lista xs val1 val2)