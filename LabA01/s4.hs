--s4 tell if a number is positive, negative or zero
tellSignNum :: (Ord a, Num a) => a -> String
tellSignNum x
        | x > 0 = "Positive"
        | x < 0 = "Negative"
        | otherwise = "Zero"