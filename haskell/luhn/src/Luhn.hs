module Luhn (isValid) where
import Data.Char

chunks :: Int -> [a] -> [[a]]
chunks _ [] = []
chunks n l 
    | n > 0 = (take n l) : (chunks n (drop n l))
    | otherwise = error "Cannot chunk into negative sizes"

cton :: Char -> Int
cton a = (ord a) - (ord '0')

double :: Int -> Int
double x
    | 2 * x <= 9 = 2 * x
    | otherwise  = 2 * x - 9

reduce :: [Char] -> Int
reduce [] = 0
reduce [x] = cton x
reduce (x:(y:_)) = cton x + double (cton y)

clean_list :: String -> String
clean_list xs = reverse (filter isDigit xs)

isValid :: String -> Bool
isValid [_] = False
isValid n 
    | tail (clean_list n) == [] = False
    | otherwise =
    (foldr (\a b -> b + reduce a) 0 (chunks 2 (clean_list n))) `mod` 10 == 0
