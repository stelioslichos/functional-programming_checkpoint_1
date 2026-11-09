--s3 find the minimum of two orderable elements
minOfTwo :: Ord a => a -> a -> a
minOfTwo x y
        | x > y = y
        | otherwise = x