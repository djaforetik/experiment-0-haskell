module Main where
import HsFunctions.ForFunctions (forFunctions)
import HsClasses.ForClasses (forClasses)
main :: IO ()
main = do
    forFunctions
    forClasses