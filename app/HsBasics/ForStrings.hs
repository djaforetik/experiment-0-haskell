module HsBasics.ForStrings where

import Data.Char (toLower, toUpper)
import Data.List (findIndex, intercalate, isInfixOf, tails)
import Data.Text.Internal.Search
import qualified Data.Text as Text
main :: IO ()
main = do
    let dt = "Yasuraoka Hanabi"
    let dtEli = dt !! 0
    let dtElf = last dt
    let dtIni = indices (Text.toLower (Text.pack "Na")) (Text.toLower (Text.pack dt)) !! 0
    let dtInf = last (indices (Text.toLower (Text.pack "Na")) (Text.toLower (Text.pack dt)))
    let dtLen = length dt
    let dtCon = dt ++ " is best girl!"
    let dtSub = take 4 (drop 10 dt)
    let dtCal = map toLower dt
    let dtCau = map toUpper dt
    let dtRep = intercalate "-" (words dt)
    let dtSpl = words dt
    mapM_ putStrLn [
        show dtEli, show dtElf, show dtIni, show dtInf, show dtLen,
        show dtCon, show dtSub, show dtCal, show dtCau, show dtRep,
        show dtSpl
        ]
