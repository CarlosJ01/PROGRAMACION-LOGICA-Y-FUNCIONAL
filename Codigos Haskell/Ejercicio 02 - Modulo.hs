-- Modulo de una division --
-- 7/3 = 7-3 = 4-3 = 1 --
-- 10/4 = 10-4 = 6-4 = 2 --
-- 8/2 = 8-2 = 6-2 = 4-2 = 2-2 = 0 --

-- n/m = modulo--
modulo n m = if(n < m) then n
            else modulo (n - m) m 