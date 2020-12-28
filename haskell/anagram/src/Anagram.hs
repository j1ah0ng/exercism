module Anagram (anagramsFor) where
import Data.List 
import Data.Char

check_set_equality :: Eq a => [a] -> [a] -> Bool
check_set_equality x y = x \\ y == y \\ x

to_lower :: String -> String
to_lower s = map (\c -> toLower c) s

anagramsFor :: String -> [String] -> [String]
anagramsFor xs xss = do 
    let c_xs = to_lower xs
    let c_xss = filter (\s -> to_lower s /= c_xs) xss
    filter (\s -> check_set_equality c_xs (to_lower s)) c_xss
