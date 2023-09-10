module HsFunctions.Examples.Prime (isPrime) where

isPrime :: Int -> Bool
isPrime number
    | number < 2 = False
    | otherwise = all (\i -> number `mod` i /= 0) [2..isqrt number]
    where
        isqrt = ceiling . sqrt . fromIntegral
