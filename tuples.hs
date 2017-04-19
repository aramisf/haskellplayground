func :: (Int, Int) -> (Int, Int) -> (Int, Int)
func (a,b) (c,d) = (a+c, b+d)

names :: (String, String, String)
names = ("aramisf", "developer", "haskell")

first (x, _, _) = x
sec (_, y,  _) = y
third (_, _, z) = z


