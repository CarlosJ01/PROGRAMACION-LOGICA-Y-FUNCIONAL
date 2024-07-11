-- Borrar el n esimo elemento de una lista --
borrarN [] n = []
borrarN (x:xs) 0 = xs
borrarN (x:xs) n = x : (borrarN xs (n-1))

borrarN2 [] n = []
borrarN2 (x:xs) n = if (n >= 0) then 
                        xs
                    else
                        x:(borrarN2 xs (n-1))