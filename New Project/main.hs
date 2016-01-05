main = putStrLn $ makeStringHorizontalRep myString


myString :: String
myString = "It's 2016; Happy New Year!"


makeStringHorizontal :: String -> String
makeStringHorizontal [] = []
makeStringHorizontal (a:as) = [a] ++ ['\n'] ++ makeStringHorizontal (as)

makeStringHorizontalRep :: String -> String
makeStringHorizontalRep (a:as)
    | as == [] = []
    | a == ' ' = drop 0 [a] ++ ['\n'] ++ makeStringHorizontalRep (as)
    | otherwise = makeStringHorizontalRep (as)
    