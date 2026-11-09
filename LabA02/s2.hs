--s2 vector dot product
vecdot :: Num a => [a] -> [a] -> a
vecdot ls1 ls2 = sum $ zipWith (*) ls1 ls2