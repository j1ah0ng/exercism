module CryptoSquare (encode) where
import Data.Char (isAlpha, toLower)    

encode :: String -> String
encode xs = do
    let xs = [toLower c | c <- filter isAlpha xs]
    -- TODO finish
    xs
