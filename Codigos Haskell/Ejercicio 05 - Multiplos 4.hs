-- Dado n, determine cuantos múltiplos de 4 hay en la serie de 1 .. n --

multiploCuatro n =  if ((mod n 4) == 0) then True
                    else False

contarMultiplos 0 = 0
contarMultiplos n = if ((multiploCuatro n) == True) 
                        then 1 + (contarMultiplos (n-1))
                    else 
                        0 + (contarMultiplos (n-1))