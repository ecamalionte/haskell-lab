a = 1
foo = a + 1

minhamain = do
  let a = 3
  let fff = a + 2
  fff



garoto [] = 0
garoto [a] = a
garoto (a:b:xs) = a - b + (garoto xs)
