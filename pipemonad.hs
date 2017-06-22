cat file = readFile file

grep word content =
  if word == "error" then fail "something wrong"
  else return (filter (==word) (words content))

wc_l xs = (return . length) xs

main = cat "test.txt" >>=
  (\a -> grep "error" a) >>=
    (\b -> wc_l b) >>=
      (\c -> return a)

main2 = do
  content <- cat "test.txt"
  greped  <- grep "error" content
  count   <- wc_l greped
  return count
