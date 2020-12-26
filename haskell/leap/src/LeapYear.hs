module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear x
    | x `mod` 4 /= 0        = False
    -- Divisible by 4.
    | x `mod` 100 /= 0      = True
    -- Divisible by 100.
    | x `mod` 400 == 0      = True
    -- Divisible by 100, but not by 400.
    | otherwise             = False
