-- This tests wheter the machine thinks it reached zero.
zero :: (Ord t, Fractional t) => t -> t
zero n  | (n + 1 > 1) = zero (n/2)
        | otherwise = n


-- Compare to the C program:
-- #include <stdio.h>
--
-- int main () {
--   double i = 1.0;
--   while (i + 1 > 1) {
--     i /= 2.0;
--   }
--   printf("I think %1.70f is 0\n", i);
--   return 0;
-- }
