fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fibs = 0 : 1 : [x + y | (x,y) <- zip fibs (tail fibs)]
