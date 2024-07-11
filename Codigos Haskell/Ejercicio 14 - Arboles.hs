-- Dado un árbol binario, escribir las funciones para recorrerlo y obtener la suma de sus elementos. --
data Tree = Leaf Int | Branch Int Tree Tree

-- Crea un arbol --
creaArbol = Branch 5 (Branch 3 (Leaf 1) (Leaf 4)) (Leaf 10)

-- Recorrer un arbol --
recorrerArbol (Leaf v) = [v]
recorrerArbol (Branch v izq der) = recorrerArbol izq ++ [v] ++ recorrerArbol der

-- Suma de elementos de un arbol --
sumaELementosArbol (Leaf v) = v
sumaELementosArbol (Branch v izq der) = v + sumaELementosArbol izq + sumaELementosArbol der

