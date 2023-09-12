module HsFunctions.ForFunctions (forFunctions) where
import HsFunctions.Examples.Hamming (isHamming)
import HsFunctions.Examples.Prime (isPrime)
forFunctions :: IO ()
forFunctions = do
    mapM_ putStrLn [
        show (isHamming 216000),
        show (isPrime 216000)
        ]