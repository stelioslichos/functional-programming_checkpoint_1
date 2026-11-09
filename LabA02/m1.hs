import Data.Char (isUpper)

-- m1 extract uppercase characters in a string using two methods

-- method 1.1: filter
extract_upper :: String -> String
extract_upper str = filter (\x -> x `elem` ['A'..'Z']) str

-- method 1.2: filter, isUpper
-- extract_upper :: String -> String
-- extract_upper str = filter isUpper str


-- method 2.1: list comprehension
-- extract_upper :: String -> String
-- extract_upper str = [ x | x <- str, x `elem` ['A'..'Z'] ]

-- method 2.2: list comprehension, isUpper
-- extract_upper :: String -> String
-- extract_upper str = [ x | x <- str, isUpper x ]