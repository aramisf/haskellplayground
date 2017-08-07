type Vertex = Int
-- TODO? ^^
--type Weight = Int
--type Edge = (Vertex, Vertex, Weight)
type Edge = (Vertex, Vertex)

type Graph = [Edge]

graph :: [Edge]
graph = [
          (1,2), (1,3), (1,4), (1,5),
          (2,6), (2,7),
          (4,8),
          (5,9)
        ]

adjacents :: Graph -> Vertex -> [Vertex]
adjacents [] _ = []
adjacents ((a,b):c) v | (a == v) = b:(adjacents c v)
                      | (b == v) = a:(adjacents c v)
                      | otherwise = adjacents c v


