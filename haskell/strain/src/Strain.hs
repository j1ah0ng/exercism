module Strain (keep, discard) where

discard :: (a -> Bool) -> [a] -> [a]
discard p xs = filter (\c -> if p c then False else True) xs

keep :: (a -> Bool) -> [a] -> [a]
keep p xs = filter p xs
