-- Borrar los elementos impares de una lista --
eliminarImparesLista [] = []
eliminarImparesLista (x:xs) =   if (odd x) then
                                    eliminarImparesLista xs
                                else
                                    x:(eliminarImparesLista xs)
                                    