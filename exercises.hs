-- Concatenating two lists
myConcat :: [a] -> [a] -> [a]
myConcat x [] = x
myConcat [] y = y
myConcat (x:xs) y = x : myConcat xs y


-- Reversing a list
my_reverser :: [a] -> [a]
my_reverser [] = []
my_reverser (x:xs) = (my_reverser xs) ++ [x]


-- Operating with types
type Person = String
type Car = String
type Age = Int
type Register = (Person, Car, Age)
type BD = [Register]

func_bd :: BD
func_bd = [("Fulano", "Maveco", 20), ("Beltrano", "Opalao", 30), ("Cicrano", "Gol Bola", 25)]

getName :: Register -> Person
getName (n, _, _) = n

getCars :: BD -> [Car]
getCars [] = [] -- func_db is a list!
getCars ((_, car, _):xs) = car : getCars xs

