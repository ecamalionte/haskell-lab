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


mymap _ _ [] = []
mymap f g (a:b:xs) = f a : g b : mymap f g xs

