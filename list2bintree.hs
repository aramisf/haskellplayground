{-
 - Creates a binary search tree (BST) out from a given list
 -}

data Tree t = Null | Node (Tree t) t (Tree t)
    deriving (Show)


-- Creates a BST
make_tree :: (Ord t) => [t] -> Tree t
make_tree [] = Null
make_tree (x:xs) = make_aux_tree (Node Null x Null) xs
          where
            -- if current list is empty, return the tree itself
            make_aux_tree tree [] = tree

            -- otherwise runs through the list inserting each node on its place,
            -- returning a tree
            make_aux_tree tree (y:ys) = make_aux_tree (insert tree y) ys


insert :: (Ord t) => Tree t -> t -> Tree t
insert Null e = Node Null e Null
insert (Node t1 x t2) e | (x < e) = Node t1 x (insert t2 e)
                        | (x > e) = Node (insert t1 e) x t2
                        | otherwise = (Node t1 x t2)
