module HsFunctions.Examples.Hamming (isHamming) where

isHamming :: Int -> Bool
isHamming number
    | number == 0 = False
    | even number = isHamming (number `div` 2)
    | number `mod` 3 == 0 = isHamming (number `div` 3)
    | number `mod` 5 == 0 = isHamming (number `div` 5)
    | otherwise = abs number == 1
