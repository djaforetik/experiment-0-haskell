import Data.List
import Data.Maybe
main :: IO ()
main = do
    let dt = [50, 40, 30, 20, 10, 0]
    let dtEli = dt !! 0
    let dtElf = last dt
    let dtIni = fromMaybe (-1) (elemIndex 30 dt)
    let dtInf = maybe (-1) (\i -> length dt - i - 1) (elemIndex 30 (reverse dt))
    let dtLen = length dt
    let dtMin = minimum dt
    let dtMax = maximum dt
    let dtSum = sum dt
    let dtAve = fromIntegral (sum dt) / fromIntegral (length dt)
    let dtSub = take 4 (drop 1 dt)
    let dtFil = filter (\n -> n `mod` 4 == 0) dt
    let dtMap = map (\n -> n * n) dt
    -- UNKNOWN
    let dtRev = reverse dt
    let dtAsc = sort dt
    let dtDsc = sortBy (flip compare) dt
    mapM_ putStrLn [
        show dtEli, show dtElf, show dtIni, show dtInf, show dtLen, show dtMin, show dtMax, show dtSum, show dtAve,
        show dtSub, show dtFil, show dtMap, show "...", show dtRev, show dtAsc, show dtDsc
        ]