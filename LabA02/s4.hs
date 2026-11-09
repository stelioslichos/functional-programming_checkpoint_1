--s4 list slicing
slice :: Int -> Int -> [a] -> [a]
slice x y ls = drop x $ take y ls