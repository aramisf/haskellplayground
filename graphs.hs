-- docs: https://hackage.haskell.org/package/containers-0.4.2.1/docs/Data-Graph.html
import Data.Graph

graph = buildG (1,4) [ (1, 2), (2, 3), (3, 1), (4, 1) ] -- (1, 5) -> ok, because it starts at 1
                                                        -- (5, 3) -> not ok,
                                                        -- because it starts at
                                                        -- 5, which is out of
                                                        -- bounds ;)

main = do
        print graph
        print $ vertices graph
        print $ edges graph
        print $ outdegree graph -- print each vertex outward degree of graph `graph`
        print $ indegree graph  -- print each vertex inward degree of graph `graph`
        print $ reachable graph 1 -- give me all verices reachable from vertex 1
        print $ reachable graph 4 -- give me all verices reachable from vertex 4
        print $ path graph 1 4  -- vertex 4 is reachable from vertex 1 on graph `graph?
        print $ path graph 4 2  -- vertex 2 is reachable from vertex 4 on graph `graph?

