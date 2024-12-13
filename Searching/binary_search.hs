binary :: Int -> [Int] -> IO()
binary _ [] = print "Not Found"
binary item array
    | item == midVal = print item
    | item < midVal = binary item left
    | item > midVal = binary item right
  where
    midIdx = length array `div` 2
    midVal = array !! midIdx
    left = take midIdx array
    right = drop (midIdx + 1) array

main :: IO()
main = do
    binary 4 [1..10]