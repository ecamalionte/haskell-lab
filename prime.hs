
prime = sieve [2..]

sieve [] = []
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0 ]

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fibs = 0 : 1 : [x + y | (x,y) <- zip fibs (tail fibs)]


repeat' x = xs
  where xs = x : xs


data Tree a = Leaf
          | Node (Tree a) a (Tree a)
          deriving Show

repeatTree x = Node t x t
  where t = repeatTree x
