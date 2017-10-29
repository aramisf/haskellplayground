fat :: Int -> Int
fat n | (n > 0) = n * fat (n-1)
      | otherwise = 1

factorialIO :: IO()
factorialIO = do
                putStr "Type a number: "
                num <- getLine
                putStr "Result is: "
                print (fat (read num))
