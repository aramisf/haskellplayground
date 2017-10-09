import System.IO

read_file :: IO()
read_file = do
            file <- openFile "test.txt" ReadMode
            content <- hGetContents file
            putStrLn content
            hClose file

