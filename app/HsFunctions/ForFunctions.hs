module HsFunctions.ForFunctions where

import HsFunctions.Examples.Hamming (isHamming)
import HsFunctions.Examples.Prime (isPrime)
main :: IO ()
main = do
    mapM_ putStrLn [
        show (isHamming 216000),
        show (isPrime 216000)
        ]
