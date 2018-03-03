-- These are examples of partial function application. Both functions are
-- equivalent, but written sligthly different

-- max :: Ord a => a -> a -> a
-- cos :: Floating a => a -> a
cosMaxDollarSign :: (Ord a, Floating a) => a -> a
cosMaxDollarSign x = cos $ max 50 x

-- this is also a 'partially applied function', because it returns a function
-- that receives one argument, as the function above, but this one is somehow
-- 'implicit'
cosMaxDotNotation :: (Ord a, Floating a) => a -> a
cosMaxDotNotation = cos . max 50

