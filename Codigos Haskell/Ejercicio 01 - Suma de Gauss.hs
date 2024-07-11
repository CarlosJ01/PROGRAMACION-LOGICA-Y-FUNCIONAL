--- Suma de Gauss 5 = 5+4+3+2+1 ---
sumaGauss1 1 = 1
sumaGauss1 n = n + (sumaGauss1 (n-1))

sumaGauss2 n = if (n == 1) then 1
                else n + (sumaGauss2 (n-1))

sumaGauss3 n
    | (n == 1) = 1
    | otherwise = n + (sumaGauss3 (n-1))