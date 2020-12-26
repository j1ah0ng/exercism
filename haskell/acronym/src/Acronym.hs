module Acronym (abbreviate) where
import Data.Char 

gen_acronym :: String -> String
gen_acronym k
    | filter isUpper k == k = take 1 k
    | otherwise             = filter isUpper (toUpper (head k) : tail k)

drop_char :: Char -> Char
drop_char c
    | isAlpha c || c == '\''    = c
    | otherwise                 = ' '

tokenise :: String -> [[Char]]
tokenise s = words (map drop_char s)

abbreviate :: String -> String
abbreviate xs = 
    concat [gen_acronym k | k <- tokenise xs]
