import System.Random

main :: IO()
main = do
        num <- randomRIO (1::Int,100)
        guess num

guess :: Int -> IO()
guess num = do
              putStr "\ntype a number between 1 and 100: "
              n <- getLine
              if (read n) < num
                then do
                  putStrLn "Oops, try a little higher.."
                  guess num

              else if (read n) > num
                then do
                  putStrLn "Oops, try a little lower.."
                  guess num

              else do putStrLn "you got it! Congrats man!!"

