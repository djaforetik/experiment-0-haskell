module HsBasics.ForLoops where

main :: IO ()
main = do
    mapM_ (\i -> putStr $ show i ++ (if i < 14 then " " else "\n")) [0,2..14]
    let dtRan = [0, 2, 4, 6, 8, 10, 12, 14]
    mapM_ (\n -> putStr $ show n ++ (if n < 14 then " " else "\n")) dtRan
    itLow 0 2 14
itLow :: Int -> Int -> Int -> IO ()
itLow start step end
    | start <= end = do
        putStr $ show start ++ (if start < end then " " else "\n")
        itLow (start + step) step end
    | otherwise = return ()
