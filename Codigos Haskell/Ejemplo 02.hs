-- Funcion potencia --

potencia b e = if(e==0) then 1
                else b * potencia b (e-1)

poten b 0 = 1
poten b e = b * (poten b (e-1))

-- Fibonashi --
fibo 0 = 0
fibo 1 = 1
fibo n = fibo (n-1) + fibo (n-2)

-- Division Entera sin usar operadores predefinidos -- 
divide num den = if (num < den ) then 0
                else 1 + divide (num - den) den 