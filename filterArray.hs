f :: Int -> [Int] -> [Int]
f n arr = filterArray n arr []
    where filterArray n arr list
            | null arr = list
            | n > head arr = filterArray n (tail arr) (list ++ [head arr])
            | otherwise = filterArray n (tail arr) list

-- The Input/Output section. You do not need to change or modify this part
main = do 
    n <- readLn :: IO Int 
    inputdata <- getContents 
    let 
        numbers = map read (lines inputdata) :: [Int] 
    putStrLn . unlines $ (map show . f n) numbers
