-- Read and integer from user input, tell if the given number is prime, print
-- its factorial and also the fibonacci sequence up to the number corresponding
-- to the position given by the factorial. For example, if N = 3, print:
-- -> 3 is prime
-- -> 3! = 6
-- -> 0 1 1 2 3 5

auxPrime :: Int -> Int -> Bool
auxPrime n m  | m*m >= n = True
              | mod n m == 0 = False
              | otherwise = auxPrime n (m+2)

isPrime :: Int -> Bool
isPrime n | (n < 2) = False
          | (n == 2) = True
          | (mod n 2 == 0) = False
          | otherwise = auxPrime n 3

primeOneLiner :: Int -> Bool
-- read about numbers here: https://wiki.haskell.org/Generic_number_type
primeOneLiner n = if ((length [ x | x <- [ 1 .. (truncate (sqrt (fromIntegral n)) + 1) ], mod n x == 0 ]) > 1) then False else True


fac :: Int -> Int
fac 1 = 1
fac n | (n < 1) = 1
      | otherwise = n * fac (n-1)

fib :: Int -> Int
fib 1 = 0
fib 2 = 1
fib n | (n < 1) = 0
      | otherwise = fib (n-1) + fib (n-2)

fibList :: Int -> [Int]
fibList n = [ fib x | x <- [ 1 .. n ] ]

fibListLong :: Int -> [Int]
fibListLong n = [ fib x | x <- [ 1 .. (fac n) ] ]

main :: IO()
main = do
        putStr "Type in an integer: "
        n <- getLine
        --if (isPrime (read n))
        if (primeOneLiner (read n))
          then do
            putStrLn (n ++ " is prime")
        else
            putStrLn (n ++ " is NOT a prime")

        putStr n
        putStr "! == "
        putStrLn (show (fac (read n)))
        -- It is too damn long
        putStrLn (show (fibListLong (read n)))


