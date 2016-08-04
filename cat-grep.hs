cat file = readFile file

grep word content = return (filter (==word) (words content))

wc_l xs = (return . length) xs

flow = do
  content <- cat "test.txt"
  greped  <- grep "locaneers" content
  count   <- wc_l greped
  return count

flow2 = cat "test.txt" >>=
  (\a -> grep "locaneers" a) >>=
    (\b -> wc_l b) >>=
      (\c -> return c)

