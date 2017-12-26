{-
 - Introduction to Regexes in Haskell
 -}

import Text.Regex.Posix

-- patterns can contain what one would expect from regexes (a|b) [a-zA-Z]+ and
-- so on
pat = "haskell"

-- Returning boolean
matchesHaskellBool :: String -> Bool
matchesHaskellBool str = str =~ pat :: Bool

matchesHaskellInt :: String -> Int
matchesHaskellInt str = str =~ pat :: Int

matchesHaskellString :: String -> String
matchesHaskellString str = str =~ pat :: String
