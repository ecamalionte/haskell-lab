list = [3]

list2 = 4:list

list3 = [1..10]

l = [0,1,1,2,3]
--tail l
--head l
--zip l l
--zip l (tail l)



--person = (1, "Eric Camalionte", ["surf", "skate", "guitar"] )
data Person = Person {person_id :: Int, name :: String, hobbies :: [String] } deriving Show
person = Person 12 "Eric Camalionte" ["surf", "skate"]

prime = sieve [2..]
sieve [] = []
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0 ]




fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fibs = 0 : 1 : [x + y | (x,y) <- zip fibs (tail fibs)]


mymap _ _ [] = []
mymap f g (a:b:xs) = f a : g b : mymap f g xs


--quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = (quicksort lesser) ++ [x] ++ (quicksort greater)
  where lesser = filter (< x) xs
        greater = filter (>= x) xs


--qsort (p:xs) = qsort [x | x <- xs, x < p ] ++ [p] ++ qsort [x | x <- xs, x >= p]
qsort (p:xs) = qsort [x | x<-xs, x<p] ++ [p] ++ qsort [x | x<-xs, x>=p]



