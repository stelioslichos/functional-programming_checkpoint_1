--s5 the product of all numbers in a list
myProduct :: Num a => [a] -> a
myProduct []     = 1
myProduct (x:xs) = x * myProduct xs

-- TCO solution

-- myProduct :: Num a => [a] -> a
-- myProduct ls = go 1 ls
--     where
--         go :: Num a => a -> [a] -> a
--         go acc []     = acc
--         go acc (x:xs) = go (acc * x) xs