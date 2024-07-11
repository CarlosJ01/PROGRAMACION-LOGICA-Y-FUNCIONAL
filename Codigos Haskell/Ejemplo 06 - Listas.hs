-- Notacion LET --
{- 
prom 1 = let
            s = suma 1
            c = largo 1
        in
            s/c
prom 1 = (suma 1) / (largo 1)
-}
-- Suma de indices multiplos de n --
-- Empezando en 1 --

sumaPosMultN xs n = sumaPos xs n 1

sumaPos [] n  i = 0
sumaPos (x:xs) n i = if ((mod i n) == 0)
                        then x +  (sumaPos xs n (i+1))
                    else
                        sumaPos xs n (i+1)  