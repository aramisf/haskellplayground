main :: IO ()
main = do
        putStr "Input a number: "
        a <- getLine
        putStr "Ok, input another one: "
        b <- getLine
        putStrLn (show (read a + read b))
