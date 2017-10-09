myWriter :: IO()
myWriter = do
            writeFile "written-file.txt" "Do you want to learn some Haskell?"
            putStrLn "Finished writing on file"

myReader :: IO()
myReader = do
            content <- readFile "test.txt"
            putStrLn content

myAppender :: IO()
myAppender = do
              appendFile "test.txt" "Appended text\n"
              putStrLn "Done appending"
