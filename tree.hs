import Data.Tree

tree = Node "r" [ Node "a" [ Node "c" [], Node "d" [] ], Node "b" [ Node "e" [] ] ]

main = do
    print tree
    putStrLn "---"
    print $ levels tree

