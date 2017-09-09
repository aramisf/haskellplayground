-- Counts Adenins, Citosins, Guanins and Tmines on a given DNA sequence

main :: IO ()
main = do
        putStr "Type a DNA sequence: "
        dna <- getLine
        putStrLn ("Adenin: " ++ show (count_dna 'A' (show dna)))
        putStrLn ("Timin: " ++ show (count_dna 'T' (show dna)))
        putStrLn ("Citosin: " ++ show (count_dna 'C' (show dna)))
        putStrLn ("Guanin: " ++ show (count_dna 'G' (show dna)))

count_dna :: Char -> String -> Int
count_dna _ [] = 0
count_dna c (x:xs)  | (c == x) = 1 + (count_dna c xs)
                    | otherwise = count_dna c xs
