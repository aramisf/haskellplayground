import System.IO

write :: IO()
write = do
          file <- openFile "myWrittenText.txt" WriteMode
          hPutStrLn file "first line"
          hPutStrLn file "second line"
          hPutStrLn file "third line"
          hFlush file -- Clean the buffer
          putStrLn "Hey, I've just wrote a file for you"
          hClose file
