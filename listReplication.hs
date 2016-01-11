f :: Int -> [Int] -> [Int]
f _ [] = []
f 1 arr = arr
f n (x:xs) = (replicate n x) ++ f n xs -- Complete this function

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words
