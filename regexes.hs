{-
 - Introduction to Regexes in Haskell
 -}

import Text.Regex.Posix

-- patterns can contain what one would expect from regexes (a|b) [a-zA-Z]+ and
-- so on
pat = "haskell"

-- Base matcher constructor
-- This type is automatic inferred after successful compilation on GHCi. It
-- happens after the first usage of the function, on line 19
--baseMatcher :: [Char] -> String -> Bool
baseMatcher = \reg word -> word =~ reg

-- matcher for haskell
haskellMatcher :: String -> Bool
haskellMatcher = \word -> baseMatcher pat word

-- One for Perl
perlMatcher :: String -> Bool
perlMatcher = \word -> baseMatcher "perl" word


-- Returning boolean
matchesHaskellBool :: String -> Bool
--matchesHaskellBool str = str =~ pat :: Bool
matchesHaskellBool = \word -> baseMatcher pat word  -- this works for the boolean type inferred above
--matchesHaskellBool w = haskellMatcher w

matchesHaskellInt :: String -> Int
-- but this one will only work if the Boolean version above was not defined
-- earlier
-- matchesHaskellInt = \word -> (baseMatcher pat word) :: Int
-- So, we end up with this version:
matchesHaskellInt str = str =~ pat :: Int

-- Same from above
matchesHaskellString :: String -> String
matchesHaskellString str = str =~ pat :: String
