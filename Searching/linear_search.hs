linear :: Int -> [Int] -> IO()
linear _ [] = return()
linear item (x:xs) = do
    if ( item == x ) then print x else return()
    linear item xs

-- Driver Code
main :: IO()
main = do
    linear 4 [1..10]