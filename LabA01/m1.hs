-- m1 filter (keep) all the odd numbers in a list

-- a
isOdd :: Integral a => a -> Bool
isOdd x
    | x `mod` 2 /= 0 = True
    | otherwise = False

-- c
filter_odd :: Integral a => [a] -> [a]
filter_odd ls = filter isOdd ls

-- d
filter_odd_lambda :: Integral a => [a] -> [a]
filter_odd_lambda ls = filter (\x -> x `mod` 2 /= 0) ls

-- tests
main :: IO ()
main = do

    -- b
    putStr "isOdd 2 : "
    print (isOdd 2)

    -- c
    putStrLn "filter_odd [1..10]"
    print (filter_odd [1..10])

    -- d
    putStrLn "filter odd numbers in [1..10] using lambda function"
    print (filter_odd_lambda [1..10])