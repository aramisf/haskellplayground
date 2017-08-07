type Vertex = Int
type Weight = Int
type Edge = ((Vertex, Vertex), Weight)

type Graph = [Edge]

graph :: [Edge]
graph = [
          ((1,2),1), ((1,3),2), ((1,4),3), ((1,5),4),
          ((2,6),6), ((2,7),7),
          ((4,8),5),
          ((5,9),4)
        ]

adjacents :: Graph -> Vertex -> [(Vertex, Weight)]
adjacents [] _ = []
adjacents (((a,b),w):c) v | (a == v) = (b,w):(adjacents c v)
                          | (b == v) = (a,w):(adjacents c v)
                          | otherwise = adjacents c v


pathExists :: Graph -> Vertex -> Vertex -> Bool
pathExists g v1 v2  | belongs_to (adjacents g v1) v2 == True = True
                    | otherwise = [ pathExists g v2 x | (x,w) <- adjacents g v2 ]


belongs_to :: [(Vertex, t)] -> Vertex -> Bool
belongs_to [] _ = False
belongs_to ((v,w):xs) e | (v == e) = True
                        | otherwise = belongs_to xs e
