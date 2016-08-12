quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = (quicksort lesser) ++ [x] ++ (quicksort greater)
  where lesser = filter (< x) xs
        greater = filter (>= x) xs


qsort [] = []
qsort (x:xs) = qsort [l | l<-xs, l < x] ++ [x] ++ qsort [r | r <- xs, r >= x]
