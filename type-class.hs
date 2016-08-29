data Car = Nooo | Car { company :: String
                      , model :: String
                      , year :: Int
                      , other :: [Car]
                      } deriving Show

data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show
mytree = Branch ( Leaf 3) ( Branch (Leaf 4) (Leaf 5) )

data NodeTree a = Node String a | Cluster [ NodeTree a ] deriving Show
datacenter = Node "Load Balancer" (Cluster [Node "server" "CPRO002", Node "server" "CPRO001"])

addNode (Cluster nodes) node = Cluster (node:nodes)
cluster = Cluster [Node "123" "cpro"]
node = Node "345" "cpro"

--car1 = Car { company = "abc", model = "model" , year = 12, other = [] }
--car2 = Car { company = "asdfsdfbc", model = "model" , year = 12, other=[car1]  }

--data Customer = Customer Int String deriving Show
--data Person = Person Int String deriving Show
--class Human a where
--  getId :: a -> Int

--instance Human Person where
--  getId (Person id name) = id

--instance Human Customer where
--  getId (Customer id name) = id
p = Person 1 "One Person"
c = Customer 2 "Eric Customer"

data Human = Customer Int String | Person Int String deriving Show

--getId :: Human -> Int
getName :: Human -> String
getName a = case a of
              (Customer _ name) -> name
              (Person   _ name) -> name

--boo :: Human -> Int
--boo a = getId a

getId (Person id _) = id
getId (Customer id _) = id

--getName (Person _ name) = name
--getName (Customer _ name) = name

data Repository = RepoFromDatabase { query::String} | RepoFromFile {fileName:: String} 

find (RepoFromDatabase query) = (1, "Eric Camalionte", "Haskell")
find (RepoFromFile file) = (2, "asdfasdf", "asdfasdfasdf")


