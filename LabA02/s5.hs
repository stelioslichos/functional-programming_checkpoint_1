--s5 check a list of strings if they are palindromes
checkPalindrome :: [String] -> [Bool]
checkPalindrome ls = map isPalindrome ls
        where
            isPalindrome :: String -> Bool
            isPalindrome x = x == reverse x

--lamda function solution
-- checkPalindrome :: [String] -> [Bool]
-- checkPalindrome ls = map (\x -> x == reverse x) ls