import Test.QuickCheck

name = "hannah"
name2 = "hana"
reversed = "hannah"

test x = reversed == (reverse name)
test2 x = reversed == name
test3 x = reversed == name2

main = do
      quickCheck( test :: [Int] -> Bool)
      quickCheck( test2 :: [Int] -> Bool)
      quickCheck( test3 :: [Int] -> Bool)

