import Text.Printf
main :: IO ()
main = do
    let dt :: Int = 4
    let dtPo2 :: Double = 2 ** fromIntegral dt
    let dtPoe :: Double = exp (fromIntegral dt)
    let dtRo2 :: Double = sqrt (fromIntegral dt)
    let dtRoe :: Double = fromIntegral dt ** (1 / exp 1)
    let dtLo2 :: Double = logBase 2 (fromIntegral dt)
    let dtLoe :: Double = log (fromIntegral dt)
    let dtStr = show dt
    let dtPad :: String = printf "%06d" dt
    mapM_ putStrLn [
        show dtPo2, show dtPoe, show dtRo2, show dtRoe, show dtLo2, show dtLoe,
        show dtStr, show dtPad
        ]