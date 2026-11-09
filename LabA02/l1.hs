import Data.Char
--l1 credit card number checking

checkCCNumber :: String -> Bool
checkCCNumber str = (sumOfNumbers . doubleEverySecond . convertString) str `mod` 10 == 0

convertString :: String -> [Int]
convertString str = map (\x -> x - 48) [ ord x | x <- str]

-- TCO
doubleEverySecond :: [Int] -> [Int]
doubleEverySecond ls = go (reverse ls) []
         where
            go :: [Int] -> [Int] -> [Int]
            go [] acc       = acc
            go [x] acc      = (x:acc)
            go (x:y:ys) acc = go (ys) (2*y:x:acc)

-- O(n^2), bad solution
-- doubleEverySecond :: [Int] -> [Int]
-- doubleEverySecond []     = []
-- doubleEverySecond [x]    = [x]
-- doubleEverySecond [x,y]  = [2*x,y]
-- doubleEverySecond ls@(x:xs)
--                          | length ls `mod` 2 == 0 = 2*x : doubleEverySecond xs
--                          | otherwise = x : doubleEverySecond xs

sumOfNumbers :: [Int] -> Int
sumOfNumbers ls = sum $ map splitAndSum ls
        where
            splitAndSum x = x `mod` 10 + x `div` 10