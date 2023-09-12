module HsClasses.Examples.Person (Person, newPerson, getPersonName, setPersonName, getPersonAge, setPersonAge) where
data Person = Person {
    name :: String,
    age :: Maybe Integer
    }
newPerson :: Person
newPerson = Person {
    name = "",
    age  = Nothing
    }
getPersonName :: Person -> String
getPersonName = name
setPersonName :: String -> Person -> Person
setPersonName value person = person { name = value }
getPersonAge :: Person -> Maybe Integer
getPersonAge = age
setPersonAge :: Maybe Integer -> Person -> Person
setPersonAge value person = person { age = value }