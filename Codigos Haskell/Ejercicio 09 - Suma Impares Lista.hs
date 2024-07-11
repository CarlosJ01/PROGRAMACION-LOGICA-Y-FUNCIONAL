-- Sumar impares de una lista --
-- Desarrollar una función para realizar la suma de los valores impares de una lista. --
-- Por ejemplo, si la lista es: [1,2,3,4,5] la suma es 9 --

sumaImparesLista [] = 0
sumaImparesLista (x:xs) =   if ((odd x))
                                then x + (sumaImparesLista xs)
                            else
                                sumaImparesLista xs