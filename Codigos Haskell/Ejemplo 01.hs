-- Funcion factorial, notese los
-- Argumentos currificados
factorial 1 = 1
factorial n = n * (factorial (n-1))

fact n = if (n == 1) then 1
        else n * (fact (n-1))

fac n
    | (n==1) = 1
    | otherwise = n * (fac (n-1))