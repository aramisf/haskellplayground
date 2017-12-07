import Control.Concurrent

-- perfect-numbers.hs
dividers :: Int -> [Int]
dividers n = [ x | x <- [ 1 .. n-1 ], mod n x == 0 ]


isPerfect :: Int -> Bool
isPerfect n | (sum (dividers n) == n) = True
            | otherwise = False

perfectsUpTo :: Int -> [Int]
perfectsUpTo n = [ x | x <- [1 .. n], isPerfect x ]
-- /perfect-numbers.hs

main = do
        forkIO $ do {
          putStrLn ("Calculating perfect numbers up to 10k...");
          putStrLn ("Perfect numbers: " ++ (show (perfectsUpTo 10000)));
          putStrLn ("Finished calculating perfect numbers :)");
        }
        forkIO $ do {
          -- suspending thread execution for 3s
          threadDelay 3000000;
          putStrLn ("\nStarting second thread...");
          threadDelay 2000000;
          putStrLn ("\nSecond thread finished.");
        }
        threadDelay 30000000;
        putStrLn("All threads ended");

