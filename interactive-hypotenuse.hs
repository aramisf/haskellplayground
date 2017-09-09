-- Calculating Hypotenuse:
-- Ask the user for the values of the two catheti, and calculates the triangle's
-- ypotenuse

hypotenuse :: IO()
hypotenuse = do
              putStr "Input first triangle's cathetus value: "
              c1 <- getLine
              putStr "Ok, now the second one: "
              c2 <- getLine
              let result = sqrt ((read c1 :: Float)^2 + (read c2::Float)^2)
              putStr "The hypotenuse's value is: "
              putStrLn (show result)

