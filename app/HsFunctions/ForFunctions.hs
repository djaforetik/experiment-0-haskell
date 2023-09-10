module VscodeProject1.HsFunctions where
import VscodeProject1.HsFunctions.Examples.Hamming (isHamming)
import VscodeProject1.HsFunctions.Examples.Prime (isPrime)
main :: IO ()
main = do
    mapM_ putStrLn [
        show (isHamming 216000),
        show (isPrime 216000)
        ]