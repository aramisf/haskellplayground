type Name = String
type Age = Int
type Language = String
type Person = (Name, Age, Language)

person :: Person

person = ("Joe", 50, "Haskell")

myFst :: Person -> Name
myFst (n, _, _) = n
