-- takeWhile takes elements from a list while a given function returns true
take_while_even :: [Int] -> [Int]
take_while_even l = takeWhile even l


-- dropWhile drops elements from a list while a given function returns true
drop_while_odd :: [Int] -> [Int]
drop_while_odd l = dropWhile odd l
