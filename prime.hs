prime = sieve [2..]

sieve [] = []
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0 ]
