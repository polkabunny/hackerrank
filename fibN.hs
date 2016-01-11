--Contributed by Ron Watkins
module Main where

fib :: Int -> Int
fib n
    | n == 0  = 0
    | n == 1  = 0
    | n == 2  = 1
    | n > 1   = fib (n-1) + fib (n-2) -- Enter your code here to complete this function


-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
    input <- getLine
    print . fib . (read :: String -> Int) $ input
