data Season = Summer
              | Autumn
              | Winter
              | Spring
              | None
                deriving(Eq, Show)

season :: Int -> Season
season s
          | (s == 1) = Spring
          | (s == 2) = Summer
          | (s == 3) = Autumn
          | (s == 4) = Winter
          | otherwise = None
