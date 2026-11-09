--m2 free-fall distance sequence calculator

-- a
freeFallDist :: Float -> Float
freeFallDist t = 0.5 * g * t * t
        where g = 9.8

-- b
freeFallDistSeq :: [Float] -> [Float]
freeFallDistSeq ls = map freeFallDist ls

--lambda solution
-- freeFallDistSeq :: [Float] -> [Float]
-- freeFallDistSeq ls = map (\t -> 0.5 * g * t * t) ls
--         where g = 9.8

-- test
main :: IO ()
main = do
    print $ freeFallDistSeq [1..10]