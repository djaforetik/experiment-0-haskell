module HsClasses.ForClasses (forClasses) where
import HsClasses.Examples.Person (Person, newPerson, getPersonName, setPersonName, getPersonAge, setPersonAge)
forClasses :: IO ()
forClasses = do
    let nanami = setPersonName "Hiromachi Nanami" $ setPersonAge (Just 17) newPerson
    let tsukushi = setPersonName "Futaba Tsukushi" $ setPersonAge (Just 17) newPerson
    mapM_ putStrLn [
        getPersonName nanami ++ " (" ++ show (getPersonAge nanami) ++ ")",
        getPersonName tsukushi ++ " (" ++ show (getPersonAge tsukushi) ++ ")"
        ]