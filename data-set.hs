import Data.Set

text = "o jardineiro eh jesus e as arveres samos nozes. O jardineiro eh Jesus, e as arvoroso somos noiz"
list = [1,2,3,4,4,3,2,1,1,2,3,1,2,1,2,3,2,3,4,1,2]

mySet t = fromList t

l1 = [1,2,3,4]
l2 = [3,4,5,6]

s1 = fromList l1
s2 = fromList l2

myInstersect a b = intersection a b

myDiff a b = difference a b

--  (intersectComplement s2 s1) == (intersectComplement s1 s2) -> True
intersectComplement a b = union (myDiff a b) (myDiff b a)
