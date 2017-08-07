module FifoTest where
import Fifo

to_list :: Fifo t -> [t]
to_list fifo  | ((empty fifo) == True) = []
              | otherwise = (first fifo):(to_list (remove fifo))
