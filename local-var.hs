checkNum :: Int -> IO()
checkNum num = let magicNumber = 42
                in if num == magicNumber
                    then putStrLn "Ok"
                    else putStrLn "Try again"
