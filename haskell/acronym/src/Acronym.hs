module Acronym (abbreviate) where
import Data.Char 

abbreviate :: String -> String
abbreviate xs = 
    [toUpper (head x) | x <- words xs]
