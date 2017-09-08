-- Example 1.12 Here is a function that calculates the average of a list of
-- integers. The average of m and n is given by (m+n)/2 , the average of a list
-- of k integers n1+...+nk is given by (n1+...+nk)/2. In general, averages are
-- fractions, so the result type of average should not be Int but the Haskell
-- data-type for floating point numbers, which is Float. There are predefined
-- functions sum for the sum of a list of integers, and length for the length of
-- a list. The Haskell operation for division / expects arguments of type Float
-- (or more precisely, of Fractional type, and Float is such a type), so we need
-- a conversion function for converting Ints into Floats.
-- This is done by fromInt.The function average can now be written as:

average :: [Int] -> Float
average [] = error "empty list"
-- Had to use the `toInteger` to match expected type on `fromInteger`, that
-- makes it possible to use the Float divider / on two Int
average l = fromInteger(toInteger (sum l)) / fromInteger(toInteger (length l))


-- Now a hand-made version, where the types can be controlled:
homeMadeAvg :: [Int] -> Float
homeMadeAvg [] = 0
homeMadeAvg l = mySum l / myLength l

mySum :: [Int] -> Float
mySum [] = 0
mySum (x:xs) =
