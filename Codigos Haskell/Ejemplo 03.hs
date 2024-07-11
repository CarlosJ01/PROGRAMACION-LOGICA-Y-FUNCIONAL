-- En la secuencia de 1 a n, dado n=30, indicar cuantos primos hay --
-- P1 -> de 30 a 1 comparando si es primo uno por uno --
-- P2 -> funcion para saber si es primo --

numeroDivisible x 1 = 1
numeroDivisible x c = if ((mod x c) == 0) then 1 + numeroDivisible x (c-1)
                else 0 + numeroDivisible x (c-1)

primo x =   if ((numeroDivisible x x) == 2) then True
            else False


cuentaPrimos 1 = 0
cuentaPrimos x =    if(primo x == True) then 1 + cuentaPrimos(x-1)
                    else 0 + cuentaPrimos(x-1)