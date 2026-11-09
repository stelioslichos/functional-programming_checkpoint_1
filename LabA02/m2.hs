-- m2 get the columns of a matrix

m :: Num  a => [[a]]
m = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]

-- task 1
firstColumn :: Num a => [[a]] -> [a]
firstColumn []       = []
firstColumn [[]]     = []
firstColumn ([]: _)  = []
firstColumn ls       = map head ls

-- task 2
restColumns :: Num a => [[a]] -> [[a]]
restColumns []       = []
restColumns [[]]     = []
restColumns ([]: _)  = []
restColumns ls       = map tail ls