{- install `diff` package with `cabal install diff` -}

import Data.Algorithm.Diff

main = do
    f1 <- readFile "file1.txt"
    f2 <- readFile "file2.txt"

    -- split one line into a list of lines, using '\n' as separator
    let
      f1_list = lines f1
      f2_list = lines f2

    print $ getDiff f1_list f2_list
