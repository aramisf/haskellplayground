type Name = String
type Language = String
type College = String

data Person = Programmer Name Language | Student Name College
                deriving(Show) -- Needed to print data whe any data instance is called


programmer = Programmer "Aramis" "Haskell"
student = Student "Aramis" "UFPR"

is_programmer :: Person -> Bool
is_programmer (Programmer _ _) = True
is_programmer _ = False

is_student :: Person -> Bool
is_student (Student _ _) = True
is_student _ = False
