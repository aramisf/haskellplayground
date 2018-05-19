-- let n > 1 be a natural number. Then we use LD(n) for the least natural number
-- greater than 1 that divides n. A number d divides n if there is a natural
-- number a with a·d = n. In other words, d divides n if there is a natural
-- number a with n = a, i.e., division of n by d leaves no remainder. Note that
-- LD(n) exists for d every natural number n > 1, for the natural number d = n
-- is greater than 1 and divides n. Therefore, the set of divisors of n that are
-- greater than 1 is non-empty. Thus, the set will have a least element.

-- Propositions:
-- if n > 1 then LD(n) is a prime number;
-- if n > 1 and n is not a prime number, then (LD(n))^2 <= n.

divides :: Int -> Int -> Bool
-- d divides n if (and only if) the remainder of n divided by n is zero
divides d n = rem n d == 0


-- LD(n)
ld :: Int -> Int
ld n = ldf 2 n

-- LDF(2)(n) -> add LD(n) >= 2
ldf :: Int -> Int -> Int
ldf k n   | divides k n = k
          | k^2 > n = n
          | otherwise = ldf (k+1) n


prime0 :: Int -> Bool
prime0 n  | n < 1 = error "not a positive integer"
          | n == 1 = False
          | otherwise = ld n == n
