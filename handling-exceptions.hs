import Control.Exception
import System.IO.Error

myFileRead :: IO()
myFileRead  = do
                { catch (fileReader) errorHandler }
                where
                  fileReader = do
                  {
                    putStr "Provide a file name: ";
                    fileName <- getLine;
                    content <- readFile fileName;
                    --return (read content)
                    putStr content
                  }
                  -- learn more about other errors with
                  -- `:t System.IO.Error.<tab>`
                  errorHandler err = if isDoesNotExistError err then do
                  {
                    putStrLn "Error: file does not exist"
                  }
                  else ioError err
