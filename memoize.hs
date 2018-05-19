{- Define a higher-order function (or a function object) memoize in your
favorite language. This function takes a pure function f as an argument and
returns a function that behaves almost exactly like f, except that it only
calls the original function once for every argument, stores the result
internally, and subsequently returns this stored result every time it’s called
with the same argument. You can tell the memoized function from the original by
watch- ing its performance. For instance, try to memoize a function that takes
a long time to evaluate. You’ll have to wait for the result the  rst time you
call it, but on subsequent calls, with the same argument, you should get the
result immediately. -}


--memoized :: [(Int, Int)]
memoized = []

addTo :: (Int, Int) -> [(Int, Int)] -> [(Int, Int)]
addTo (a,b) list  | (elem (a,b) list) = list
                  | otherwise = (a,b):list

fetchMemoized :: Int -> [(a,a)] -> Int
fetchMemoized n [] = 0
fecthMemoized n ((a,b):xs) | (n == a) = b
                           | otherwise = fetchMemoized n xs

fac :: Int -> Int
fac x | (x > 1) = x * fac (x-1)
      | otherwise = 1

memoize :: Int -> Int -> Int
memoize f n =
        if (elem n memoized) then
          fetchMemoized n memoized
        else do
          let result = f n
          let m = addTo (n, result) memoized
          let memoized = m
          result


