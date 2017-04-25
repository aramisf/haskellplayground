data BinTree = Null | Node Int BinTree BinTree deriving(Show)

t = (
      Node 1  (Node 2 (Node 4 Null Null) (Node 5 Null Null))
              (Node 3 (Node 6 Null Null) Null)
    )


top_down :: BinTree -> [Int]
top_down Null = []
top_down (Node n t1 t2) = top_down(t1) ++ [n] ++ top_down(t2)


in_order :: BinTree -> [Int]
in_order Null = []
in_order (Node n t1 t2) = [n] ++ in_order(t1) ++ in_order(t2)
