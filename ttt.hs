{--
 Types:
 Num = Int | Float | Double
 Char, [Char]
 Bool = True | False
--}
-- Contexto Estático e Inferência
-- Funções Simples: (+) 1 1
-- Lambda
-- Listas: 2:[1,2,4,5]++[2]
-- head e tail
-- Sugar
-- take, filter, map
-- ListComprehensions
-- Recursão
-- Quicksort

l = [1..10]
listainfinita = [1..]


-- concatenação de listas
--1:2:4:[4,6,6] ++ [1,2,3,4]
-- head e tail
-- ListComprehensions
-- filter listCom,
-- take Recursão

filtro _ [] = []
filtro c (x:xs) = if c x
                     then x:filtro c xs
                     else filtro c xs

filtra condicao lista = [ item | item <- lista, condicao item]

mapeia funcao lista = [funcao x | x <- lista]

medah 0 _ = []
medah qtd (cabeca:rabo) = cabeca:medah (qtd-1) rabo

lsort = [5,100,7,3,1]

qs [] = []
qs (c:rabo) = qs(menores) ++ [c] ++ qs(maiores)
  where menores = filtra (<c) rabo
        maiores = filtra (>=c) rabo


--let qs [] = []; qs (c:rabo) = qs(filtra (<c) rabo) ++ [c] ++ qs(filtra (>=c) rabo)


