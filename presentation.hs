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


x // y =
    x >>= (\a ->
       y >>= (\b ->
         if b == 0 then Nothing else Just (a / b)))

x /// y = do
  top <- x
  bottom <- y
  if bottom == 0 then Nothing else Just (top/bottom)


invalidRequest = Nothing
validRequest = Just "some http request /products"
hackerattack = Just "hacker attack"

route  Nothing = Nothing
route mx = do
    x <- mx
    case getRoute(x) of
      Products -> return successResponse
      Unknow   -> return unknowResponse
      Attack   -> return attackResponse

validate Nothing = Nothing
validate mx = do
  x <- mx
  case x of
    "hacker attack" -> Nothing
    x -> mx


data Request a = HttpRequest a | Error String



cat file = readFile file
grep word content =
  if word == "error" then fail "something wrong"
  else return (filter (==word) (words content))

wc_l xs = (return . length) xs

main = do
  content <- cat "test.txt"
  greped  <- grep "error" content
  count   <- wc_l greped
  return count

main2 = cat "test.txt" >>=
  (\a -> grep "locaneers" a) >>=
    (\b -> wc_l b) >>=
      (\c -> return c)


successResponse = ["Hosting", "EmailMkt", "Site Creator", "..."]
attackResponse = ["password: 84848884444", "creditcard: 222"]
unknowResponse = ["404"]

parseHttp content = words content

getRoute content = do
   let parsed = parseHttp content
   if elem "/products" parsed
     then Products
     else if elem "attack" parsed
       then Attack
       else Unknow

data Commands = Products | Attack | Unknow
