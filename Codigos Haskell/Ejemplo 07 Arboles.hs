-- Declaracion del tipo de datos ARbol --
data Tree = Leaf Int | Branch Int Tree Tree

-- Crea un arbol --
creaArbol = Branch 5 (Branch 3 (Leaf 1) (Leaf 4)) (Leaf 10)

-- Convertir un arbol en una lista --
generarLista (Leaf v) = [v]
generarLista (Branch v izq der) = (generarLista izq) ++ [v] ++ (generarLista der)