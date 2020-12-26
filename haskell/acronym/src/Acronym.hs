module Acronym (abbreviate) where
import Data.Char 

abbreviate :: String -> String
abbreviate xs = 
    concat
    [if (filter isUpper k == k )
        then (take 1 k) 
        else (filter isUpper (toUpper (head k) : tail k)) |
    k <- (words (map (\c -> if (isAlpha c || c == '\'') then c else ' ') xs))]
