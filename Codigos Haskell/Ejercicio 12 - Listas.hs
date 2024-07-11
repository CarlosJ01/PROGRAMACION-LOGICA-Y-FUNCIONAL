-- Escriba una funcion para sumar los numeros en posicion par de una lista --
sumaParPosLista xs = sumaPosPar xs (length xs - 1)

sumaPosPar [] i = 0
sumaPosPar (x:xs) i =   if (odd i == False) 
                            then x + (sumaPosPar xs (i-1))
                        else
                            sumaPosPar xs (i-1)

-- Escriba una funcion para obtener el promedio de una lista --
promedioLista xs = fromIntegral(sumaLista xs) / fromIntegral(length xs)

sumaLista [] = 0
sumaLista (x:xs) = x + (sumaLista xs)