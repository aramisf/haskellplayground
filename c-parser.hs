-- Install library with `cabal install language-c`

import Language.C

main = do
    r <- parseCFilePre "file1.c"

    case r of
      Left err -> print err
      Right ast -> do
        print ast
        putStrLn "---\nAnd here the pretty print of the Abstract Syntatic Tree:"
        print $ pretty ast


