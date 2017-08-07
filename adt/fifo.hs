module Fifo where
data Fifo t = F [t]
              deriving (Show)

newFifo :: Fifo t
newFifo = F []

getFifo = F [1,2,3,4]

insertFifo :: Fifo t -> t -> Fifo t
insertFifo (F list) n = F (list ++ [n])

remove :: Fifo t -> Fifo t
remove (F []) = error "Empty FIFO :("
remove (F (x:xs)) = F xs

first :: Fifo t -> t
first (F []) = error "Empty FIFO :("
first (F (x:xs)) = x

empty :: Fifo t -> Bool
empty (F []) = True
empty _ = False
