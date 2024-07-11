-- Dada una lista encontrar el valor  mayor en ella --
-- mayor [3,4,5,7]  =>  7 --
mayorLista [] = 0
mayorLista (x:xs) = if (x > (mayorLista xs)) then x
                    else mayorLista xs